function [verdict] = patchClasifier(gt) % gt = ground truth

% Check if ground truth has center 1.
[m,n]=size(gt);
if gt(ceil(m/2),ceil(n/2))==1 || gt(ceil(m/2),ceil(n/2))==255
    verdict=true;
    return 
end

%NOT IN USE
% Check if ground truth contains no 1.
flag=1;
for i=1:m
    for j=1:n
        if gt(i,j)==1 || gt(i,j)==255
            flag=0;
        end
    end
end
if flag==1
    verdict=false;
    return
end
verdict=false;
% % Then ground truth has some 1's, calculate how much (more than 10 is OK).
% oneCounter=0;
% for i=1:m
%     for j=1:n
%         if gt(i,j)==1 || gt(i,j)==255
%             oneCounter=oneCounter+1;
%         end
%     end
% end
% if oneCounter>=10
%     verdict=true;
%     return
% else
%     verdict=false;
%     return
% end

end

