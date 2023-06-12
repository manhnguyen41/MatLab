  function out = simpson38(f, a, b, n)
    t = linspace(a, b, n + 1);
    out = f(a) + f(b);
    out = out + 3*sum(f(t(2:3:n-1))) + 3*sum(f(t(3:3:n))) + 2*sum(f(t(4:3:n-2)));
    out = out * 3 * (b-a) / 8 / n;
  end
