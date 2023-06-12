tn = input("");
f = @(y, t) 0.0002*t*y-0.05*y;
t = 0:1:tn;
y = zeros(size(t)); y(1) = 20;
fprintf("%.4f\n", y(1))

for i = 2:length(t)
  k1 = h * f(y(i-1), t(i-1));
  k2 = h * f(y(i-1)+k1/2, t(i-1)+h/2);
  k3 = h * f(y(i-1)-k1+2*k2, t(i-1)+h);
  y(i) = y(i-1) + (k1+4*k2+k3)/6;
  fprintf("%.4f\n", y(i))
endfor
