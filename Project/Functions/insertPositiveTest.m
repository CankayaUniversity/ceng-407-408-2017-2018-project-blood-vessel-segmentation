function [] = insertPositiveTest(image,id)

% Patch variations.
patch = image;
patchMirrored=flip(patch,2);
patchRotated=imrotate(patch,90);

% Insert patches to the file.
baseFileName = sprintf('%dp.tif', id);
fullFileName = fullfile('Network Data\Test Set\Positive', baseFileName);
imwrite(patch,fullFileName);
baseFileName = sprintf('%dpm.tif', id);
fullFileName = fullfile('Network Data\Test Set\Positive', baseFileName);
imwrite(patchMirrored,fullFileName);
baseFileName = sprintf('%dpr.tif', id);
fullFileName = fullfile('Network Data\Test Set\Positive', baseFileName);
imwrite(patchRotated,fullFileName);

end

