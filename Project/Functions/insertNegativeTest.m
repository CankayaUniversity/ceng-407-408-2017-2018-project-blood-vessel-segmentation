function [] = insertNegativeTest(image,id)

% Insert patches to the file.
baseFileName = sprintf('%dn.tif', id);
fullFileName = fullfile('Network Data\Test Set\Negative', baseFileName);
imwrite(image,fullFileName);

end

