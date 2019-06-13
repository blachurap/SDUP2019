function [] = Generate_dictionary_text_file(file_name, data)
    fileID = fopen(file_name,'w');

    fprintf(fileID,'%d\r\n', length(data));
    
    for n=1:length(data)
        fprintf(fileID,'%d ', cell2mat(data(n, 1)));
        fprintf(fileID,'['); 
        fprintf(fileID,'%d', cell2mat(data(n, 2)));
        fprintf(fileID,']'); 
        fprintf(fileID,'\r\n');   
    end
    
    fclose(fileID);
end