x = [-10:0.1:10];
y = 0.*x;
plot(x,y,"LineWidth", 1);

hold
x = [-10:0.1:10];
y = (1 + sin(x) - cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2).^2 + 1;
plot(x,y,"LineWidth", 1, "color", "k");

y = @(x) (1 + sin(x) - cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2).^2 + 1;
x_prev = fzero(y, -4.9);
ans = [x_prev];

tic
for k = -5:0.1:5
  x_now = fzero(y,k);
  found = false;
  for i = 1:length(ans)
    if abs(abs(x_now) - abs(ans(i))) <= 0.01 || x_now <= -5 || x_now >= 5
      found = true;
      break;
    end
  end
  if (found ~= true)
    ans = [ans x_now];
  end
end
toc
plot(ans,y(ans),'r*');
ans
grid on

##
##Elapsed time is 0.257975 seconds.
##ans =
##
## -0.841592  -2.081720  -1.690029   0.090170   4.201465   4.593157
