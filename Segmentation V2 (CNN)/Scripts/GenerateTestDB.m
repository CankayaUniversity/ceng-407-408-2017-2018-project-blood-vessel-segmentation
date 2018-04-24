clear, clc;
addpath(genpath('Functions'));
for c=1:20
  imageName=sprintf('%d.tif', c);
  fullFileName = fullfile('DBtest', imageName);
  image=imread(fullFileName);
  IN=imageEnhancement(image);
  % Select Positives & Negatives
  pickTestPatches(5,5,IN);
end