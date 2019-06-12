function [probability_vector] = Generate_probability_vector(symbols_quantity, alfa)

    Range = 0:(symbols_quantity - 1);
    dist = exp(-Range./alfa);
    probability_vector = 100.*(dist./sum(dist));
    
end