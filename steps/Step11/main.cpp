// ������� ReverseBits ��������� ������� � ��-�����������
extern "C" long ReverseBits(long Src);

int main()
{
	long A = 0x5555EEEEAAAA7777;// �������� �����
	long B = 0xEEEE55557777AAAA;// ��������� ��������� ������������ ����� 
	long C = ReverseBits(A);	// C �������� �������������� ���� 
		
	// ��������� ���������� ���������� � ��������� ���������
	if (B == C) return 1;	    // ��������� ������ � ��������� 
	else return -1;	            // ��������� �� ������ � ���������
return 0;	
}
