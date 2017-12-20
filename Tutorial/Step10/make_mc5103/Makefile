# BUILD AND RUN MAKEFILE
# This makefile builds simple nmc-application containing single cpp-file  
.SUFFIXES:

ROOT     = ../../..
include $(ROOT)/global.mk

INC_DIRS = -I"$(MC5103)/include" -I../Include
LIB_DIRS = -L"$(MC5103)/lib" -L"$(NEURO)/lib"
LIBS     = libint05.lib  mc5103lib.lib libc05.lib
#                         ^------- Important! it goes first before libc05.lib
TARGET   = main.abs
CFG      = mc5103brd.cfg
SRC_CPP  = $(wildcard $(addsuffix /*.cpp,..))
SRC_ASM  = $(wildcard $(addsuffix /*.asm,..))


$(TARGET): $(SRC_CPP) $(SRC_ASM) $(CFG) Makefile
	nmcc -o$(TARGET) -m.main.map $(SRC_CPP) $(SRC_ASM) -6405 -g -O0 $(INC_DIRS) $(LIB_DIRS) $(LIBS) -c$(CFG) -heap=16384 -heap1=16384 -heap2=16384 -heap3=16384

run:  $(TARGET) 
	mc5103run $(TARGET)

clean:
	-$(OS_RM) -f *.abs *.elf .*

	

