clear, clc;
addpath(genpath('Functions'));
% DataSet
imds=imageDatastore('C:\Users\Ege\Desktop\Self BVS 3\Training Set','IncludeSubfolders',true,'LabelSource','foldernames');
imdsTest=imageDatastore('C:\Users\Ege\Desktop\Self BVS 3\Test Set','IncludeSubfolders',true,'LabelSource','foldernames');
% Size Normalization
inputSize = size(readimage(imds,1));
imds.ReadFcn = @(loc)imresize(imread(loc),inputSize);
imdsTest.ReadFcn = @(loc)imresize(imread(loc),inputSize);
% Network Training
net=networkTraining(imds,imdsTest);
% Network Saved
save net;