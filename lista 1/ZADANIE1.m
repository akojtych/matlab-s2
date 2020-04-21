% LISTA 1 - zadanie 1 
t = linspace(0,3.5,8);
x = [0.0 16.2 29.9 38.9 46.6 57.2 71.7 84.8];
y = [15.0 14.95 19.0 26.1 31.3 35.4 35.7 30];
dt = linspace(1,1,length(t)).*0.1; % niepewnosc pomiarowa czasu
dx = linspace(1,1,length(x)).*0.5; %niepewnosc pomiarowa polozenia x
dy = linspace(1,1,length(y)).*0.5; %niepewnosc pomiarowa polozenia y

% PODPUNKT A 
subplot(2,2,1);
hold on;
errorbar(t,x,dx,'LineStyle', 'none');
errorbar(t,x,dt,'LineStyle', 'none');
title('x(t)');
xlabel('t[s]');
ylabel('x[m]');
axis([0 4 0 90]);
grid on;
scatter(t,x);
hold off;
subplot(2,2,2);
hold on;
errorbar(t,y,dy,'LineStyle', 'none');
errorbar(t,y,dt,'LineStyle', 'none');
title('y(t)');
xlabel('t[s]');
ylabel('y[m]');
axis([0 4 0 90]);
grid on;
scatter(t,y);
hold off;


%PODPUNKT B
subplot(2,2,3)
hold on;
xx = 0:0.5:84.8;
yy = spline(x,y,xx);
plot(x,y,'o',xx,yy);
xlabel('x [m]')
ylabel('y [m]')
title('Trajektoria ruchu y(x)');
hold off;

%PODPUNKT C
subplot(2,2,4)
hold on;
s = sqrt(x.^2 + y.^2) %modu³ przemieszczenia
ps = diff(s);       %pochodna drogi
dt2 = linspace(0.5,0.5,7); 
v=ps./dt2;
pv = diff(v);
dt3 = linspace(0.5,0.5,6); 
t2 = linspace(0.5,3.5,6); 
plot(t2,pv);
title('Podpunkt C');
hold off;



%PODPUNKT D
saveas(gcf,'wykresy.jpg');
saveas(gcf,'wykresy.png');

