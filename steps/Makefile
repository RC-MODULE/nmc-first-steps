###########################################################################
#
# RC Module 2015 (C)
#
# 
# Top-level makefile calls makefiles in subfolders specified in $(DEMOS)
#
# USAGE:
# make configure          : generates projects in all $(DEMOS) folders  for all $(PLATFORMS) platforms
# make build              : builds    projects in all $(DEMOS) folders  for all $(PLATFORMS) platforms
# make clean              : clean up           in all $(DEMOS) folders  for all $(PLATFORMS) platforms
# make del                : delete projects    in all $(DEMOS) folders  for all $(PLATFORMS) platforms
# make run                : execute abs-files  in all $(DEMOS) folders  for all $(PLATFORMS) platforms
# make                    : = make configure + make build 
#
# Used global variables:
# TOP_LEVEL :points to root directory 
# TEMPLATES :points to automake template folder 
# PLATFORMS :set of available platforms: win32 mc5103 mb7707 emu ...

.SUFFIXES:


TOP_LEVEL:=$(realpath ..)
ROOT = ..
include $(ROOT)/environment.mk

DEMOS=$(subst /,,$(wildcard Step*/))
#DEMOS =  Step01 Step02
	
all: configure build 

build:
	$(foreach demo,$(DEMOS), $(MAKE) -C./$(demo) 				$(newline))

run: $(addsuffix /Makefile,$(DEMOS))
	$(foreach demo,$(DEMOS), $(MAKE) -C./$(demo) run 			$(newline))

configure: $(addsuffix /Makefile,$(DEMOS))
	$(foreach demo,$(DEMOS), $(MAKE) -C./$(demo) configure 		$(newline))

clean: $(addsuffix /Makefile,$(DEMOS))
	$(foreach demo,$(DEMOS), $(MAKE) -C./$(demo) clean 			$(newline))

del: $(addsuffix /Makefile,$(DEMOS))
	$(foreach demo,$(DEMOS), $(MAKE) -C./$(demo) del 			$(newline))
	$(foreach demo,$(DEMOS), cd $(demo) && $(OS_RM) Makefile 	$(newline))
	
	
Step01/Makefile:
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step02/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)

Step03/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step03a/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step04/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step04a/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step05/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step06/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step06a/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step06b/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step07/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step08/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step09/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step10/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step11/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step12/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step13/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step13a/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step14/Makefile: 
	cp "$(ROOT)/templates/some_app/Makefile" $(@)

	
define newline


endef	
	
