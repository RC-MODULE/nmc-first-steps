PLATFORMS = mc5103 emu6405 mb7707_libload 
#mc7601
#PLATFORMS ????= mc5103 emu6405 mc7601 mb7707_libload


export MC5103    ?= $(ROOT)/deps/mc5103sdk
export MC7601    ?= $(ROOT)/deps/mc7601sdk
export MB7707    ?= $(ROOT)/deps/mb7707sdk
export EDCLTOOL  = $(ROOT)/deps/edcltool-win32

ifeq ($(OS),Windows_NT)
   export NEURO     ?= $(ROOT)/deps/nmsdk
   
   SHELL    = cmd
   OS_MV    = cmd /c move /Y
   OS_RM    = cmd /c del /Q
   OS_RD    = cmd /c rd /Q /S 
   OS_CP    = cp
   OS_WHICH = where
   GNU_WGET = wget -nc --no-check-certificate --content-disposition 
   PS_WGET  = powershell  -ExecutionPolicy Bypass -file $(ROOT)\deps\wget.ps1 
   OS_WGET  = $(GNU_WGET)
#  OS_UNZIP = 7za
   PS_UNZIP = powershell  -ExecutionPolicy Bypass -file unzip.ps1 
   OS_UNZIP = unzip -u -o -q 
   OS_TODIR = -d
   OS_UNPACK= $(OS_UNZIP)
   PATH_DEP = 	$(realpath $(NEURO)/bin);\
				$(realpath $(MC5103)/bin);\
				$(realpath $(MB7707)/bin);\
				$(realpath $(MC7601)/bin);\
				$(realpath $(EDCLTOOL));
				
  export PATH    := $(PATH_DEP);$(PATH);
  
  MB7707_MAC ?= 1A-2B-3C-4D-5E-6F
  MB7707_ETH ?= 2
else
  export NEURO     = $(ROOT)/deps/module-nmc
  define OS_PATH
	$(1)
  endef 
  OS_RM    = rm -f -r
  OS_RD    = rm -d -r
  OS_WGET  = wget -nc --no-check-certificate --content-disposition 
  OS_UNZIP = unzip -u -o -q 
  OS_UNPACK= tar xvzf 
  OS_TODIR = -C
  export PATH    := $(NEURO)/bin-lnx:$(MC5103)/bin:$(MB7707)/bin:$(PATH)
  LD_LIBRARY_PATH = $(MC5103)/bin:$(MB7707)/bin
  MB7707_MAC = eth0
endif


define newline


endef	

 