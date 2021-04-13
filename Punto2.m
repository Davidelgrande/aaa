clear all; clc; 
i = -2220; 
%Declarar triangulo 
A = [0,0];
B = [6,0];
C = [3,5];

%Variables plano carteciano 
Xmin = -7; 
Xmax = 7; 
Ymin = -7; 
Ymax = 7; 

x = [A(1) B(1) C(1) A(1)];
y = [A(2) B(2) C(2) A(2)];
%Dibujar triangulo 


grid on 
axis square; 
   axis([Xmin,Xmax,Ymin,Ymax]); 
   
%Rotacion 
while(i<=0) 
    
    MR = [cosd(-i) sind(-i) 0; 
           -sind(-i) cosd(-i) 0; 
           0 0 1]; 
    aR = [A(1), A(2), 1] *MR; 
    bR = [B(1), B(2), 1] *MR; 
    cR = [C(1), C(2), 1] *MR; 
   
    xR = [aR(1), bR(1), cR(1), aR(1)]; 
    yR = [aR(2), bR(2), cR(2), aR(2)]; 
    %trianguloRotado
    triangulo = line(xR,yR);
    triangulo.Color = 'red'; 
    triangulo.LineStyle = '-'; 
    triangulo.LineWidth = 4; 
    pause(0.01)
    if ( i<0) 
        delete(triangulo); 
    end
     i= i+1; 
end 

