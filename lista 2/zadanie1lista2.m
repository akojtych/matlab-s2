x=linspace(-8,10,100);
e=[-0.5 0.5 1 1.5];
x0=linspace(1,1,4);
y0=linspace(1,1,4);
y0p=1;
x0p=1;
yF=y0+e; %ognisko F 

y1=((x-x0p).^2)./4*e(1)+y0p;  %przeksztalcony wzor
y2=((x-x0p).^2)./4*e(2)+y0p;
y3=((x-x0p).^2)./4*e(3)+y0p;
y4=((x-x0p).^2)./4*e(4)+y0p;


plot(x,y1);
hold on
plot(x,y2);
plot(x,y3);
plot(x,y4);

hold off