// ������� AddBias ��������� ��� ������� � ��-�����������
extern "C" void AddBias( short* buff, int size, long bias );

long Data[1024];	// ������ �� 1024 64-��������� �������� (4096 ���������)


int main()
{
	// ���� ���������� ���������� ������� ������
	Data[0] = 0x0001000100010001;
	for ( int i = 1; i < 1024; i++ )
	Data[i] = Data[i-1] + 0x0001000100010001;
	
	// ����� ������� AddBias
	AddBias( (short*)Data, 4096, 0x0012001200120012 );
	
	return 1;
}
