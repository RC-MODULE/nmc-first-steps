global _AddBias :label;	
	
data ".data"	
	// ���� ��� �������, ��������� ���������, ������ �������� ��� ���������
	Weights: long[4] = ( 1L, 1L<<16, 1L<<32, 1L<<48 );
end ".data";	
	
begin ".textAAA"	
<_AddBias>	
	ar5 = sp - 2;	
	push ar0, gr0;	
	push ar4, gr4;	
		
	gr4 = [--ar5];	  // ����� �������
	gr0 = [--ar5];	  // ���������� 16-��������� ���� � �������
		
	nb1 = 80008000h;  // 4 �������
	sb  = 00030003h;  // 4 ������
		
	// gr0 ������������� �� ���-�� 16-��������� ���� � ���-�� 64-��������� ��������
	ar4 = Weights with gr0 >>= 2;
	
	// ���� ����������� � ������� �������
	rep 4 wfifo = [ar4++], ftw, wtw;
		
	vr = [--ar5];	  // � ������� vr ����������� ����������� ������  
		
    // gr0 ����� ���������� ���������� ������, ��� ������ ���� ������������ 
    // �� 32 �������
    ar0 = gr4 with gr0 >>= 5;
    ar4 = gr4 with gr0--;
<Loop>
	if > delayed goto Loop with gr0--;
    // ������� �������, ������� ����� ��������� ����������, ����������� � vr
    rep 32 data = [ar0++] with vsum , data, vr;
	rep 32 [ar4++] = afifo;
	
	pop ar4, gr4;	
	pop ar0, gr0;	
	return;	
end ".textAAA";	
