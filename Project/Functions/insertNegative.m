function [] = insertNegative(image,id)

% Insert patches to the file.
baseFileName = sprintf('%dn.tif', id);
fullFileName = fullfile('Network Data\Training Set\Negative', baseFileName);
imwrite(image,fullFileName);

end

