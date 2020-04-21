e=ones(1,10000); %e - mimoœród orbity
eZ=0.01671123.*e; %Ziemia
eJ=0.04839266.*e; %Jowisz
eH=0.967143.*e; %Kometa Halleya
a=ones(1,10000); %d³. pó³os. orbity
aZ=1.00000261.*a; %Ziemia
aJ=5.20336301.*a; %Jowisz
aH=17.8341.*a; %Kometa Halleya

theta=linspace(0, 2*pi, 10000);
%r-równanie elipsy
rZ=(aZ.*(1-eZ.^2))./(1+eZ.*cos(theta));
rJ=(aJ.*(1-eJ.^2))./(1+eJ.*cos(theta));
rH=(aH.*(1-eH.^2))./(1+eH.*cos(theta));

[xZ,yZ]=pol2cart(theta,rZ);
[xJ,yJ]=pol2cart(theta,rJ);
[xH,yH]=pol2cart(theta,rH);


plot(xZ,yZ);
hold on
xlim([-40,10]);   
ylim([-25,20]);
plot(xJ,yJ);
plot(xH,yH);
plot(0,0,'x'); %s³oñce
xlabel('odleg³oœæ (j.a.)');
ylabel('odleg³oœæ (j.a.)');
legend('Ziemia','Jowisz','Kometa Halleya','S³oñce');
hold off