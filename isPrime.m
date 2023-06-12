function res = isPrime(k)
  res = true;
  if k < 2
    res = false;
  endif

  for i = 2:sqrt(k)
    if mod(k, i) == 0
      res = false;
      break;
    endif
  endfor

end

