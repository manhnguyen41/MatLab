function out = trapezoid(f, a, b, n)
  t = linspace(a, b, n+1);
  out = sum(2*f(t)) - f(a) - f(b);
  out = out / 2 * ((b-a)/n);
end
