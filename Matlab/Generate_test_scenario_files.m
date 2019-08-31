function [] = Generate_test_scenario_files(path, c_file_name, h_file_name, input_data, output_data)
    
    %.h file
	fileID = fopen(strcat(path, h_file_name), 'w');
    
    fprintf(fileID, '#ifndef TEST_SCENARIO_H_\r\n');
    fprintf(fileID, '#define TEST_SCENARIO_H_\r\n');
    fprintf(fileID, '\r\n');
   
	fprintf(fileID, 'const uint8_t Output_test_array[%d];\r\n', length(input_data));
	fprintf(fileID, 'const uint8_t Output_test_array[%d];\r\n', length(output_data));
    
    fprintf(fileID, '\r\n');
	fprintf(fileID, '#endif\r\n');
    
    fclose(fileID);
    
    
    %.c file
	fileID = fopen(strcat(path, c_file_name), 'w');
        
    fprintf(fileID, strcat('#include "', h_file_name, '"\r\n'));
    fprintf(fileID, '\r\n');
    
	fprintf(fileID, 'const uint8_t Input_test_array[%d] = {%d', length(input_data), input_data(1));
    for n=2:length(input_data)       
        fprintf(fileID,', %d', input_data(n));
    end	    
    fprintf(fileID, '};\r\n'); 

	fprintf(fileID, 'const uint8_t Output_test_array[%d] = {%d', length(output_data), output_data(1));
    for n=2:length(output_data)       
        fprintf(fileID,', %d', output_data(n));
    end	    
    fprintf(fileID, '};\r\n'); 
   
    fclose(fileID);   
end