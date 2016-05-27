###########################################################################
#
# RC Module 2015 (C)
#
# 
# Top-level makefile calls makefiles in subfolders specified in $(STEPS)
#
# USAGE:
# make configure          : generates projects in all $(STEPS) folders  for all $(PLATFORMS) platforms
# make build              : builds    projects in all $(STEPS) folders  for all $(PLATFORMS) platforms
# make clean              : clean up           in all $(STEPS) folders  for all $(PLATFORMS) platforms
# make del                : delete projects    in all $(STEPS) folders  for all $(PLATFORMS) platforms
# make run                : execute abs-files  in all $(STEPS) folders  for all $(PLATFORMS) platforms
# make                    : = make configure + make build 
#
# Used global variables:
# TOP_LEVEL :points to root directory 
# TEMPLATES :points to automake template folder 
# PLATFORMS :set of available platforms: win32 mc5103 mb7707 emu ...

.SUFFIXES:


ROOT = ..
include $(ROOT)/global.mk

STEPS=$(subst /,,$(wildcard Step*/))
#STEPS =  Step01 Step02
	
all: configure build 

build:
	$(foreach step,$(STEPS), $(MAKE) -C./$(step) 				$(newline))

run: $(addsuffix /Makefile,$(STEPS))
	$(foreach step,$(STEPS), $(MAKE) -C./$(step) run 			$(newline))

configure: $(addsuffix /Makefile,$(STEPS))
	$(foreach step,$(STEPS), $(MAKE) -C./$(step) configure 		$(newline))

clean: $(addsuffix /Makefile,$(STEPS))
	$(foreach step,$(STEPS), $(MAKE) -C./$(step) clean 			$(newline))

kill: $(addsuffix /Makefile,$(STEPS))
	$(foreach step,$(STEPS), $(MAKE) -C./$(step) kill 			$(newline))
	$(foreach step,$(STEPS), cd $(step) && $(OS_RM) Makefile 	$(newline))
	
	
Step01/Makefile:
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step02/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)

Step03/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step03a/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step04/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step04a/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step05/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step06/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step06a/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step06b/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step07/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step08/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step09/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step10/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step11/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step12/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step13/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step13a/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)
	
Step14/Makefile: 
	$(OS_CP) "$(ROOT)/templates/some_app/Makefile" $(@)

	
define newline


endef	
	
