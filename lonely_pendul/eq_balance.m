function [dth_dt]=eq_balance(t,theta,l,m,b,g)
  th_1_dt=theta(1);
  th_2_dt=theta(2);
  dth_1=th_2_dt;
  dth_2=(-(b/m)*th_2_dt)-((g/l)*sin(th_1_dt));
  dth_dt=[dth_1;dth_2];
endfunction
