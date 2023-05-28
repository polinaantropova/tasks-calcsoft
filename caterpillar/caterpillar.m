function snake = caterpillar (x_0, r,N)
figure
hold on
x = x_0;
y = sin(x);
snake = [];
for i = 1:N
  snake(i) = draw_circle(x,y,r);
  x = x + r*pi/2;
  y = sin(x);
endfor
endfunction
