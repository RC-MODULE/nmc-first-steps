// ������� Mask ��������� ��� ������� � ��-�����������
extern "C" void Mask ( long *A, int msk );

long A[32];	       // ���������� ������� �� 32 64-��������� ��������
	
int main()
{
	for ( int i=0; i< 32; i++)
	{
	// ������ ����������� �� �������� ����������
	A[i] = 0x0102030405060708*i;
	}
	Mask(A, 0x44); // ����� ������� Mask, ������ �������� - ����� ������� 
                   // ��������, ������ - �����.
	return 0;
}
