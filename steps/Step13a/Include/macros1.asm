// Макрос осуществляет копирование одного массива данных
// в другой.
macro AAA(Arg1, Arg2, Arg3)
own Loop: label;	
	gr1 = Arg3;	
	gr1--;	
<Loop>	
	if > delayed goto Loop with gr1--;
	gr2, ar2 = [Arg1++];	
	[Arg2++] = ar2, gr2;	
end  AAA;	