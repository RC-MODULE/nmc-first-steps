// функция AddSaturate объявлена как внешняя с —и связыванием
extern "C" void AddSaturate( long* Src1, long* Src2, long* Dst);
	
long SRC1[32];	// первый входной массив
long SRC2[32];	// второй входной массив
long DST[32];	// массив результатов
	
int main()
{	// заполнение массивов начальными значениями
	for (int i = 0; i < 32; i++)
	{
	SRC1[i] = 0x0203040504030201*i;
	SRC2[i] = 0x0807060804050607*i;
	}
	// вызов ассемблерной функции с передачей трЄх параметров
	AddSaturate( SRC1, SRC2, DST );
	return 0;
}
