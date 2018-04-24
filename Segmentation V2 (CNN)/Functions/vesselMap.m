function [map] = vesselMap( image, BlockSize )
load net;
[m,n] = size(image);
k=1;l=1;
map=zeros(uint8(size(image)/16));
for i = 1:BlockSize:m-(BlockSize-1)
    l=1;
    for j = 1:BlockSize:n-(BlockSize-1)
        x=net.classify(image(i:i+(BlockSize-1),j:j+(BlockSize-1)));
       if x=='Positive'
           map(k,l)=1;
       end
       l=l+1;
    end
    k=k+1;
end

end

