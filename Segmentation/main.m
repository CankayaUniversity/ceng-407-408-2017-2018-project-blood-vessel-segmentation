% Read Image
image=imread('image.tif');
% Generate Gray Scale & Green Channel Images
[grayScaleImageV1,greenChannelImageV1]=generateGreenGrayImages(image);


% CLAHE & Transform Function (each region [8x8] pixels with 128 bins for the histogram)
% need better contrast enhanc. algorithms
greenChannelImageV1=greenChannelImageV1-mean2(greenChannelImageV1);
grayScaleImageV1=imadjust(grayScaleImageV1);
greenChannelImageV1=imadjust(greenChannelImageV1);
grayScaleImageV2=adapthisteq(grayScaleImageV1,'NumTiles',[8,8],'NBins',128);
greenChannelImageV2=adapthisteq(greenChannelImageV1,'NumTiles',[8,8],'NBins',128);


% Background Exclusion ([9x9] average filtered image - Original Image)
filter=fspecial('average',[9 9]); % -Change vals if needed (18 and 25 are good).
xGrayFilter = imfilter(grayScaleImageV2,filter);
xGreenFilter = imfilter(greenChannelImageV2,filter);
grayScaleImageV3=imsubtract(xGrayFilter,grayScaleImageV2);
greenChannelImageV3=imsubtract(xGreenFilter,greenChannelImageV2);

% Thresholding
xGrayLevel=isodata(grayScaleImageV3);
xGreenLevel=isodata(greenChannelImageV3);
%bwareaopen val 35 in document
greenChannelImageV3=im2bw(greenChannelImageV3,xGreenLevel);
greenChannelImageV3=bwareaopen(greenChannelImageV3,35);
figure, imshow(greenChannelImageV3);























