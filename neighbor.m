function res = neighbor(v)
  n = length(v);
  res = v(1:n-1) - v(2:n);
  res = abs(res);
end
