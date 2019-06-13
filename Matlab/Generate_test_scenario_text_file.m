function [] = Generate_test_scenario_text_file(file_name, input_data, output_data)
    fileID = fopen(file_name,'w');

    fprintf(fileID,'%d\r\n', length(input_data));
    fprintf(fileID,'%d ', input_data);
    fprintf(fileID,'\r\n');
    fprintf(fileID,'%d', output_data);

    fclose(fileID);
end