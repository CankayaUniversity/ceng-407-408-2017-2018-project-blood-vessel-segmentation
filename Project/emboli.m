function [im] = emboli(ves,path)
rgbImage=imread(path);
grayImage = rgb2gray(rgbImage);
thresholdValue = 175;
match = grayImage > thresholdValue;

im=ves;
im=imbinarize(im);
filled=imfill(im,'holes');
holes = filled & ~im;
bigholes = bwareaopen(holes, 20);
smallholes = holes & ~bigholes;
new = im | smallholes;

[m,n]=size(new);
for i=1:m
    for j=1:n
        if new(i,j)==1 && match(i,j)==1
            im=insertShape(rgbImage,'Circle',[j,i,20],'Color','white','LineWidth',2);
            
        end
    end
end



end

