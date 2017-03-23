ifeq ($(OS),Windows_NT)
	
ROOT = ..
-include $(ROOT)/global.mk
-include proxy.mk
download:
	$(OS_WGET)  https://github.com/RC-MODULE/dev-kit/archive/master.zip

install: dev-kit-master.zip
	$(OS_UNZIP) dev-kit-master.zip
	$(MAKE) -C dev-kit-master nmsdk mc5103sdk mb7707sdk mc7601sdk nmcalculator

clean:
	-$(OS_RM) *.zip *.exe *.tgz *.gz
	-$(OS_RD) dev-kit-master mc5103sdk mc7601sdk mb7707sdk nmcalculator nmsdk

else
$(MAKECMDGOALS): 
	$(MAKE) -f Makefile.lnx $(MAKECMDGOALS)
endif
	