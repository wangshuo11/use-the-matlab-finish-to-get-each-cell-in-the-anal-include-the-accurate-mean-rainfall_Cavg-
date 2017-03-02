close all;
clear all;
clc;
warning off;
filenum=4380;
date=f_hash_date(filenum);
threshold_area=8;
threshold_rainfall=5;
threshold_lunkuo=10;
for i=0:1:4380
    inputpath='G:\\anal\\anal_';
    str_i=int2str(i);
    inputpath=strcat(inputpath,str_i);
    inputpath=strcat(inputpath,'.dat');
    temp_res=f_intensities(inputpath,threshold_area,threshold_rainfall,threshold_lunkuo);
    [a,b]=size(temp_res);
    res=zeros(a,10);
    outputpath='F:\\res_matlab_5_data_each_cell_and_accurate_Cavg\\data_anal_';
    str_i=int2str(i);
    outputpath=strcat(outputpath,str_i);
    outputpath=strcat(outputpath,'.txt');
    
    for j=1:a
        cellId=f_get_cellId(date,i,j);
        cellId_num=str2num(cellId);
        res(j,1)=cellId_num;
       for k=1:6
           res(j,k+1)=temp_res(j,k);
       end
       for kk=1:3
           temp_k=kk+7;
          res(j,temp_k)=date(i+1,kk);
       end
    end
      if(a) 
          write_file(outputpath,res);
      end
end
