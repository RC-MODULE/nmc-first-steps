global _AddBias :label;	
	
data ".data"	
	// веса для матрицы, единичная диагональ, данные проходят без изменений
	Weights: long[4] = ( 1L, 1L<<16, 1L<<32, 1L<<48 );
end ".data";	
	
begin ".textAAA"	
<_AddBias>	
	ar5 = sp - 2;	
	push ar0, gr0;	
	push ar4, gr4;	
		
	gr4 = [--ar5];	  // адрес массива
	gr0 = [--ar5];	  // количество 16-разрядных слов в массиве
		
	nb1 = 80008000h;  // 4 столбца
	sb  = 00030003h;  // 4 строки
		
	// gr0 преобразуется из кол-ва 16-разрядных слов в кол-во 64-разрядных векторов
	ar4 = Weights with gr0 >>= 2;
	
	// веса загружаются в рабочую матрицу
	rep 4 wfifo = [ar4++], ftw, wtw;
		
	vr = [--ar5];	  // в регистр vr загружается константный вектор  
		
    // gr0 будет определять количество циклов, где каждый цикл обрабатывает 
    // по 32 вектора
    ar0 = gr4 with gr0 >>= 5;
    ar4 = gr4 with gr0--;
<Loop>
	if > delayed goto Loop with gr0--;
    // входные вектора, проходя через матричный умножитель, суммируются с vr
    rep 32 data = [ar0++] with vsum , data, vr;
	rep 32 [ar4++] = afifo;
	
	pop ar4, gr4;	
	pop ar0, gr0;	
	return;	
end ".textAAA";	
