r = 0.25;
N=5;
p = caterpillar(0,r,N);

set(gca, 'xlim',[-1 10],'ylim', [-2.0 2.0]);
axis equal
T = 0:0.01:2*pi;
x_0 = 0
x_1 = x_0;
y_1 = sin(x_1);
x = r .* cos(T) + x_1;
y = r .* sin(T) + y_1;
while(x_0 <= 20)
  for i = 1:N
    set(p(i),'XData', x, 'YData', y);
    x_1 = x_1 + r*pi/2;
    y_1 = sin(x_1);
    x = r .* cos(T) + x_1;
    y = r .* sin(T) + y_1;
  endfor
  pause(0.05)
  drawnow
  x_0 = x_0 + 0.1;
  x_1 = x_0;
endwhile
