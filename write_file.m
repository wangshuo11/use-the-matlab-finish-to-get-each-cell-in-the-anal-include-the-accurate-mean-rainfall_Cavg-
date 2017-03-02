function write_file( filename,source_matrix )
    %TEST Summary of this function goes here
    %  write matrix to file
    fid=fopen(filename,'a');
    [x,y]=size(source_matrix);
    for i=1:x
        for j=1:y-1
            fprintf(fid,'%s\x20',num2str(source_matrix(i,j)));
        end
        fprintf(fid,'%s\r\n',num2str(source_matrix(i,y)));%每一行回车\n
    end
    fclose(fid);
end
% filename，就是的文件路径和文件名。
% source_matrix ，就是你要输出的矩阵