  h = input("");
  m1 = input("");
  m2 = input("");
  k = input("");
  f = @(x, z, t) [k*(x(2)-x(1))/m1 k*(x(1)-x(2))/m2];
  t = 0:h:1;
  x = zeros(length(t), 2); x(1, :) = [0 0];
  z = zeros(length(t), 2); z(1, :) = [1 2];
  fprintf("%.4f\n", x(1, 1))

for i = 2:length(t)
  k1 = h*z(i-1, :);
  l1 = h*f(x(i-1, :), z(i-1, :), t(i-1));
  k2 = h*(z(i-1, :) + l1);
  l2 = h*f(x(i-1, :)+k1, z(i-1, :)+l1, t(i));
  x(i, :) = x(i-1, :) + (k1+k2)./2;
  z(i, :) = z(i-1, :) + (l1+l2)./2;
  fprintf("%.4f\n", x(i, 1))
endfor


