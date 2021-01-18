global __main: label;	
	
data ".MyData"	
	global A: long[16] = (	0L, 1L, 2L, 3L, 4L, 5L, 6L, 7L,
	8L, 9L, 10L, 11L, 12L, 13L, 14L, 15L );
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
