clc, clear all
x=random('unif',0,1,10,5); 
medias = mean(x); 
desv = std(x); 
mejor = min(x); 
peor = max(x); 
errorbar(medias,desv,'r')
hold on 

plot(medias, '--', 'linewidth', 3)
plot(peor, 'k', 'linewidth', 3)
plot (mejor, 'g', 'linewidth', 3)

grid on
title ('Presentacion de la información')
xlabel ('Corrida')