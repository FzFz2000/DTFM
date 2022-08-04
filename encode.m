close all
clear
clc
%% define variables
f_row=[697 770 852 941];
f_col=[1209 1336 1477 1633];
f_sample=8000;
T_sample=1/f_sample;
T_on=0.1;
T_off=0.1;
T_period=T_off+T_on;
sample_per_period=f_sample*T_period;
t=0:T_sample:T_on;
%% get the characters
prompt="enter the input to encoede as an array of characters";
%Example: 'A5691*2'
string=input(prompt);
[my_rows,my_cols]=find_keys(string);
n=length(string);
%% encode
encoded=zeros(1,int64(n*T_period*f_sample));
for index=1:n
    i=my_rows(index);
    j=my_cols(index);
    y1=sin(2*pi*f_row(i)*t);
    y2=sin(2*pi*f_col(j)*t);
    y=(y1+y2)/2;
    Period_Start=(index-1)*sample_per_period+1;
    Period_End=Period_Start+length(y)-1;
    encoded(Period_Start:Period_End)=y;
end
%% save the output and hear it
sound(encoded,f_sample);
audiowrite('coded.wav',encoded,f_sample);