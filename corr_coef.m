function [r] = corr_coef(x,y)
%assume that signals have same length
n=length(x);
xx=0;
yy=0;
xy=0;
for l=1:n
    xx=xx+x(l)*x(l);
    yy=yy+y(l)*y(l);
    xy=xy+x(l)*y(l);
end
r=xy/(xx*yy)^0.5;
end

