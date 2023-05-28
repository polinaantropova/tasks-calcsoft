function p = draw_circle (x_0, y_0, r)

phi = 0: pi/50:2*pi;
x = r * cos(phi) + x_0;
y = r * sin(phi) + y_0;
##p = plot(x, y,'Color','g','LineWidth',5);
p = fill(x, y,'g');

axis equal
endfunction
