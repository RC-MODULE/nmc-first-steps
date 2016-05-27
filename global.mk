PLATFORMS = mc5103 emu6405 mb7707_libload mc7601
#PLATFORMS = mc5103 emu6405 mc7601 mb7707_libload
DEVPACK	 = $(realpath $(ROOT)/deps/dev-pack-master)

export NEURO    ?= $(DEVPACK)/nmsdk
export MC5103    = $(DEVPACK)/mc5103sdk
export MC7601    = $(DEVPACK)/mc7601sdk
export MB7707    = $(DEVPACK)/mb7707sdk
export GNUWIN32  = $(DEVPACK)/gnuwin32
export EDCLTOOL  = $(DEVPACK)/edcltool-win32

$(info DEVPACK=$(DEVPACK))

ifeq ($(OS),Windows_NT)
   SHELL    = cmd
   OS_MV    = cmd /c move /Y
   OS_RM    = cmd /c del /Q
#  OS_RM    = rm -f -r
   OS_RD    = cmd /c rd /Q /S 
   OS_CP    = cp
   OS_WHICH = where
#  OS_WGET  = wget
   OS_WGET  = powershell  -ExecutionPolicy Bypass -file $(ROOT)\deps\wget.ps1 
#  OS_UNZIP = unzip 
   OS_UNZIP = powershell  -ExecutionPolicy Bypass -file $(ROOT)\deps\unzip.ps1 
   OS_TODIR = -d
   OS_UNPACK= $(OS_UNZIP)
   PATH_DEP = 	$(realpath $(GNUWIN32)/bin);\
				$(realpath $(NEURO)/bin);\
				$(realpath $(MC5103)/bin);\
				$(realpath $(MB7707)/bin);\
				$(realpath $(MC7601)/bin);\
				$(realpath $(EDCLTOOL));\
				$(realpath $(DEVPACK)/gnumake/bin)
  
  export PATH    := $(PATH_DEP);$(PATH);
  
  define BACKSLASH
	$(subst /,\,$(1))
  endef

  MB7707_MAC ?= 1A-2B-3C-4D-5E-6F
  MB7707_ETH ?= 2
else
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

 