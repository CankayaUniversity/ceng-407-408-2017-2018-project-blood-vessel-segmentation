clear, clc;
addpath(genpath('Functions'));
for c=1:20
  imageName=sprintf('%d.tif', c);
  fullFileName = fullfile('DB', imageName);
  image=imread(fullFileName);
  IN=imageEnhancement(image);
  % Select Positives & Negatives
  pickPatches(10,35,IN);
end