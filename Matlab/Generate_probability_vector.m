function [probability_vector] = Generate_probability_vector(symbols_quantity, alpha)

    Range = 0:(symbols_quantity - 1);
    dist = exp(-Range./alpha);
    probability_vector = dist./sum(dist);    
end