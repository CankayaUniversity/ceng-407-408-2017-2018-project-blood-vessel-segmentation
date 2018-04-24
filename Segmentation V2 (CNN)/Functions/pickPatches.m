function [ ] = pickPatches( nump,numn,im )
fileID = fopen('num.txt','r');
fileID2 = fopen('numn.txt','r');
formatSpec = '%d';
zfinal = fscanf(fileID,formatSpec);
zfinal2 = fscanf(fileID2,formatSpec);
fclose(fileID);
z=zfinal;
z2=zfinal2;
%Positive
figure,imshow(im),title('Select Positives.');
i=1+z;
while i <= nump+z
[x, y]=ginput(1);
%row1 = floor(y - 13);
row1 = y - 13;
col1 = x - 13;
% Extract patch
patch = imcrop(im, [col1, row1, 15, 15]);
patch2=flip(patch,2);
patch3=imrotate(patch,90);
% insert to file
baseFileName = sprintf('%dp.tif', i);
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Training Set\Positive', baseFileName);
imwrite(patch,fullFileName);
baseFileName = sprintf('%dpm.tif', i);
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Training Set\Positive', baseFileName);
imwrite(patch2,fullFileName);
baseFileName = sprintf('%dpr.tif', i);
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Training Set\Positive', baseFileName);
imwrite(patch3,fullFileName);
zfinal=zfinal+1;
i=i+1;
end
close;
zfinal2=z2;
%Negative
figure,imshow(im),title('Select Negatives.');
i=1+z2;
while i <= numn+z2
[x, y]=ginput(1);
row1 = y - 13;
col1 = x - 13;
% Extract patch 
patch = imcrop(im, [col1, row1, 15, 15]);
patch2=flip(patch,2);
patch3=imrotate(patch,90);
% insert to file
baseFileName = sprintf('%dn.tif', i);
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Training Set\Negative', baseFileName);
imwrite(patch,fullFileName);
baseFileName = sprintf('%dnm.tif', i);
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Training Set\Negative', baseFileName);
imwrite(patch2,fullFileName);
baseFileName = sprintf('%dnr.tif', i);
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Training Set\Negative', baseFileName);
imwrite(patch3,fullFileName);
zfinal2=zfinal2+1;
i=i+1;
end
close;
fileID = fopen('num.txt','w');
fprintf(fileID,'%d',zfinal);
fclose(fileID);
fileID2 = fopen('numn.txt','w');
fprintf(fileID2,'%d',zfinal2);
fclose(fileID2);


end

