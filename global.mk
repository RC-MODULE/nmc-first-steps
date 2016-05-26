PLATFORMS = mc5103 emu6405 mb7707_libload 
#PLATFORMS = mc5103 emu6405 mc7601 mb7707_libload
DEVPACK	 ?= $(realpath $(ROOT)/deps/dev-pack)

export NEURO    ?= $(DEVPACK)/nmsdk
export VSHELL32 ?= $(DEVPACK)/vshell32
MC5103    = $(DEVPACK)/mc5103sdk
MC7601    = $(DEVPACK)/mc7601sdk
MB7707    = $(DEVPACK)/mb7707sdk
GNUWIN32  = $(DEVPACK)/gnuwin32/bin
EDCLTOOL  = $(DEVPACK)/edcltool-win32

ifeq ($(OS),Windows_NT)
   SHELL    = cmd
   OS_FIND  = $(call BACKSLASH,$(GNUWIN32)/find)
   OS_DIFF  = $(call BACKSLASH,$(GNUWIN32)/diff)
   OS_SCP   = $(call BACKSLASH,$(GNUWIN32)/pscp)
   OS_CAT   = $(call BACKSLASH,$(GNUWIN32)/cat)
   OS_MV    = cmd /c move /Y
   OS_RM    = cmd /c del /Q
#  OS_RM    = rm -f -r
   OS_RD    = cmd /c rd /Q /S 
#  OS_CP    = $(call BACKSLASH,$(GNUWIN32)/cp)
   OS_CP    = cp
   OS_WHICH =$(windir)/system32/where
#  OS_WGET  = wget
   OS_WGET  = powershell  -ExecutionPolicy Bypass -file $(NMPP)\deps\wget.ps1 
#  OS_UNZIP = unzip 
   OS_UNZIP = powershell  -ExecutionPolicy Bypass -file $(NMPP)\deps\unzip.ps1 
   OS_TODIR = -d
   OS_UNPACK= $(OS_UNZIP)
   PATH_DEP = 	$(realpath $(aGNUWIN32));\
				$(realpath $(NEURO)/bin);\
				$(realpath $(MC5103)/bin);\
				$(realpath $(MB7707)/bin);\
				$(realpath $(MC7601)/bin);\
				$(realpath $(VSHELL32)/bin);\
				$(realpath $(EDCLTOOL));\
				$(realpath $(DEVPACK)/gnumake/bin)
  
  export PATH    := $(PATH_DEP);$(PATH);
  
  #$(info $(PATH))
  
  define BACKSLASH
	$(subst /,\,$(1))
  endef

  MB7707_MAC ?= 1A-2B-3C-4D-5E-6F
  MB7707_ETH = 
else
  ARM_CC   = arm-module-linux-gnueabi-gcc 
  define OS_PATH
	$(1)
  endef 
  OS_DIFF  = diff   
  OS_SCP   = scp
  OS_RM    = rm -f -r
  OS_RD    = rm -d -r
  OS_WHICH = which
  OS_WGET  = wget  
  OS_UNZIP = unzip
  OS_UNPACK= tar xvzf 
  OS_TODIR = -C
  PATH    := $(NEURO)/bin:$(MC5103)/bin:$(MB7707)/bin:$(PATH)
  LD_LIBRARY_PATH = $(MC5103)/bin:$(MB7707)/bin
  MB7707_MAC = eth0
endif


define newline


endef	

 