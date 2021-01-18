// функция Copy объявлена внешней с —и-связыванием
extern "C" void Copy( long *Src, long *Dst );
long A[16];	        // массив исходных данных
long B[16];	        // массив результатов
	
int main()
{
	for (int i=0; i<16; i++)
	A[i] = 0x0807060504030201*i;
	
	Copy( A, B );	// вызов функции Copy
	return 1;	
}
