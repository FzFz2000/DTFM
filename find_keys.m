function [rows,cols] = find_keys(string)
%This function finds the appropriate key for each number
%just like a table in which we match each character
len=length(string);
rows=zeros(1,len);
cols=zeros(1,len);
for index=1:len
    digit= string(index);
    if digit=='1'
        rows(index)=1;
        cols(index)=1;
    elseif digit=='2'
        rows(index)=1;
        cols(index)=2;
    elseif digit=='3'
        rows(index)=1;
        cols(index)=3;
    elseif digit=='A'
        rows(index)=1;
        cols(index)=4;
    elseif digit=='4'
        rows(index)=2;
        cols(index)=1;
    elseif digit=='5'
        rows(index)=2;
        cols(index)=2;
    elseif digit=='6'
        rows(index)=2;
        cols(index)=3;
    elseif digit=='B'
        rows(index)=2;
        cols(index)=4;
    elseif digit=='7'
        rows(index)=3;
        cols(index)=1;
    elseif digit=='8'
        rows(index)=3;
        cols(index)=2;
    elseif digit=='9'
        rows(index)=3;
        cols(index)=3;
    elseif digit=='C'
        rows(index)=3;
        cols(index)=4;
    elseif digit=='*'
        rows(index)=4;
        cols(index)=1;
    elseif digit=='0'
        rows(index)=4;
        cols(index)=2;
    elseif digit=='#'
        rows(index)=4;
        cols(index)=3;
    elseif digit=='D'
        rows(index)=4;
        cols(index)=4;
    else
        disp("the input is not correct!");
        rows(index)=-1;
        cols(index)=-1;        
    end 
end
end

