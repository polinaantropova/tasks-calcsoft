set(gca, 'xlim',[-20 20],'ylim', [-20 20]);
axis equal
T = 0:0.1:(3*pi+0.1);
a = 5;
b = 3;
r=2.4;
hold on;

[xe,ye] = ellips(T,a,b);
plot(xe,ye,'LineWidth',1.5,'Color','b');
[EEX, EEY] = evolute_ellips(T,a,b);

[xc,yc] = circuit(T,r);
plot(xc,yc,'LineWidth',1.5,'Color','r');
[ECX, ECY] = evolvent_circuit(T,r);

for i = 2:length(T)
  plot([EEX(i-1),EEX(i)],[EEY(i-1),EEY(i)],'LineWidth',1.5,'Color','b')
  plot([ECX(i-1),ECX(i)],[ECY(i-1),ECY(i)],'LineWidth',1.5,'Color','r')
  pause(0.05);
endfor
