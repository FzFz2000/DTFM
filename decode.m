close all
clear
clc
%% define variables
[input,fs]=audioread('coded.wav');
f_row=[697 770 852 941];
f_col=[1209 1336 1477 1633];
f_sample=8000;
T_sample=1/f_sample;
T_on=0.1;
T_off=0.1;
T_period=T_off+T_on;
sample_per_period=f_sample*T_period;
t=0:T_sample:T_on;
n=length(input)/sample_per_period;
corr_error=0.05;
keys=['1','2','3','A';'4','5','6','B';'7','8','9','C';'*','0','#','D'];
%% decode
%using correlation
decoded=[];
for digit=1:n
for i=1:4
    for j=1:4
          y1=sin(2*pi*f_row(i)*t);
          y2=sin(2*pi*f_col(j)*t);
          y=(y1+y2)/2;
          Period_Start=(digit-1)*sample_per_period+1;
          Period_End=Period_Start+length(y)-1;
          a_digit=input(Period_Start:Period_End);
          r=corr_coef(a_digit,y);
          if(abs(r-1)<corr_error)
              decoded=[decoded keys(i,j)];
          end
     end
end
end
%% show the result
disp('the result is:');
decoded







