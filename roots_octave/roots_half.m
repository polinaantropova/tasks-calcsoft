x = [-10:0.1:10]; %построили функцию
y = (1 + sin(x) - cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2).^2 + 1;
plot(x,y,"LineWidth", 1, "color", "k");
hold

y = @(x) (1 + sin(x) - cos(x)).^2 - (sin(2*x) - cos(2*x) - 0.2).^2 + 1;
epsil=0.00001;
answer=[];

tic
for k = -4.8:0.2:5
  a=k-0.2;
  b=k;

  if (y(a)*y(b) > 0)
    continue;
  endif

  while abs(b-a)> epsil
    c=(b+a)/2;
    if  y(c)== 0
      break;
    endif

    if sign(y(c))==sign(y(a))
      a=c;
    else
      b=c;
    end
  end

  found=false;
  if length(answer)==0
    if c <= -5 || c >= 5
      found = true;
    end
  endif

  for i = 1:length(answer)
    if abs(abs(c) - abs(answer(i))) <= 0.01 || c <= -5 || c >= 5
      found = true;
      break;
    end
  end
  if (found != true)
    answer = [answer c];
  end
end
toc

plot(answer,y(answer),'r*');
answer
grid on

##
##Elapsed time is 0.0112731 seconds.
##answer =
##
##  -2.081720  -1.690033  -0.841595   0.090167   4.201471   4.593158
