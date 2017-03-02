function flag=f_isyear(year)

	if ((mod(year,4)== 0 && mod(year,100) ~= 0) || mod(year,400) == 0) 
		flag=1;
	
	else
		flag=0;
    end
end