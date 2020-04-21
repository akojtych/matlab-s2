%Zadanie 1 lista 3 Kojtych Agnieszka
n=0;
f=[];
file=fopen('fibonacci.txt','w'); %tworzenie pliku w trybie zapisu
while n<=16
    F=(1/sqrt(5))*((((1+sqrt(5))/2)^n) - (((1-sqrt(5))/2)^n));
    f=[f,F]; % przechowywanie wyrazow w wektorze 
    fprintf(file, 'F %i=%i\n', n, F); 
    n=n+1;
end 
fclose(file); %zamkniecie pliku 
hold on 
grid on;
x=[0:16];
plot(x,f);
xlabel('n');
ylabel('F(n)');
title('Wykres kolejnych wyrazów ci¹gu Fibonacciego dla n=16');
saveas(1, 'wykresfibo.jpg'); % zapisuje wykres do pliku jpg 
hold off