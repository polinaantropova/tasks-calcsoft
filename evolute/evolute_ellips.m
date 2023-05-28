function [x, y] = evolute_ellips (t, a, b)
  x = (a.^2 - b.^2)*(cos(t)).^3/a;
  y = (b.^2 - a.^2)*(sin(t)).^3/a;
endfunction
