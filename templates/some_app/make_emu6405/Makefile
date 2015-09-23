# BUILD AND RUN MAKEFILE
# This makefile builds simple nmc-application containing single cpp-file  
.SUFFIXES:
ROOT     = ../../../
include $(ROOT)/environment.mk

INC_DIRS = -I../Include
LIB_DIRS = 
LIBS     = libint05.lib libc05.lib
TARGET   = main.abs
CFG      = emu6405.cfg
SRC_CPP  = $(wildcard $(addsuffix /*.cpp,..))
SRC_ASM  = $(wildcard $(addsuffix /*.asm,..))



$(TARGET): $(SRC_CPP) $(SRC_ASM) $(CFG) Makefile
	nmcc -o$(TARGET) -m.main.map $(SRC_CPP) $(SRC_ASM) -6405 -g -O0 $(INC_DIRS) $(LIB_DIRS) $(LIBS) -c$(CFG) -heap=16384 -heap1=16384 -heap2=16384 -heap3=16384
#                                                                                                                  [L00]:64kB   [L01]:64kB  [G00]:64kB   [G01]:64kB

run: $(TARGET)
	nm6405emurun ./$(TARGET) 

clean:
	-$(OS_RM) -f *.abs *.elf .*


