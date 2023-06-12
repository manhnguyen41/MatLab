function out = f(n)
  out = sum([1:n].^(mod(n, 2) + 2));
end
