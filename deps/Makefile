ROOT = ..
-include $(ROOT)/global.mk
-include proxy.mk


DEVPACK_URL      = https://github.com/RC-MODULE/dev-pack/archive/master.zip

$(eval OUT=$(shell  wget ))
ifneq ($(OUT),)
OS_WGET:= wget -nc --no-check-certificate --content-disposition 
else 
OS_WGET:= powershell  -ExecutionPolicy Bypass -file wget.ps1
endif



standalone: install-nmc install-gnu

install-nmc: dev-pack-master
	$(MAKE) -C dev-pack-master install-nmc 

install-gnu: dev-pack-master
	$(MAKE) -C dev-pack-master install-gnu
	
dev-pack-master:
	$(OS_WGET) $(DEVPACK_URL)
	-$(OS_MV) master.zip dev-pack-master.zip
	$(OS_UNPACK) dev-pack-master.zip 



#------------------------------------------------------------------------------------	
clean:
	-$(OS_RM) *.zip *.exe
	-$(OS_RD) dev-pack-master
	