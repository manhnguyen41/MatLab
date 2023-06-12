function [res, count] = printPrime(n)
  res = [];
  for i = 2:n
    if isPrime(i)
      res = [res i];
    endif
  endfor
  count = length(res)
end
