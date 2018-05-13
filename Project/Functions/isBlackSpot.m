function [verdict] = isBlackSpot(patch)

verdict=false;

[m,n]=size(patch);

blackCounter=0;

for i=1:m
    for j=1:n
        if patch(i,j)==0
            blackCounter=blackCounter+1;
        end
    end
end

if blackCounter >=30
    verdict = true;
else
    verdict = false;
end


end

