global __main: label;	
	
data ".MyData"	
	global A: long[16] = (	0l, 1l, 2l, 3l, 4l, 5hl, 6l, 7l,
	8l, 9l, 10l, 0Bhl, 0Chl, 13l, 14l, 15l );
end ".MyData";	
	
nobits ".MyData1"	
	global C: long[16];	
end ".MyData1";	
	
begin ".text"	
<__main>	
.branch;     // псевдокоманда разрешения параллельного выполнения 
             // векторных инструкций.
	ar0 = A;	
	ar4 = C;	
		
	rep 16 data = [ar0++] with data;
	rep 16 [ar4++] = afifo;
	
	return;	
.wait;       // запрет параллельного выполнения векторных инструкций
		
end ".text";	
