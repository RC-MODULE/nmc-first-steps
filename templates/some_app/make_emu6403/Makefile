# BUILD AND RUN MAKEFILE
# This makefile builds simple nmc-application 
.SUFFIXES:
ROOT     = ../../..
include $(ROOT)/global.mk

INC_DIRS = -I../Include
LIB_DIRS = -L"$(NEURO)/lib"
LIBS     = libc.lib
TARGET   = main.abs
CFG      = emu6403.cfg
SRC_CPP  = $(wildcard $(addsuffix /*.cpp,..))
SRC_ASM  = $(wildcard $(addsuffix /*.asm,..))

$(TARGET): $(SRC_CPP) $(SRC_ASM) $(CFG) Makefile
	nmcc -o$(TARGET) $(SRC_CPP) $(SRC_ASM) -6403 -g -m -O0 $(INC_DIRS) $(LIB_DIRS) $(LIBS) -c$(CFG) 
	
run: $(TARGET)
	emurun $(TARGET) 

clean:
	-$(OS_RM) -f *.abs *.elf *.map .* 


