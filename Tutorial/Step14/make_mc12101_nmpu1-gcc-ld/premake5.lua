#!lua

-- A solution contains projects, and defines the available configurations
solution "test_mc12101"
	configurations { "Debug", "Release" }
	project "test_mc12101"
      kind "Makefile"
      files { "../*.cpp", "*.cfg", "Makefile" }
	  includedirs {"$(NMPP)/include","$(HAL)/include"}
	  configuration "Debug"
		   buildcommands {"make DEBUG=y -f Makefile"}
		   rebuildcommands {"make -B DEBUG=y -f Makefile"}
		   cleancommands {"make clean"}
		   
	  configuration "Release"
		   buildcommands {"make -f Makefile"}
		   rebuildcommands {"make -B -f Makefile"}
		   cleancommands {"make clean"}		   
		   
		  