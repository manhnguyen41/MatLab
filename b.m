function [v, sigma] = piecelin(x,y,u)
  d=diff(y)./diff(x);
  n=length(x);
  k=ones(size(u));
  for j = 2:n-1
    k(u>=x(j))=j;
  endfor
  s=u-x(k);
  v=y(k)+s.*d(k);
 end

