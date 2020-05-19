%% Práctica 06: Sistemas diferenciales
%
% UNIDAD PROFESIONAL INTERDISCILIPINARIA EN INGENIERÍA Y TECNOLOGÍAS
% AVANZADAS
%
% Grupo: 2TV2  
%
% Asignatura: Señales y Sistemas 
%
% Integrantes:                                
% 
% Garcia Acosta Abraham
%
% Vazquez Cruz Rodrigo
% 
%  Profesor:
%
%  Dr. Rafael Matinez Martinez
%% Desarrollo
% Para sistemas diferenciales realiza un programa con las siguientes
% características
% 
% # Muestra la función de transferencia del sistema
% # Muestra la respuesta al impulso (simbólico, gráfica)
% # Muestra la respuesta a entrada cero (simbólico, gráfica)
% # Muestra la respuesta a estado cero (simbólico, gráfica)
% # Muestra la respuesta total (simbólico, gráfica)
% # La respuesta total al escalón con condiciones iniciales 0 (simbólico, gráfica) 
% # Usando subplot, depliega una figura con 5 gráficas
%
% La practica se prueba con el siguiente problema:
% 
% $\ddot{y}+2\dot{y}(t)+3y(t)=\dot{x}(t)-x(t)$ 
%
% donde: 
% 
% $x(t)=cos(2t)u(t),\;\;y(0^-)=1,\;\;\dot{y}(0^-)=1$
% 

%% Ejercicio 1: Muestra la función de transferencia del sistema
%
numerador = [1 -1];
denominador = [1,2,3];
sys = tf(numerador,denominador)
%% Ejercicio 2: Muestra la respuesta al impulso (simbólico, gráfica)
%
% El código de este ejercicio lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/eemtx3c14g9fi4d/Ejercicio2.m?dl=0 enlace>

syms t
Ejercicio2([3 2 1],[-1 1],5)
%% Ejercicio 3: Muestra la respuesta a entrada cero (simbólico, gráfica)
%
% El código de este ejercicio lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/ros5qge4rlpnsh2/Ejercicio3.m?dl=0 enlace>
syms t
Ejercicio3([3 2 1],[-1 1],[1 1],10)
%% Ejercicio 4: Muestra la respuesta a estado cero (simbólico, gráfica)
%
% El código de este ejercicio lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/ra457bq7j6endp1/Ejercicio4.m?dl=0 enlace>
syms t
Ejercicio4([3 2 1],[-1 1],cos(2*t).*heaviside(t),10)

%% Ejercicio 5: Muestra la respuesta total (simbólico, gráfica)
% 
% El código de este ejercicio lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/4g1p8lkgqsuiioe/Ejercicio5.m?dl=0 enlace>
syms t
Ejercicio5([3 2 1],[-1 1],[1 1],cos(2*t).*heaviside(t),10)
%% Ejercicio 6: La respuesta total al escalón con condiciones iniciales 0 (simbólico, gráfica)
% 
% El código de este ejercicio lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/e3vhim5x9oq0s19/Ejercicio6.m?dl=0 enlace>
 syms t
 Ejercicio6([3 2 1],[-1 1],[0 0],heaviside(t),10)
 %% Ejercicio 7: Usando subplot, depliega una figura con 5 gráficas
 %
 % El código de este ejercicio lo puedes encontrar en el siguiente 
% <https://www.dropbox.com/s/gg6jncbk82k1joq/Ejercicio7.m?dl=0 enlace>
 syms t
 Ejercicio7([3 2 1],[-1 1],[1 1],cos(2*t)*heaviside(t),10)
 %% Apéndice
 % El código de esta publicación lo puedes encontrar en el siguiente 
% <https://drive.google.com/open?id=1nYrDFQ8SaR7RHyC1vEbD4QzhdCJi7WE0 drive>
% 
% <https://drive.matlab.com/sharing/ed3e054d-1d44-41a7-8105-557094357add MATLAB Online>