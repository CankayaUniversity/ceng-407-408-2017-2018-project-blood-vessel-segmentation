% Segmentation function.
function [ves] = segmentation(path)
% Read image.
im=imread(path);
% Image enhancement & gray scale of a green channel image.
image = imageEnhancement(im);
% Load network.
load net;
[m,n] = size(image);
ves=uint8(zeros(size(image)));
% Classification.
for i = 1:1:m-(9-1)
    for j = 1:1:n-(9-1)
        patch=image(i:i+(9-1),j:j+(9-1));
        if isBlackSpot(patch)==0
        x=net.classify(patch);
            if x=='Positive' % if positive, binarize for the center pixel.
          
                ves((i+(i+(9-1)))/2,(j+(j+(9-1)))/2)=255;
                
            end
        end
    end
end

% Final image 'ves' constructed.
end

