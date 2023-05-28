function [x,y] = evolvent_circuit (t,r)
x = r.*(cos(t) + t.*(sin(t)));
y = r.*(sin(t) - t.*(cos(t)));
endfunction
