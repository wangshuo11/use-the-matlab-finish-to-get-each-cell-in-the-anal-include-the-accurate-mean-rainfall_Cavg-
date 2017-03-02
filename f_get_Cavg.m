function Cavg=f_get_Cavg(I_origin,bwlabel,I_bwlabel)
   count=0;
   sum=0;
   for i=1:128
       for j=1:61
           if(I_bwlabel(i,j)==bwlabel)
               count=count+1;
               sum=sum+I_origin(i,j);
           end
       end
   end
   Cavg=sum/count;
end