// ������� Copy ��������� ������� � ��-�����������
extern "C" void Copy( long *Src, long *Dst );
long A[16];	        // ������ �������� ������
long B[16];	        // ������ �����������
	
int main()
{
	for (int i=0; i<16; i++)
	A[i] = 0x0807060504030201*i;
	
	Copy( A, B );	// ����� ������� Copy
	return 1;	
}
