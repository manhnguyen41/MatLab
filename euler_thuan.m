h = input("");
f = @(y, z, w, t) -2*sin(t)*w+t*z-y-cos(t);
t = 0:h:1;
y = zeros(size(t)); y(1) = 2;
z = zeros(size(t)); z(1) = -1;
w = zeros(size(t)); w(1) = -1;

fprintf("%.4f\n", y(1))

for i = 2:length(t)
  y(i) = y(i-1)+h*z(i-1);
  z(i) = z(i-1)+h*w(i-1);
  w(i) = w(i-1)+h*f(y(i-1), z(i-1), w(i-1), t(i-1));
  fprintf("%.4f\n", y(i))
endfor
