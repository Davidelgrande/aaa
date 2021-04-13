    %{

 Comentarios de multiples lineas 


%}

a= 1; 
b = 2.2; 
%Declarar strings
c= 'Hola'
%Declarar booleanos
l = false; 
%Estructuras de datos 
%Declarar Datos 
vectores = [1,2,3,4,5]; 
Matrices = [1,2,3; 4,5, 6; 7,8,9;]; 
%Declaración de vectores 
vector  = [1, 3, 127]
R = isvector(vector);
R = class (R); 
Inicio = -10; 
Fin = 2; 
Secuencia_1 = Inicio: Fin; 
Paso = 2; 
%Bucles o interacciones 
Secuencia_2 = Inicio: Paso: Fin; 
%Comando para mostrar secuencia disp
disp(Secuencia_1)


%Explorar elementos 
%Ver datos con ()
disp(vector(1))
Fila = 3; 
Columna = 2; 

%Suponga que tiene una matriz
MA =[ 1, 2, 3; 4, 5, 6; 7, 8, 9];
%Tomar elementos  fila
Fila = 2; 
Elementos_Fila = MA(Fila,:); 
disp(Elementos_Fila)
%Tomar elementos columna 
Columna = 3; 
Elementos_Columna = MA(:,Columna); 
disp(Elementos_Columna); 

%Concatenar estructuras
A= [1,2,3,4]; 
B= [2,3,4,5]; 
MA=[1, 2,3; 4,5,6; 7,8,9]; 
MB = [0, 9,8; 7, 6, 5; 4, 3, 2]; 
%Concatenar por columnas; 
C= [A,B]; 
disp(C); 
MC = [MA, MB]; 
disp(MC); 
%Concatenar por filas 
C=[A;B]; 
disp(C); 
MC = [MA; MB]; 
disp(MC); 


%Algebraicas

A = 1; 
B = 2; 
V1 = [2, 3, 4]; 
V2 = [4, 5, 6]; 

C= A+B;
%Multiplicacion de vectores da escalar

V4= [7; 6; 5]; 
MD = V1*V4; 
disp(MD)

% operacion de componente
MD = V1 .*V2; 
disp(MD)
MD = V1./V2; 
disp(MD)

%Transpuesta
T = A'; 
disp (A); 
disp (B); 
% Determinante 
G = det ([1, 2; 3, 4]); 
disp(G)

%Inversa
I = inv ([1, 2; 3, 4]); 
disp(I)


%Gráficas 
t= -pi/2: 0.1 : pi/2; 
y = cos(t); 
plot (t, y); 

plot (t, y, 'linewidth', 2)

grid on 

xlabel( 'tiempo')
ylabel('amplitud')
title ('función coseno')
legend ('Leyenda')

%comando abre diferentes ventanas, el color se cambia con la inicial
% tipo de linea entre comillas
figure
plot(t, y, 'r--', 'linewidth', 2)
figure
plot(t, y, 'k--', 'linewidth', 2)
figure
plot(t, y, 'g--', 'linewidth', 2)



%Condicionales 
if (x==1)
    disp ('cierto')
else 
    disp ('falso')
end 

for i= 1:100
    disp(i)
end 

Mensaje = ('Digite un mensaje')

x= input(Mensaje);


t = 0: 0.1:4; 
y = sin(t); 

for  i = 1: length(y)
    plot(t(i), 'b.', 'linewidth', 2)
    axis([0,4-1,1])
    pause (0.1)
    drawnow()
    hold on %comando para superponer graficas
end
