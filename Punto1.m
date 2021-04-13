clear all, clc; 

fprintf('Cargar Matriz A \n\n')
%Pedir dimensiones
M=input('Ingrese el tamaño de la matriz m'); 
N=input('Ingrese el tamaño de la matriz n'); 
%Cargar matriz M 
 for i = 1 : M
     for j = 1 : N
         
        disp(['Ingrese el número en la posicion {',num2str(i),',',num2str(j),'}']) 
      Matriz(i,j) = input(''); 
     end 
 end


 fprintf('\n\nCargar Matriz B\n\n')
 %Cargar matriz B
 for i = 1 : M
     for j = 1 : N
         disp(['Ingrese el número en la posicion {',num2str(i),',',num2str(j),'}']) 
      MatrizB(i,j) = input(''); 
      
     end 
 end
  disp('\n La matriz A  es: ' )
 
 Matriz 
 
 disp('\nLa matriz B  es :  ') 
 MatrizB
 
 
 for i = 1 : M 
   for j = 1 : N 
       MatriAux(i,j) = Matriz(i,j);
       Matriz(i,j) = MatrizB(i,j); 
       MatrizB(i,j) = MatriAux(i,j); 
        
   end
 end
  disp('\n La matriz A con valores de B es: ' )
 
 Matriz 
 
 disp('\nLa matriz B con valores de A es :  ') 
 MatrizB
 
 
 
 
     