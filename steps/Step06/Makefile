##############################################################################
#
# RC Module 2015
#
# Genarates makefile, builds project and runs abs-file for specified $(PLATFORMS) 
#
#
# USAGE:
# make configure          : generates projects for all $(PLATFORMS) platforms
# make build              : builds projects for all $(PLATFORMS) platforms
# make clean              : clean up in all make_$(PLATFORMS)
# make del                : del  all make_$(PLATFORMS) folders
# make run                : execute abs-files in all make_$(PLATFORMS) 
# make                    : by defult generates projects and builds all apps in folder for all $(PLATFORMS)
#
# Used global variables:
# TOP_LEVEL :points to root directory 
# TEMPLATES :points to automake template folder 
# PLATFORMS :set of available platforms: win32 mc5103 mb7707 emu ...
#
# Used global variables: TOP_LEVEL,TEMPLATES,PLATFORMS should be exported from parent Makefile or set manualy in config.mk 
# TOP_LEVEL :points to root directory 
# TEMPLATES :points to automake template folder 
# PLATFORMS :set of available platforms: win32 mc5103 mb7707 emu ...

.SUFFIXES:
#TOP_LEVEL?=
#ifeq "$(TOP_LEVEL)" ""
#	TOP_LEVEL:=$(realpath ../..)
#	include $(TOP_LEVEL)/steps/config.mk
#endif


ROOT = ../..
include $(ROOT)/environment.mk

all: configure
	$(foreach platform,$(PLATFORMS), -$(MAKE) -C./make_$(platform)					$(newline))

clean: configure
	$(foreach platform,$(PLATFORMS), -$(MAKE) -C./make_$(platform) clean 			$(newline))

run: configure
	$(foreach platform,$(PLATFORMS), -$(MAKE) -C./make_$(platform) run 				$(newline))

configure: $(addsuffix /Makefile,$(addprefix make_,$(PLATFORMS)))
	
del:
	-rm -f -r make_*


########### Produces automake rules for all platforms like:
# 
# make_mc5103:
#   mkdir make_mc5103
#	cp $(TEMPLATES)/make_mc5103/*.* ./make_mc5103
#

define automake_platform

make_$(1)/Makefile: make_$(1)
	cp "$(ROOT)/templates/some_app/make_$(1)" ./ -r

make_$(1): 
	mkdir make_$(1)
	
endef

$(foreach platform, $(PLATFORMS),$(eval $(call automake_platform,$(platform))))
#######################################################################################

define newline


endef
