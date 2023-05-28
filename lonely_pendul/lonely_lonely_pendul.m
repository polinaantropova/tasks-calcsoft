l=6;%длина маятника
r = 1;
set(gca, 'xlim',[-(l+4) (l+4)],'ylim', [-(l+4) (l+4)]);
hold on;
plot([-0.8 0.8],[0 0],'linewidth',8,'color','k'); %крепление
line_pen = plot([0 0],[0 0],'linewidth',1.5,'color','k','r-o'); %стержень
theta_0=[5;3];
time_span=0:0.4:35;
b=0.05;
g=9.8;
m=0.4;

[t,result]=ode45(@(t,theta) eq_balance(t,theta,l,m,b,g),time_span,theta_0);
ans=result(:,1)

T = 0:0.01:2*pi;
for i=1:length(ans)
    phi=ans(i);
    x1=l*sin(phi);
    y1=-l*cos(phi);
    x = [0 x1];
    y = [0 y1];
    set(line_pen, 'XData', x, 'YData', y);
    grid on;
    pause(0.08)
endfor
