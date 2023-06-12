f = @(x) x^2 - 4*sin(x);
df = @(x) 2*x - 4*cos(x);

err = 1e-6;
x = 3;

while (abs(f(x)) > err)
  x = x - f(x)/df(x);
end

fprintf('Nghiem la %.10f\n', x)
