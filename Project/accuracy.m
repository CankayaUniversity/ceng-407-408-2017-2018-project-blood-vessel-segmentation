function acc = accuracy(ves,path)
gt=imread(path);
gtcounter=0;
cou=0;
[a,e]=size(gt);
% Count ground truth pixels.
for i=1:a
    for j=1:e
        if gt(i,j)==1
            gtcounter=gtcounter+1;
        end
    end
end
% Count matching pixels.
for i=1:a
    for j=1:e
        if gt(i,j)==1 && ves(i,j)==255
            cou=cou+1;
        end
    end
end
% Calculate accuracy.
acc=(cou/gtcounter)*100;
end

