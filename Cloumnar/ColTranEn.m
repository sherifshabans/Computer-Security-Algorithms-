function ct = ColTransEn(pt,k)
pt(pt==' ')=[];
pt=upper(pt);
c=length(k);
L=length(pt);
r=ceil(L/c);
nX=(c*r)-L;
for i=1:nX
    pt=[pt 'X'];
end
w=0;
for i=1:r
    for j=1:c
        w=w+1;
        b(i,j)=pt(w);
    end
end
b=b(:,k);
ct=b(:)';
end