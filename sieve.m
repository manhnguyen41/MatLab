function [res, count] = sieve(n)
  prime = ones(n, 1);
  for i = 2:sqrt(n)
    if prime(i)
      prime(and(mod(1:n, i) == 0, 1:n > i)) = 0;
    endif
  endfor

  res = [];
  for i = 2:n
    if prime(i)
      res = [res i];
    endif
  endfor
  count = length(res);
end
