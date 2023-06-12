x = -2:.1:2;
y = -1:.1:1;
[X, Y] = meshgrid(x, y);
Z = (X.^2).*Y - 2*Y;
mesh(X, Y, Z);
