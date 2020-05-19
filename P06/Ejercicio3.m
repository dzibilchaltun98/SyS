function Ejercicio3(a,b,ciy,t0)
% a coeficientes de las derivadas de la salida menor a mayor [a_0, ..., a_n]
% b coeficientes de las derivadas de la entrada menor a mayor [b_0, ..., b_m]
% ciy condiciones iniciales de la salida de  menor a mayor [y(0), y(0)^(n-1)]
% t0 tiempo final para graficar la solucion, la derivada, y la segunda 
% derivada 

close all
tam=size(a);
tami=size(b);


syms y(t) Y(s) x(t) X(s) Yy fp;
syms edd edi 
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
   for k=1:i-1
       edd=edd-a(i)*(s^(i-1-k)*ciy(k));
   end
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*0;
   %for k=1:i-1
     %  edi=edi-b(i)*(s^(i-1-k)*cix(k));
   %end
end
mensaje('APLICAMOS TRANSFORMADA DE LAPLACE y subtituimos condiciones iniciales')

pretty(edd)
disp('=')
pretty(edi)


mensaje('DESPEJAMOS Y(s)')

edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;
disp('Y(s)=')
edd=solve(eq1, Yy);
pretty(simplify(edd))

%%% Para versiones superiores a 2016
mensaje('DESARROLLAMOS LAS FRACCIONES PARCIALES DE Y(s)')
disp('Y(s)=')
pretty(partfrac(edd))
%%%% Si se ejecuta en 2015 o menor comentar las 3 lineas anteriores

mensaje('Aplicamos transformada inversa, asi la solución es')
disp('y(t)=')
y(t)=ilaplace(edd);
pretty(y(t))


figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])



hold on
fplot(y,[0,t0],'r','LineWidth',2)

legend('Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Respuesta a entrada cero','FontWeight','bold','FontSize',16)
grid on


 end

function mensaje(texto)
disp( ' ')
disp(texto)
disp( ' ')
end