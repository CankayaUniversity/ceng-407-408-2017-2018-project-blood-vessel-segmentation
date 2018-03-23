function [ result ] = contrastStretch( image )
% Contrast Stretching by Transform function
% Change float values if necessary.
% CURRENTLY NOT IN USE !
[m,n]=size(image); 
for i=1:1:m 
    for j=1:1:n 
        if(image(i,j)<50) 
            result(i,j)=image(i,j)*0.6;
        elseif (image(i,j)>200) 
            result(i,j)=image(i,j)*0.6; 
        else
            result(i,j)=image(i,j)*2;
        end
    end
end

end

