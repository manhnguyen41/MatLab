function [cnt, v] = PerfectNum(n)
    a = [6, 28, 496,8128];
   res = sum([1:n/2]);
    v = a([1:4]) < n;
    v = a(v);
    cnt = length(v);
end
