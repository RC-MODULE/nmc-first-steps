ROOT = ..
-include $(ROOT)/global.mk

DEVPACK_URL      = https://github.com/RC-MODULE/dev-pack/archive/master.zip

standalone: install-nmc install-gnu

install-nmc: dev-pack-master
	$(MAKE) -C dev-pack-master install-nmc 

install-gnu: dev-pack-master
	$(MAKE) -C dev-pack-master install-gnu
	
dev-pack-master:
	$(OS_WGET) $(DEVPACK_URL)
	$(OS_MV) master.zip devpack.zip
	$(OS_UNPACK) devpack.zip 



#------------------------------------------------------------------------------------	
clean:
	-$(OS_RM) *.zip *.exe
	-$(OS_RD) dev-pack-master
	