function [] = Generate_dictionary_files(path, c_file_name, h_file_name, data)

    %.h file
	fileID = fopen(strcat(path, h_file_name), 'w');
    
    fprintf(fileID, '#ifndef DICTIONARY_H_\r\n');
    fprintf(fileID, '#define DICTIONARY_H_\r\n');
    fprintf(fileID, '\r\n');
   
    fprintf(fileID, 'const uint8_t Dictionary_array[%d][%d];\r\n', length(data), 1 + length(cell2mat(data(length(data), 2))));
    
    fprintf(fileID, '\r\n');
	fprintf(fileID, '#endif\r\n');
    
    fclose(fileID);

    
    %.c file
	fileID = fopen(strcat(path, c_file_name), 'w');
        
    fprintf(fileID, strcat('#include "', h_file_name, '"\r\n'));
    fprintf(fileID, '\r\n');
    
    fprintf(fileID, 'const uint8_t Dictionary_array[%d][%d] = {\r\n', length(data), 1 + length(cell2mat(data(length(data), 2))));
    for n=1:length(data)
        fprintf(fileID, '{');
        fprintf(fileID,'%d', cell2mat(data(n, 1)));

        w = cell2mat(data(n, 2));
        for i=1:length(cell2mat(data(length(data), 2)))
            if i<=length(w)
                fprintf(fileID, ', %d', w(i));
            else
                fprintf(fileID, ', %d', 2);
            end
        end

        if n~=length(data) 
            fprintf(fileID, '},\r\n');
        else
            fprintf(fileID, '}\r\n');
        end
    end    
	fprintf(fileID, '};\r\n');   
    
    fclose(fileID);
end