err = 1e-6;
x0 = 4;
x1 = 3;

f = @(x) x^2 - 4*sin(x);

while (abs(f(x1)) > err)
  sk = (f(x1) - f(x0)) / (x1 - x0);
  x2 = x1;
  x2 = x2 - f(x2)/sk;
  x0 = x1;
  x1 = x2;
end

fprintf('Nghiem la %.10f\n', x1)
