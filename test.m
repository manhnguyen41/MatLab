h = input("");
f = @(x, y) y + h / 2 * (-(x^1.5)-y^1.5+2);
t = 0:h:1;

y = zeros(size(t)); y(1) = 10;
x = zeros(size(t));

fprintf("%.4f\n", y(1))

err = 1e-6;

for i = 2:length(t)
  while (abs(f(y(i), y(i - 1))-y(i)) > err)
    y(i) = f(y(i), y(i-1));
  end
  fprintf("%.4f\n", y(i))
end

