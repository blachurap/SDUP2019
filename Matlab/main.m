clc; clear; close all;

%%%%%%%%%%%%%%%%% Zmienne u¿ytkownika %%%%%%%%%%%%%%%%%
bit_word_length = 8;
alpha = 30;
test_vector_length = 10000;
test_vector_segment_length = 8; %ilosc znakow pobranych z wygenerowanego wektora w celach testowania

%%%%%%%%%%%%%%%%% Program %%%%%%%%%%%%%%%%%
number_of_symbols = pow2(bit_word_length);
probability_vector = Generate_probability_vector(number_of_symbols, alpha);

subplot(3, 1, 1);
plot(probability_vector.*100);
xlabel('Wartosc liczby [-]'); ylabel('Prawdopodobienstwo [%]');
axis('tight');
grid on;

unrandomized_test_vector = Generate_test_vector(probability_vector, number_of_symbols, test_vector_length);
test_vector = Randomize_vector(unrandomized_test_vector);

subplot(3, 1, 2);
histogram(test_vector, 0:number_of_symbols);
xlabel('Wartosc liczby [-]'); ylabel('Liczba wystapien w wektorze');
axis('tight');
grid on;

subplot(3, 1, 3);
plot(test_vector, '.');
xlabel('Indeks wektora'); ylabel('Wartosc');

test_vector_segment = test_vector(1, 1:test_vector_segment_length),

%Kodek Huffmana
dictionary = huffmandict(0:number_of_symbols-1, probability_vector);
encoded_vector = huffmanenco(test_vector_segment, dictionary),

%Wgraj s³ownik i scenariusz testujacy do pliku tekstowego
Generate_dictionary_files('Generated_files/', 'Dictionary.c', 'Dictionary.h', dictionary);
Generate_test_scenario_files('Generated_files/', 'Test_scenario.c', 'Test_scenario.h', test_vector_segment, encoded_vector);
