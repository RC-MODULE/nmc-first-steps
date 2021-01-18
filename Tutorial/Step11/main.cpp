// функция ReverseBits объявлена внешней с —и-связыванием
extern "C" long ReverseBits(long Src);

int main()
{
	long A = 0x5555EEEEAAAA7777;// исходное число
	long B = 0xEEEE55557777AAAA;// ожидаемый результат перестановки битов 
	long C = ReverseBits(A);	// C содержит переставленные биты 
		
	// сравнение результата вычислений с ожидаемым значением
	if (B == C) return 1;	    // результат совпал с ожидаемым 
	else return -1;	            // результат не совпал с ожидаемым
return 0;	
}
