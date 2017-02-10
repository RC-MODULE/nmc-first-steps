ifeq ($(OS),Windows_NT)
	

ROOT = ..
-include $(ROOT)/global.mk
-include proxy.mk

#NMSDK_URL          = http://www.module.ru/mb7707/toolchains-neuromatrix/nmsdk_2016-04-19_non_official.zip
NMSDK_URL          = http://www.module.ru/mb7707/toolchains-neuromatrix/nmsdk307en_20161011.zip
NMCALC_URL         = http://www.module.ru/mb7707/NeuroMatrix/nmcalculator.zip 
NM_IO_URL          = http://www.module.ru/mb7707/NeuroMatrix/nm_io.zip
# Pure NMC Board support:
SDK_MC5103_URL     = http://www.module.ru/mb7707/NeuroMatrix/boards/mc5103_distrib_v_01_01_with_printf_non_official.zip
SDK_MC7601_URL     = http://www.module.ru/mb7707/NeuroMatrix/boards/mc7601_distrib_non_official.zip
SDK_MB7707_URL     = http://www.module.ru/mb7707/NeuroMatrix/boards/mb7707_distrib_x32.zip
WINPCAP_URL        = https://www.winpcap.org/install/bin/WinPcap_4_1_3.exe
# ARM-NMC MB7707 support :
EDCLTOOL_URL       = http://www.module.ru/mb7707/edcltool-bin/edcltool-20042015-win32.tgz
  
NMC_URLS = \
	$(SDK_MC5103_URL) \
	$(SDK_MC7601_URL) \
	$(SDK_MB7707_URL) \
	$(NMSDK_URL)      \
	$(WINPCAP_URL)	\
	$(EDCLTOOL_URL)	\
	$(NMCALC_URL)
nmsdk:
	$(OS_WGET)  $(NMSDK_URL) 
	$(OS_UNZIP) $(notdir $(NMSDK_URL)) -d nmsdk

mc5103sdk:
	$(OS_WGET)  $(SDK_MC5103_URL) 
	$(OS_UNZIP) $(notdir $(SDK_MC5103_URL)) -d mc5103sdk

mc7601sdk:
	$(OS_WGET)  $(SDK_MC7601_URL) 
	$(OS_UNZIP) $(notdir $(SDK_MC7601_URL)) -d mc7601sdk

mb7707sdk:
	$(OS_WGET)  $(SDK_MB7707_URL) 
	$(OS_WGET)  $(WINPCAP_URL)
	$(OS_WGET)  $(EDCLTOOL_URL)
	$(OS_UNZIP) $(notdir $(SDK_MB7707_URL)) -d mb7707sdk

nmcalculator:
	$(OS_WGET)  $(NMCALC_URL) 
	$(OS_UNZIP) $(notdir $(NMCALC_URL))
	


	
#download: 
	$(OS_WGET)  $(NMC_URLS)
	
#install: mc5103sdk mc7601sdk mb7707sdk nmsdk nmcalculator
download:
	$(OS_WGET)  https://github.com/RC-MODULE/dev-pack/archive/master.zip

install: dev-pack-master.zip
	$(OS_UNZIP) dev-pack-master.zip
	$(MAKE) -C dev-pack-master install-nmc
	

#------------------------------------------------------------------------------------	
clean:
	-$(OS_RM) *.zip *.exe *.tgz *.gz
	-$(OS_RD) mc5103sdk mc7601sdk mb7707sdk nmcalculator nmsdk

else
$(MAKECMDGOALS): 
	$(MAKE) -f Makefile.lnx $(MAKECMDGOALS)
endif
	