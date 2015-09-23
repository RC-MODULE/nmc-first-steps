ROOT = ..
-include $(ROOT)/environment.mk
#-include $(ROOT)/proxy.mk
#http_proxy ?=http://username:password@proxy:80/

ifeq ($(OS),Windows_NT)
  SDK_MC5103_URL = http://www.module.ru/mb7707/NeuroMatrix/boards/mc5103_distrib_v_01_01_x32.zip
  SDK_MB7707_URL = http://www.module.ru/mb7707/NeuroMatrix/boards/mb7707_distrib_v_01_02_x32.zip
  SDK_MC7601_URL = http://www.module.ru/mb7707/NeuroMatrix/boards/mc7601_distrib_non_official.zip
  NMSDK_URL      = http://www.module.ru/mb7707/toolchains-neuromatrix/nmsdk306en_20150611.zip
  DOWNLOADS-SDK  = $(notdir $(SDK_MB7707_URL)) $(notdir $(SDK_MC5103_URL)) $(notdir $(SDK_MC7601_URL)) $(notdir $(NMSDK_URL))
install-sdk:  mc5103sdk mb7707sdk mc7601sdk nmsdk

else
  SDK_MC5103_URL = http://www.module.ru/mb7707/NeuroMatrix/boards/mc5103_distrib_v_01_01.tar.gz
  SDK_MB7707_URL = http://www.module.ru/mb7707/NeuroMatrix/boards/mb7707_distrib_v_01_00.tar.gz
  NMSDK_URL      = http://www.module.ru/mb7707/toolchains-neuromatrix/nmsdk.tar.gz
  DOWNLOADS-SDK  = $(notdir $(SDK_MB7707_URL)) $(notdir $(SDK_MC5103_URL))  $(notdir $(NMSDK_URL))
install-sdk:  mc5103sdk mb7707sdk nmsdk
  
endif



all: download install



DOWNLOADS      = $(DOWNLOADS-LIBS) $(DOWNLOADS-SDK)


install: install-sdk


#------------------------- package installation  --------------------



mc5103sdk: $(notdir $(SDK_MC5103_URL))
	-mkdir $(@)
	$(OS_TAR) $(<) $(OS_TODIR) $(@)
	
mb7707sdk: $(notdir $(SDK_MB7707_URL))
	-mkdir $(@)
	$(OS_TAR) $(<) $(OS_TODIR) $(@) 

mc7601sdk: $(notdir $(SDK_MC7601_URL))
	-mkdir $(@)
	$(OS_TAR) $(<) $(OS_TODIR) $(@) 

nmsdk: $(notdir $(NMSDK_URL))
	-mkdir $(@)
	$(OS_TAR) $(<) $(OS_TODIR) $(@)

#------------------------- download of depended URLs from www.module.ru --------------------


download: $(DOWNLOADS)

$(DOWNLOADS): 
	$(OS_WGET) 	\
		$(SDK_MC5103_URL) \
		$(SDK_MB7707_URL) \
		$(SDK_MC7601_URL) \
		$(NMSDK_URL)      \

	


#------------------------------------------------------------------------------------	
clean:
	-$(OS_RM) *.zip *.exe
	-$(OS_RD) mb7707sdk mc5103sdk mc7601sdk nmsdk
	