function [postImage] = binarization(map,image)

[m,n]=size(map);

for i=1:m
    for j=1:n
        if map(i,j)==0
            for k=(i-1)*16+1:i*16
                for l=(j-1)*16+1:j*16
                    image(k,l)=0;
                end
            end
            
        end
    end
end
postImage=image;




end

