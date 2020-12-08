# [nmc-first-steps](https://github.com/RC-MODULE/nmc-first-steps)

������ ����������� �������� ��������� �������� ��������
�������� �������� �� ����� ���������� � C ��� ����������� ��������� NeuroMatrix.
������������ ��� ����������� ���������, ���������� ��������� � ��������� ���������.
���������� �������� �������� ����������� ��������
� ������ ����������� ����������, ��������� � ������� ����������
��� ���������.

������ ��� ������������ ����� ������ � ��������� �������� � �������������� ��������� ����������.
������� ������������� � ����� */Tutorial* � ����� ���� ������� � �������� ��� �� ���������� �����, ��� � �� ��������� ��� �� Windows.   

� ��������� ����������� ��������������� �������, ������������������ ��� �������� ���������� NM6405,
����� ������������� ���������� ��������� ������������ � ��� ������ ��������:

- make_emu6405  - �������� nm6405(1879��4) � nm6406(1879��5�)
- make_mc5103   - ����� �� 51.03 (1879��5�)
- make_mc7601   - ����� �� 76.01 (�1879��1�)
- make_mb7707   - ����� �� 77.07 (�1879��1�)
- make_mb12101   - ����� �C 121.01 (1879��6�) 

��� ����� �C 121.01 �������� ���. �������������:  
- make_mc12101_nmpu1-gcc-cfg - ���� 1(int core) ������ nm-gcc + cfg-���� �����������
- make_mc12101_nmpu1-gcc-ld  - ���� 1(int core) ������ nm-gcc + lds-���� �����������  
- make_mc12101_nmpu1-legacy  - ���� 1(int core) ������ ������ SDK 

## ���������� ���������� �� (��� �� Windows)

��� ������ � ���������� ���������� �������������� Neuro Matrix SDK (Legacy), ��������� � ������ ������������ [nmkit](https://www.module.ru/mb7707/NeuroMatrix/nmkit.exe) .

������ �������������� � ������� bat-������, ������� ����� �������������� ���������� ��������� Makefile. 
��� ������ � ������� �������� ������������� ������������ [make v3.81](http://gnuwin32.sourceforge.net/packages/make.htm).
> make � �������� GnuWin32 ������ ����� ������ � ����� [nmkit](https://www.module.ru/mb7707/NeuroMatrix/nmkit.exe) .





## ������ � ������
������ ������� �������������� �������� �� ��������������� ����� � ��������:
```mak
\nmc-first-steps\Tutorial\Step01\make_emu6405> make 
```
���� 
```mak
\nmc-first-steps\Tutorial\Step01\make_emu6405> build.bat
```

������ ���������� �������������� ��������:
```mak
\nmc-first-steps\Tutorial\Step01\make_emu6405> make run
```
���� 
```mak
\nmc-first-steps\Tutorial\Step01\make_emu6405> emurun main.abs
```
> emurun �������  �� ������� ������ �������� �� ���� ���� �������� main().

## ������� 

������� ����������� ��������� ������� �������� � ������ �������� ���������� NM6405 � ������� ��������� emudbg �� ������� ������� NMSDK (legacy).  

1. ������� ������ 
```mak
\nmc-first-steps\Tutorial\Step01\make_emu6405> build.bat
```
2. ���������� dll - ��������� nm6405 � emudbg :
- ��������� emudbg ("c:\Program Files\Module\nmkit\nmsdk\bin\emudbg.exe")
- ������� "Edit\Preference"
- �� ������� "General" ���������� ������� "Preserve workspace"
- �� ������� "Target libraries" �������� nm6405emu.dll ("c:\Program Files\Module\nmkit\nmsdk\bin\nm6405emu.dll")
3. � ��������� "Target\Connect to..." ������� "NM6405 �������� ����������" , ����� "Connect"
4. ��������� � ��������e "Target\Load Program..." ����������� abs-���� (".\nmc-first-steps\Tutorial\Step01\make_emu6405\main.abs")  
5. ��������� ���� 
![Emudbg](/doc/emudbg.png?raw=true)





## ������������ 
�������� ����� ��������� � ����� */doc*  

��� ��������� �������� ����������� NeuroMatrix, � ����� ��� ���������� ���������������� ���������� ������������� ������������ ����������� nmcalculator �� ������������ [nmkit](https://www.module.ru/mb7707/NeuroMatrix/nmkit.exe)
![nmcalculator](/doc/nmcalc.png?raw=true)
<!-- ������������ �� ����������� NeuroMatrix � ���������������� ��������� � ����� */deps/dev-pack-master/nmsdk/doc* -->