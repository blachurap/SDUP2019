clc;  clear; close all;

%%%%%%%%%%%%%%%%% Zmienne u¿ytkownika %%%%%%%%%%%%%%%%%

Dlugosc_slowa_bitowego = 8;
Alfa = 30;
Calkowita_dlugosc_wektora_testujacego = 10000;

Ilosc_symboli_testujacych = 5;

%%%%%%%%%%%%%%%%% Zmienne lokalne %%%%%%%%%%%%%%%%%

Ilosc_symboli = pow2(Dlugosc_slowa_bitowego);

%%%%%%%%%%%%%%%%% Program %%%%%%%%%%%%%%%%%

probability_vector = Generate_probability_vector(Ilosc_symboli, Alfa);
figure(1);
plot(probability_vector);
xlabel('Numer probki'); 
ylabel('Prawdopodobienstwo [%]');

wektor = Generate_test_vector(probability_vector, Ilosc_symboli, Calkowita_dlugosc_wektora_testujacego);
wektor_losowy = Randomize_vector(wektor);

figure(2);
histogram(wektor_losowy, 0:Ilosc_symboli);
xlabel('Numer probki'); 
ylabel('Ilosc probek');

figure(3);
plot(wektor_losowy, '.');
xlabel('Indeks wektora'); 
ylabel('Wartosc');

wektor_testujacy = wektor_losowy(1, 1:Ilosc_symboli_testujacych),

%Kodek Huffmana
Dictionary = huffmandict(0:Ilosc_symboli-1, probability_vector./100);
Encoded_vector = huffmanenco(wektor_testujacy, Dictionary),




