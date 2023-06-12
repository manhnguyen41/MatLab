h = input("");
f = @(y, z, t) -3*sin(t)*z+t*y-cos(t);
t = 0:h:1;
y = zeros(size(t)); y(1) = 2;
z = zeros(size(t)); z(1) = -1;
fprintf("%.4f\n", y(1))

for i = 2:length(t)
  k1 = h * z(i-1);
  l1 = h * f(y(i-1), z(i-1), t(i-1));
  k2 = h * (z(i-1) + l1);
  l2 = h * f(y(i-1)+k1, z(i-1)+l1, t(i));
  y(i) = y(i-1) + (k1+k2)/2;
  z(i) = z(i-1) + (l1+l2)/2;
  fprintf("%.4f\n", y(i))
endfor
