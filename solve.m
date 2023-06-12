function out = solve(f, x0, x1, EPS)
while (abs(f(x1)) >= EPS)
  sk = (f(x1) - f(x0)) / (x1 - x0);
  x2 = x1;
  x2 = x2 - f(x2)/sk;
  x0 = x1;
  x1 = x2;
end

fprintf('%.3f\n', x1)
end
