@SETLOCAL ENABLEDELAYEDEXPANSION
@SET sources=
@FOR %%i IN ("..\*.asm") DO SET sources=!sources! %%i
@FOR %%i IN ("..\*.cpp") DO SET sources=!sources! %%i

nmcc !sources! libc.lib -6403 -m  -g -cemu6403.cfg -omain.abs

@ENDLOCAL

