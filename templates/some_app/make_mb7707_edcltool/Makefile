# BUILD AND RUN MAKEFILE
# This makefile builds simple nmc-application containing single cpp-file  
.SUFFIXES:


ifndef MB7707
$(warning*** WARNING: 'MB7707' environment variable is not defined! Board SDK might not have installed properly. )
endif 

ROOT= ../../..
include $(ROOT)/global.mk


INC_DIRS = -I"$(MB7707)/include" -I../Include
LIB_DIRS = -L"$(MB7707)/lib" 
LIBS     = libint_soc.lib libc05.lib cppnew05.lib mb7707load_pc_nm.lib 
TARGET   = main.abs
CFG      = mb7707brd.cfg
SRC_CPP  = $(wildcard $(addsuffix /*.cpp,..))
SRC_ASM  = $(wildcard $(addsuffix /*.asm,..))

VPATH    = $(subst -L,,$(LIB_DIRS)) $(NEURO)/lib

$(TARGET): $(SRC_CPP)  $(CFG)   Makefile
	nmcc -o$(TARGET) -m.main.map $(SRC_CPP) $(SRC_ASM) -soc -g -O0 $(INC_DIRS) $(LIB_DIRS) $(LIBS) -c$(CFG) -heap=16384 -heap1=16384 -heap2=16384 -heap3=16384
#                                                                                         [L00]:64kB   [L01]:64kB  [G00]:64kB   [G01]:64kB

run: $(TARGET)
	edcltool -f ./run.edcl -i $(MB7707_ETH)

clean:
	-$(OS_RM) -f *.abs *.elf .*

skip:
	@echo Compilation is skipped!
	

