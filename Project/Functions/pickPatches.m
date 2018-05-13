function [positiveCounter,negativeCounter] = pickPatches(image,groundTruth,strideP,strideN,patchSize,p,n)

positiveCounter=p;
negativeCounter=n;
[m,n]=size(image);

% Positive
for i = 1:strideP:m-(patchSize-1)
    for j = 1:strideP:n-(patchSize-1)
        patch=image(i:i+(patchSize-1),j:j+(patchSize-1));
        % Check if all black
        if mean2(patch) > 20 
            GTpatch=groundTruth(i:i+(patchSize-1),j:j+(patchSize-1));
            % File insert.
            if patchClasifier(GTpatch)
                insertPositive(patch,positiveCounter),positiveCounter=positiveCounter+1;
            end
        end
    end
end

% Negative
for i = 1:strideN:m-(patchSize-1)
    for j = 1:strideN:n-(patchSize-1)
        patch=image(i:i+(patchSize-1),j:j+(patchSize-1));
        % Check if all black
        if mean2(patch) > 20 
            GTpatch=groundTruth(i:i+(patchSize-1),j:j+(patchSize-1));
            % File insert.
            if patchClasifier(GTpatch)==false
                insertNegative(patch,negativeCounter),negativeCounter=negativeCounter+1;
            end
        end
    end
end

end

