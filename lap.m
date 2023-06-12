g = @(x) x^2 - 2;

x = 1.5;
err = 1e-6;

while (abs(g(x))-x > err)
  x = g(x);
end

fprintf('%.3f', x)
