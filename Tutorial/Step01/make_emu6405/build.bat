@SETLOCAL ENABLEDELAYEDEXPANSION
@SET sources=
@FOR %%i IN ("..\*.asm") DO SET sources=!sources! %%i
@FOR %%i IN ("..\*.cpp") DO SET sources=!sources! %%i

nmcc -omain.abs  -m  !sources! -6405 -g libc05.lib -cemu6405.cfg 

@ENDLOCAL

