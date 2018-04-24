clear, clc; 
addpath(genpath('Functions'));
image=imageEnhancement(imread('image.tif'));

map=vesselMap(image,16);
pi=binarization(map,image);
imshowpair(image,pi,'montage');

disp('End');

