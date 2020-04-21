filename='pompa.dat'; %wczytywanie
A=importdata(filename);

t=A(1:6,1);
p=A(1:6,2);
p0=A(1,2);

tau=(log10(p./p0))./(-t)

%wykresy
figure(1)
plot(t,p,'lineWidth',5);
xlabel('t');
ylabel('p');
title('CISNIENIE OD CZASU (skala liniowa)');

figure(2)
semilogy(t,p,'lineWidth',5);
xlabel('t');
ylabel('p');
title('CISNIENIE OD CZASU (skala logarytmiczna)');