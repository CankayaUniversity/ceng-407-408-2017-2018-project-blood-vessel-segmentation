function [pi] = seg(imPath)
addpath(genpath('Functions'));
image=imageEnhancement(imread(imPath));
map=vesselMap(image,16);
pi=binarization(map,image);
end
