h = input("");
f = @(y, t) -y^1.5 + 1;
t = 0:h:1;
y = zeros(size(t)); y(1) = 10;
fprintf("%.4f\n", y(1))

for i = 2:length(t)
  l1 = h * f(y(i-1), t(i-1));
  l2 = h * f(y(i-1)+l1, t(i));
  y(i) = y(i-1) + (l1+l2)/2;
  fprintf("%.4f\n", y(i))
endfor
