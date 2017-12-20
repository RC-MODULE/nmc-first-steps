// функци€ AddBias объ€влена как внешн€€ с —и-св€зыванием
extern "C" void AddBias( short* buff, int size, long bias );

long Data[1024];	// массив из 1024 64-разр€дных векторов (4096 элементов)


int main()
{
	// цикл начального заполнени€ массива данных
	Data[0] = 0x0001000100010001;
	for ( int i = 1; i < 1024; i++ )
	Data[i] = Data[i-1] + 0x0001000100010001;
	
	// вызов функции AddBias
	AddBias( (short*)Data, 4096, 0x0012001200120012 );
	
	return 1;
}
