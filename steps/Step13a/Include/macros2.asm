macro Push_Pop (Arg1)
.if Arg1 xor 1;	// ������ ����� ��������� ����������
    push ar0, gr0;	
    push ar1, gr1;	
    push ar2, gr2;	
.endif;         // ����� ����� �������� ����������
.if Arg1;       // ������ ����� �������� ����������
    pop ar2, gr2;	
    pop ar1, gr1;	
    pop ar0, gr0;	
.endif;         // ����� ����� �������� ����������
end  Push_Pop;	
