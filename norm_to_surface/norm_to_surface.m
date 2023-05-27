x = -pi:0.1:pi;
y = -pi:0.1:pi;
x0 = pi/6;
y0 = pi/6;
z0 = my_surface(x0,y0);

[X,Y] = meshgrid(x,y);
Z = my_surface(X,Y);

surf(X,Y,Z);
hold on
#shading interp; %убирает сетку

epsilon = 0.0001;
dfdx = (my_surface(x0 + epsilon, y0) - my_surface(x0,y0))/epsilon
dfdy = (my_surface(x0, y0 + epsilon) - my_surface(x0,y0))/epsilon

normal_vec = [-dfdx, -dfdy, 1]./sqrt(dfdx^2 + dfdy^2 + 1)
beg = [x0,y0,z0];
plot3([beg(1) normal_vec(1)],[beg(2) normal_vec(2)],[beg(3) normal_vec(3)],'r:^', 'LineWidth',1,'Color','y');
title ({"Norm to paraboloid"});
xlabel("X")
ylabel("Y")
zlabel("Z")

grid on
