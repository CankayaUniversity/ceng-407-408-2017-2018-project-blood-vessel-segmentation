function [ grayScaleImage,greenChannelImage ] = generateGreenGrayImages( image )
%Green Channel Image
%red = image(:,:,1);
green = image(:,:,2); 
%blue = image(:,:,3);
a = zeros(size(image, 1), size(image, 2));
greenChannelImage = cat(3, a, green, a);
%Gray Scale Image
grayScaleImage=rgb2gray(image);
greenChannelImage=rgb2gray(greenChannelImage);
end

