ROOT = ..
-include $(ROOT)/global.mk
-include proxy.mk

DEVPACK_URL     = https://github.com/RC-MODULE/dev-pack/archive/master.zip
WGET_BIN_URL    = http://downloads.sourceforge.net/project/gnuwin32/wget/1.11.4-1/wget-1.11.4-1-bin.zip
WGET_DEP_URL    = http://downloads.sourceforge.net/project/gnuwin32/wget/1.11.4-1/wget-1.11.4-1-dep.zip
ZIP7_URL        = http://www.7-zip.org/a/7za920.zip

  
$(eval OUT=$(shell  wget ))
ifneq ($(OUT),)
DOWNLOAD:= $(GNU_WGET)
else 
DOWNLOAD:= $(PS_WGET)
NEED_WGET:= dev-pack-master/gnuwin32/bin/wget.exe
endif


$(info [DOWNLOADER]= $(DOWNLOAD))
#$(info [GNU_WGET]= $(GNU_WGET))
#$(info [PS_WGET]= $(PS_WGET))
#$(info [NEED_WGET]= $(NEED_WGET))

standalone: install-nmc install-gnu

install-nmc: dev-pack-master/Makefile
	$(MAKE) -C dev-pack-master install-nmc 

install-gnu: dev-pack-master/Makefile 
	$(MAKE) -C dev-pack-master install-gnu

dev-pack-master/Makefile: $(NEED_WGET)
	$(GNU_WGET) $(DEVPACK_URL)
	$(OS_UNZIP) dev-pack-master.zip 

install-wget: $(NEED_WGET)
	
dev-pack-master/gnuwin32/bin/wget.exe:
	$(DOWNLOAD)  $(WGET_BIN_URL) $(WGET_DEP_URL)
	-mkdir dev-pack-master\gnuwin32
	$(PS_UNZIP) $(notdir $(WGET_BIN_URL)) -d dev-pack-master\gnuwin32
	$(PS_UNZIP) $(notdir $(WGET_DEP_URL)) -d dev-pack-master\gnuwin32

	 
	
	 
#------------------------------------------------------------------------------------	
clean:
	-$(OS_RM) *.zip *.exe
	-$(OS_RD) dev-pack-master
	