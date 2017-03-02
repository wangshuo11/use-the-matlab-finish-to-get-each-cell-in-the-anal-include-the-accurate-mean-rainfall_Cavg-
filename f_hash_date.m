%f_hash_date主要根据文件的顺序i，计算出与其对应的日期，并将日期放在date[][]中，用于查找%
function date= f_hash_date(filenum)

	month = [ 31, 31;     %month[][0]表示平年月份的天数，month[][1]表示闰年月份的天数
		28, 29;
		31, 31;
		30, 30;
		31, 31;
		30, 30;
		31, 31;
		31, 31;
		30, 30;
		31, 31;
		30, 30;
		31, 31 ];
	day = 1; 
    mon = 1; 
    year = 2002;     %初始化年月日为文件开始日期
    date=zeros(filenum+1,3);							   %通过hash,依次将文件顺序数值i,所对应的日期放在date[i][]中%
	for i = 0:filenum
		day = day + 1;
		if (day > month(mon ,f_isyear(year)+1))     %天数大于月份天数，day=1,mon++
			day = 1;
			mon = mon + 1;
        end
		if (mon > 12)             %月份大于12个月，mon=1,year++
			mon = 1;
			year = year + 1;
        end
		%保存到date%
		date(i+1,1) = year;
		date(i+1,2)= mon;
		date(i+1,3) = day;
    end
end
