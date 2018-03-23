function level=isodata(I)

I = im2uint8(I(:));

[counts,N]=imhist(I);
i=1;
mu=cumsum(counts);
T(i)=(sum(N.*counts))/mu(end);
T(i)=round(T(i));

mu2=cumsum(counts(1:T(i)));
MBT=sum(N(1:T(i)).*counts(1:T(i)))/mu2(end);

mu3=cumsum(counts(T(i):end));
MAT=sum(N(T(i):end).*counts(T(i):end))/mu3(end);
i=i+1;

T(i)=round((MAT+MBT)/2);

while abs(T(i)-T(i-1))>=1
    mu2=cumsum(counts(1:T(i)));
    MBT=sum(N(1:T(i)).*counts(1:T(i)))/mu2(end);
    
    mu3=cumsum(counts(T(i):end));
    MAT=sum(N(T(i):end).*counts(T(i):end))/mu3(end);
    
    i=i+1;
    T(i)=round((MAT+MBT)/2); 
    Threshold=T(i);
end

level = (Threshold - 1) / (N(end) - 1);


