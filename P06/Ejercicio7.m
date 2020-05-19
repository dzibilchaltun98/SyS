function Ejercicio7(a,b,ciy,xi,t0)
% a coeficientes de las derivadas de la salida menor a mayor [a_0, ..., a_n]
% b coeficientes de las derivadas de la entrada menor a mayor [b_0, ..., b_m]
% ciy condiciones iniciales de la salida de  menor a mayor [y(0), y(0)^(n-1)]
% xi función de entrada en terminos de la variable simbolica t previamente
% declarada en el command window
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
   %for k=1:i-1
    %   edd=edd-a(i)*(s^(i-1-k)*ciy(k));
   %end
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*1;
end


edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;
edd=solve(eq1, Yy);

y(t)=ilaplace(edd);



figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])



hold on
subplot(3,2,2)
fplot(y,[0,t0],'r','LineWidth',2)

legend('Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Respuesta al impulso','FontWeight','bold','FontSize',16)
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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



edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;
edd=solve(eq1, Yy);

y(t)=ilaplace(edd);



figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])



hold on
subplot(3,2,1)
fplot(y,[0,t0],'r','LineWidth',2)

legend('Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Respuesta a entrada cero','FontWeight','bold','FontSize',16)
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


syms y(t) Y(s) x(t) X(s) Yy fp;
syms edd edi 
edd=0;
edi=0;

for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
%    for k=1:i-1
%        edd=edd-a(i)*(s^(i-1-k)*ciy(k));
%    end
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*X(s);
   %for k=1:i-1
     %  edi=edi-b(i)*(s^(i-1-k)*cix(k));
   %end
end

edi=subs(edi,X(s), laplace(xi));


edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;

edd=solve(eq1, Yy);

y(t)=ilaplace(edd);



figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])



hold on
subplot(3,2,4)
fplot(y,[0,t0],'r','LineWidth',2)

legend('Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Respuesta a estado cero','FontWeight','bold','FontSize',16)
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

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
   edi=edi+b(i)*s^(i-1)*X(s);
   %for k=1:i-1
     %  edi=edi-b(i)*(s^(i-1-k)*cix(k));
   %end
end


edi=subs(edi,X(s), laplace(xi));


edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;

edd=solve(eq1, Yy);



y(t)=ilaplace(edd);


figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])



hold on
subplot(3,2,3)
fplot(y,[0,t0],'r','LineWidth',2)

legend('Salida y(t)','Location','Best')
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Respuesta total','FontWeight','bold','FontSize',16)
grid on

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

syms y(t) Y(s) x(t) X(s) Yy fp;
syms edd edi 
edd=0;
edi=0;
xi1=heaviside(t);
for i=1:tam(2)
   edd=edd+a(i)*s^(i-1)*Y(s);
%    for k=1:i-1
%        edd=edd-a(i)*(s^(i-1-k)*0);
%    end
end

for i=1:tami(2)
   edi=edi+b(i)*s^(i-1)*X(s);
   %for k=1:i-1
     %  edi=edi-b(i)*(s^(i-1-k)*cix(k));
   %end
end


edi=subs(edi,X(s), laplace(xi1));


edd=collect(edd,Y(s));
edd=subs(edd,Y(s),Yy);
eq1=edd==edi;

edd=solve(eq1, Yy);

y(t)=ilaplace(edd);


figure (1)
hFig = figure(1);
set(hFig, 'Position', [0 0 900 900])


hold on
subplot(3,2,5)
fplot(y,[0,t0],'r','LineWidth',2)

legend('Salida y(t)','Location','Best')%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xlabel('tiempo','FontWeight','bold','FontSize',16)
title('Respuesta total al escalón','FontWeight','bold','FontSize',16)
grid on

end

