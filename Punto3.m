clear all; clc; 
A = [0,1]; 
B = [0,4];
C = [2,4]; 
D = [2,6]; 
E = [8,6]; 
F = [8,4]; 
G = [10,4]; 
H = [10,1]; 



x = [A(1), B(1), C(1), D(1), E(1), F(1), G(1), H(1), A(1)]; 
y = [A(2), B(2), C(2), D(2), E(2), F(2), G(2), H(2), A(2)];


%Variables plano carteciano 
Xmin = -2; 
Xmax = 30; 
Ymin = -2; 
Ymax = 20; 
grid on 
axis square; 
   axis([Xmin,Xmax,Ymin,Ymax]);
%Transladar
  for k = 1: 8
    for i = 1: 100000
    
        
    carro = line(x,y);
    carro.Color = 'red'; 
    carro.LineStyle = '-'; 
    carro.LineWidth = 4; 
    pause(0.00001)
   
    if(i<=1000)
        
        delete(carro); 
    end
      x = x+0.001; 
      
    end
    
    for j = 0: 1000
        
    carro = line(x,y);
    carro.Color = 'red'; 
    carro.LineStyle = '-'; 
    carro.LineWidth = 4; 
    pause(0.00001)
    if(j<=1000)
        
        delete(carro); 
    end
      x = x-0.01; 
        
    end
     
    
  end 

