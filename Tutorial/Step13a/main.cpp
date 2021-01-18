// функция Copy объявлена внешней с —и-связыванием
extern "C" void Copy( long *Src, long *Dst );
long A[16];	       // массив исходных данных
long B[16];	       // массив результатов
	
int main()
{
	for (int i=0; i<16; i++)
	A[i] = 0x0807060504030201*i;
	
	Copy( A, B );  // вызов функции Copy
	int i=320000000;
	unsigned t1=0x800000;
	unsigned t0=00000;
	
	unsigned  d=0x800000;
	return 320000000/(t1-t0);	
}
