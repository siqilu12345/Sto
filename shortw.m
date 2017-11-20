function sw=shortw(w)
l=length(w);
sw=zeros(l./2,1);
for i=1:l./2
    sw(i)=w(2*i-1)+w(2*i);
end