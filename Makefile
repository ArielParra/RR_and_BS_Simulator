#make es un programa de GNU para compilar programas de c/c++
#con todos sus archivos requeridos con un solo comando "make" 
#Esta implementacion permite usar el mismo archivo Makefile tanto
#En Windows como en sistemas basados en Unix como Linux y Mac OS X

ifdef OS  #Detection de Windows 
	CC := g++.exe
	FLAGS := -lwinmm
	RM := del /Q
	FixPath = $(subst /,\,$1)
	UNAME := Windows
	EXT := .exe
else  	  #*NIX usando GNU make
	CC := g++
	FLAGS := -lncurses
	RM := rm -f 
	FixPath = $1
	UNAME = $(shell uname)
	EXT :=
endif

#CFLAGS := -O2 -s -w -std=c++17
CFLAGS := -O3 -s -w -std=c++17 #optimizacion O3

Nombre := BR_$(UNAME)

$(Nombre): src/main.cpp src/compatibilidad.h src/FuncionesAuxiliares.h src/FuncionesBuddyRound.h src/menus.cpp
	$(CC) -o $(call FixPath,$(Nombre)) $< $(FLAGS) $(CFLAGS)

clean:
	$(RM) $(call FixPath,$(Nombre)$(EXT))

