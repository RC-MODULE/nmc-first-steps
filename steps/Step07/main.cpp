extern "C" int Neg ( int value );

extern "C"	{
void nmppsAbs_8s(void* pSrcVec, void* pDstVec, int nSize);
	};
	
int main()
{
	int a = 16;	
	nmppsAbs_8s(0,0,1);
	return Neg(a);	// вызов функции, выполн€ющей негативацию входного
					// параметра.
}
