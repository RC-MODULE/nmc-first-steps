# BUILD AND RUN MAKEFILE
# This makefile builds simple nmc-application containing single cpp-file  
.SUFFIXES:


ROOT     = ../../../
include $(ROOT)/environment.mk


INC_DIRS = -I"$(MC7601)/include" -I../Include
LIB_DIRS = -L"$(MC7601)/lib" -L$(NEURO)/lib
LIBS     = mc7601_ll_nm.lib libint_soc.lib  
TARGET   = main.abs
CFG      = mc7601brd.cfg
SRC_CPP  = $(wildcard $(addsuffix /*.cpp,..))
SRC_ASM  = $(wildcard $(addsuffix /*.asm,..))


$(TARGET): $(SRC_CPP) $(SRC_ASM) $(CFG) Makefile
	nmcc -o$(TARGET) -m.main.map $(SRC_CPP) $(SRC_ASM) -soc -g -O0 $(INC_DIRS) $(LIB_DIRS) $(LIBS) -c$(CFG) -heap=16384 -heap1=16384 -heap2=16384 -heap3=16384
#                                                                                         [L00]:64kB   [L01]:64kB  [G00]:64kB   [G01]:64kB

run:
	mc7601run $(TARGET)

clean:
	-$(OS_RM) -f *.abs *.elf .*

	

