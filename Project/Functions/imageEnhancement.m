function [ IN ] = imageEnhancement( image )

% Green CH
green = image(:,:,2); 
a = zeros(size(image, 1), size(image, 2));
greenChannelImage = cat(3, a, green, a);
IG=rgb2gray(greenChannelImage);
% CLAHE
IN=adapthisteq(IG,'NumTiles',[8,8],'NBins',128);

end

