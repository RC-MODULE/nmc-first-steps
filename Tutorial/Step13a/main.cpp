// ������� Copy ��������� ������� � ��-�����������
extern "C" void Copy( long *Src, long *Dst );
long A[16];	       // ������ �������� ������
long B[16];	       // ������ �����������
	
int main()
{
	for (int i=0; i<16; i++)
	A[i] = 0x0807060504030201*i;
	
	Copy( A, B );  // ����� ������� Copy
	int i=320000000;
	unsigned t1=0x800000;
	unsigned t0=00000;
	
	unsigned  d=0x800000;
	return 320000000/(t1-t0);	
}
