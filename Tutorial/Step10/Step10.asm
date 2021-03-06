global _AddSaturate: label;
data ".data"	
	Masks: long[24] = 
       (0000000000000001hl,      // ������� ��� ������� �������
        0000000000010000hl,	
        0000000100000000hl,	
        0001000000000000hl,	
        0000000000000000hl dup 4,	
        	
        0000000000000001hl,      // ������� ��� ������� �������
        0000000000000100hl,	
        0000000000010000hl,	
        0000000001000000hl,	
        	
        0000000000000000hl dup 4,// ������� ��� �������� 
        0000000000000001hl,      // �������
        0000000000010000hl,	
        0000000100000000hl,	
        0001000000000000hl,	
        	
        0000000100000000hl,      // ������� ��� ��������� 
        0000010000000000hl,      // �������
        0001000000000000hl,	
        0100000000000000hl);	
end ".data";	
begin ".text"	
<_AddSaturate>	
	ar5 = sp - 2;	
	push ar0, gr0;	
	push ar1, gr1;	
	push ar4, gr4;	
	push ar6, gr6;	
		
	gr0 = [--ar5];    // ������ ������� �������� (SRC1)
	gr1 = [--ar5];    // ������ ������� �������� (SRC2)
	ar4 = [--ar5];    // ������ ������� �������� (DST)
		
	ar0 = gr0;	
	ar1 = gr1;	
		
	ar6 = Masks;      // ����� ������, ��������� ������� ������������
		
	f1cr = 0FF80FF80h;// ������������ �������������� ������� ���������
		
    // ����������� ������������ ������� ������� ��� ������� ���� ����������
    nb1 = 80008000h;  // 4 �������
    sb  = 03030303h;  // 8 �����
		
    // ����� ��� ������� ������������ (��� ������ ������) ����������� � wfifo,
    // � � ������� ������� ��������� ������ 8 ���� � ������������ �� ���������� sb � nb1
    rep 24 wfifo = [ar6++],ftw, wtw;
	
    // ��������� ������� ������� ��� ���������, ����� ���������� � �������� ������� 
    // ������� ����� ������� ������� ������������� � ���������� ����� ������������.
    nb1 = 80808080h;
    sb  = 00030003h;
    // ���������� �� ������� ������� ����������� ����������� � ��������� �������,
    // ��������� ��� ���������� ��������� �������������� ������������ � ������������ 
    // �������� ������� ��������.
    rep 32 data = [ar0++], ftw with vsum , data, 0;
    rep 32 data = [ar1++] with vsum , data, afifo;
	
	wtw;	          // ����������� ������� ������� � �������
	nb1 = 80008000h;
	sb  = 03030303h;
    // ���������� �������������� ��������� � ����������� ��������������� �����������
    rep 32 ftw with vsum , activate afifo, 0;
	
    // ����������� � ������ �������� �������� ��� ��������� ������ ������� ��������
    ar0 = gr0;
    ar1 = gr1;
    // ���������� ����������� ������� ���� �������������� � ram
    rep 32 [ar4],ram = afifo;
    wtw;
	
    // ������ ��� ���������� ��������� ��������� ������, ������� � ����� �������.
    nb1 = 80808080h;
    sb  = 00030003h;
	
    rep 32 data = [ar0++], ftw with vsum , data, 0;
    rep 32 data = [ar1++] with vsum , data, afifo;
	
    wtw;	
    // ���������� ���������� ������, ����������� ����������� � ���������� � 
    // ����������� ������� �������.  
    rep 32 with vsum , activate afifo, ram;
	
    // ��������� ���������� ����������� � ������.
    rep 32 [ar4++] = afifo;
	
    pop ar6, gr6;	  // �������������� ����������� ��� �� �����
    pop ar4, gr4;	
    pop ar1, gr1;	
    pop ar0, gr0;	
    return;	
		
end ".text";	
