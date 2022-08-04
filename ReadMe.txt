*****************************************************************************
The project is done in MATLAB.
Because of some characters like # and * , I consideres all inputs as char.
*****************************************************************************
If you would like to know more about DFTM here is a link:
https://en.wikipedia.org/wiki/Dual-tone_multi-frequency_signaling
*****************************************************************************
This project has two main parts:
1. encode.m:
The user gives a sequence of characters/numbers and the program encode it using the regular DFTM method.
The encoded result is then saved as a .wav file
note that Sampling rate,T_on and T_off can be changed as you wish.
2. decode.m:
By recieving a .wav coded file and knowing the essential parameters such as T_on and T_off, you would be able to decode the audio and find the sequence behind it. pay attention to the fact that because of some changes during saving the file, the correlation coefficient would never be absolute 1, so I defined a maximum error of 0.05 to make sure the right character is found.