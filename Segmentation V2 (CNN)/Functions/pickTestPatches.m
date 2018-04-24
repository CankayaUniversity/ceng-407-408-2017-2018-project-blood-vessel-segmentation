function [ ] = pickTestPatches( nump,numn,im )
fileID = fopen('num2.txt','r');
formatSpec = '%d';
zfinal = fscanf(fileID,formatSpec);
fclose(fileID);
z=zfinal;
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
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Test Set\Positive', baseFileName);
imwrite(patch,fullFileName);
baseFileName = sprintf('%dpm.tif', i);
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Test Set\Positive', baseFileName);
imwrite(patch2,fullFileName);
baseFileName = sprintf('%dpr.tif', i);
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Test Set\Positive', baseFileName);
imwrite(patch3,fullFileName);
zfinal=zfinal+1;
i=i+1;
end
close;
zfinal=z;
%Negative
figure,imshow(im),title('Select Negatives.');
i=1+z;
while i <= numn+z
[x, y]=ginput(1);
row1 = y - 13;
col1 = x - 13;
% Extract patch 
patch = imcrop(im, [col1, row1, 15, 15]);
patch2=flip(patch,2);
patch3=imrotate(patch,90);
% insert to file
baseFileName = sprintf('%dn.tif', i);
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Test Set\Negative', baseFileName);
imwrite(patch,fullFileName);
baseFileName = sprintf('%dnm.tif', i);
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Test Set\Negative', baseFileName);
imwrite(patch2,fullFileName);
baseFileName = sprintf('%dnr.tif', i);
fullFileName = fullfile('C:\Users\Ege\Desktop\Self BVS 3\Test Set\Negative', baseFileName);
imwrite(patch3,fullFileName);
zfinal=zfinal+1;
i=i+1;
end
close;
fileID = fopen('num2.txt','w');
fprintf(fileID,'%d',zfinal);
fclose(fileID);


end
