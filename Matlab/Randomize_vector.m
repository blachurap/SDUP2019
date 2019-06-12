function [randomized_vector] = Randomize_vector(vector)

    local_vector = ones(1, length(vector));

    radnom_index = randperm(length(vector));
    local_vector(1, radnom_index) = vector(1,:);

    randomized_vector = local_vector;

end