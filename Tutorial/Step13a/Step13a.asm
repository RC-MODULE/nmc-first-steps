global _Copy: label;  // ���������� ���������� ����� _Copy
import from macros.mlb;	
begin ".textAAA"	
<_Copy>	
    ar5 = ar7 - 2;
	
    Push_Pop(0);      // ����������� ������� (���������� ���������)
		
    ar0 = [--ar5];    // � ar0 ����� ��������� ������� �
    ar1 = [--ar5];    // � ar1 ����� ������� ���������� �


    AAA (ar0, ar1, 16); // ����������� ������� ���
		
    Push_Pop(1);      // ����������� ������� (�������������� ���������)
    return;	
end ".textAAA";	
