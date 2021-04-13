clc, clear all; 
Duracion= 16; 
Fs = 44100 ;



Entrada = audiorecorder(Fs, 16, 1); 

msgbox('Grabando', 'titulo'); 


recordblocking(Entrada, Duracion); 
msgbox('Finalizo la grabación', 'titulo'); 


x= getaudiodata(Entrada, 'int16'); 

audiowrite('Sonido.wav',x,Fs);
