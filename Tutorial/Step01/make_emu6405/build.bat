@SETLOCAL ENABLEDELAYEDEXPANSION
@SET sources=
@FOR %%i IN ("..\*.asm") DO SET sources=!sources! %%i
@FOR %%i IN ("..\*.cpp") DO SET sources=!sources! %%i

nmcc !sources! libc05.lib -6405 -m -g -cemu6405.cfg -omain.abs   

@ENDLOCAL

