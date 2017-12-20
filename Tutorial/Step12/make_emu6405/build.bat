@SETLOCAL ENABLEDELAYEDEXPANSION
@SET sources=
@FOR %%i IN ("..\*.asm") DO SET sources=!sources! %%i
@FOR %%i IN ("..\*.cpp") DO SET sources=!sources! %%i


nmcc -omain.abs -m.main.map  !sources! -6405 -g -O0 -I../Include -L"%NEURO%/lib" libint05.lib libc05.lib -cemu6405.cfg -heap=16384 -heap1=16384 -heap2=16384 -heap3=16384

@ENDLOCAL

