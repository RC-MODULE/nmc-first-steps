#ROOT=../../../../..
HAL = $(ROOT)

# BUILD AND RUN MAKEFILE
# This makefile builds simple nmc-application containing single cpp-file  
# Rule 'run' executes the application on MC12101 board 

-include $(ROOT)/global.mk
-include $(ROOT)/clean.mk

.SUFFIXES:

ifndef MC12101
$(warning *** WARNING: 'MC12101' environment variable is not defined! Board SDK might not have installed correctly. )
endif

PROJECT  = main
TARGET   = $(PROJECT).abs
MAP      = $(PROJECT).map
CC       = nmcc
AS       = asm
CC_FLAGS = -nmc4_float -O2 -nm2ms 
AS_FLAGS = -nmc4 -nm2ms  $(INC_DIRS) -split_sir

LIBS     = mc12101lib_nm.lib libc4.lib libc4f.lib nmpp-nmc4.lib hal-mc12101.lib cppnew4.lib libint_6407.lib
CFG      = mc12101brd-nmpu0.cfg
HEAPS 	 = -heap=118384 -heap1=18384 -heap2=18384 -heap3=25000

INC_DIRS = -I"$(NMPP)/include" -I"$(HAL)/include"
LIB_DIRS = -L"$(NEURO)/lib" -L"$(MC12101)/lib" -L"$(NMPP)/lib" -L"$(HAL)/lib"
SRC_DIRS = ..

SRC_CPP  = $(wildcard $(addsuffix /*.cpp,$(SRC_DIRS)))
SRC_ASM  = $(wildcard $(addsuffix /*.asm,$(SRC_DIRS)))
SRC_C    = $(wildcard $(addsuffix /*.c,$(SRC_DIRS)))
SRC_ALL  = $(SRC_CPP) $(SRC_ASM) $(SRC_C)


.DEFAULT_GOAL := default

default $(TARGET): $(SRC_ALL) $(CFG) Makefile
	$(CC) -o$(TARGET) -m$(MAP) -c$(CFG) $(SRC_ALL) $(INC_DIRS) $(LIB_DIRS) $(LIBS) $(HEAPS) $(CC_FLAGS)

run: $(TARGET)
	mc12101run $(TARGET)

reset:
	mc12101reset
	
vs2015:
	premake5 vs2015
	
vs2008:
	premake5 vs2008	