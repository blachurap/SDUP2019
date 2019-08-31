function [vector] = Generate_test_vector(distribution, symbols_quantity, lenght)

	local_vector = zeros(1,lenght);
	left_positon = 1;
       
    for n=1:symbols_quantity
        right_position = floor(lenght*distribution(n)/100) + left_positon;

        for i = left_positon:right_position
            if i > lenght
                vector = local_vector;
               	return 
            end
            local_vector(i) = n-1;
        end
        
        left_positon = right_position + 1;           
    end

	vector = local_vector;
end