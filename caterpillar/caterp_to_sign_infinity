r = 0.5;
N=10;
p = caterpillar(0,r,N);

set(gca, 'xlim',[-20 20],'ylim', [-10 10]);
axis equal
T = 0:0.01:2*pi;
x_0 = 0
x_1 = -7 * cos(x_0);
y_1 = -3 * sin(2 * x_0);
x = r .* cos(T) + x_1;
y = r .* sin(T) + y_1;

while(x_0 <= 50)
  for i = 1:N
    set(p(i),'XData', x, 'YData', y);
    x_0 = x_0 + 0.1;
    x_1 = 7 * cos(x_0);
    y_1 = 3 * sin(2 * x_0);
    x = r .* cos(T) + x_1;
    y = r .* sin(T) + y_1;
  endfor
  pause(0.2)
  drawnow
endwhile
