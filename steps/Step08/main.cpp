extern "C" {
	// функции Neg_Scal и Neg_Vect объ€влены как внешние с —и-св€зыванием
	long Neg_Scal ( long value );
	long Neg_Vect ( long value );
}

int main()
{
	long a = 0x2222222211111111;
	// вызов функции Neg_Scal(a) с параметром а и запись значени€, 
    // возвращаемого функцией, в переменную b.
	long b = Neg_Scal(a);
	// вызов функции Neg_Vect(a) с параметром а и запись значени€, 
    // возвращаемого функцией, в переменную c.
	long c = Neg_Vect(a);
	return int(b-c);
}
