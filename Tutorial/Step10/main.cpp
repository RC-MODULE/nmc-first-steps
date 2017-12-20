// ������� AddSaturate ��������� ��� ������� � �� �����������
extern "C" void AddSaturate( long* Src1, long* Src2, long* Dst);
	
long SRC1[32];	// ������ ������� ������
long SRC2[32];	// ������ ������� ������
long DST[32];	// ������ �����������
	
int main()
{	// ���������� �������� ���������� ����������
	for (int i = 0; i < 32; i++)
	{
	SRC1[i] = 0x0203040504030201*i;
	SRC2[i] = 0x0807060804050607*i;
	}
	// ����� ������������ ������� � ��������� ��� ����������
	AddSaturate( SRC1, SRC2, DST );
	return 0;
}
