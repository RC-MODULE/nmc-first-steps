extern "C" {
	// ������� Neg_Scal � Neg_Vect ��������� ��� ������� � ��-�����������
	long Neg_Scal ( long value );
	long Neg_Vect ( long value );
}

int main()
{
	long a = 0x2222222211111111;
	// ����� ������� Neg_Scal(a) � ���������� � � ������ ��������, 
    // ������������� ��������, � ���������� b.
	long b = Neg_Scal(a);
	// ����� ������� Neg_Vect(a) � ���������� � � ������ ��������, 
    // ������������� ��������, � ���������� c.
	long c = Neg_Vect(a);
	return int(b-c);
}
