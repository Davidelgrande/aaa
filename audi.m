clc, clear all; 
Nombre_archivo = 'Sonido.wav'; 
[y,Fs] = audioread(Nombre_archivo); 
%recortar 
plot(y); 
intervalo = 3400:4000; 
y1= y(intervalo); 
sound(y1,Fs)


%Aumenta o disminuye frecuencia de muestreo
sound (y, Fs/2);
sound (y, Fs*2); 

%Diezmación 
Factor_diezmacion = 10; 
Senal_diezmanda= y(1:Factor_diezmacion:end); 
sound(Senal_diezmada,Fs); 