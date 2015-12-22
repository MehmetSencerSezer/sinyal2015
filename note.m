function [xx,tt] = note(ff,dur)
tt1 = 0:1/(20*ff):dur*1/4*1.5; 
xx1 =  1.5*sin(2*pi*ff*tt1);

tt2 = dur*1/4:1/(20*ff):(dur*1/4)+(dur*1/8); 
xx2 = sin(2*pi*ff*tt2);
 
tt3 =(dur*1/4)+(dur*1/8):1/(20*ff):(dur*1/4)+(dur*1/8)+(dur*1/2);
xx3 = sin(2*pi*ff*tt3);

tt4 = (dur*1/4)+(dur*1/8)+(dur*1/2):1/(20*ff):(dur*1/4)+(dur*1/8)+(dur*1/2)+(dur*1/8);
xx4 = sin(2*pi*ff*tt4);

tt = 0:1/(20*ff):dur;
xx = xx1+xx2+xx3+xx4;
plot(tt,xx)