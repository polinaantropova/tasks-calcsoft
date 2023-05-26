x = [-10:0.1:10]; %построили функцию
y = (1 + sin(x) - cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2).^2 + 1;
plot(x,y,"LineWidth", 1, "color", "k");
hold

y = @(x) (1 + sin(x) - cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2).^2 + 1;
epsil=0.00001;
answer=[];

tic
for k = -5:0.1:5
  x_prev=k;
  x_now = x_prev-(y(x_prev)./((y(x_prev+epsil)-y(x_prev))./epsil));

  while abs(abs(x_now)-abs(x_prev)) >= epsil
    x_prev=x_now;
    x_now = x_prev-(y(x_prev)./((y(x_prev+epsil)-y(x_prev))./epsil));
  endwhile
  found=false;
  if length(answer)==0
    if x_now <= -5 || x_now >= 5
      found = true;
    end
  endif

  for i = 1:length(answer)
    if abs(abs(x_now) - abs(answer(i))) <= 0.01 || x_now <= -5 || x_now >= 5
      found = true;
      break;
    end
  end
  if (found ~= true)
    answer = [answer x_now];
  end
end
toc
plot(answer,y(answer),'r*');
answer
grid on

##
##Elapsed time is 0.0637581 seconds.
##answer =
##
##  -2.081720  -0.841592  -1.690029   4.201465   0.090170   4.593157
