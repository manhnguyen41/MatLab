  function out = simpson13(f, a, b, n)
    t = linspace(a, b, n + 1);
    out = f(a) + f(b);
    out = out + 4*sum(f(t(2:2:n))) + 2*sum(f(t(3:2:n-1)));
    out = out * (b-a) / 3 / n;
  end
