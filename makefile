CC = gcc

CFILES = $(wildcard src/*.c)

EXE = main.exe

LFLAGS = -I ./include

$(EXE): $(CFILES)
	@echo Compiling $(CFILES)...
	@$(CC) -o $@ $^ $(LFLAGS)
	@echo Done!

#.PHONY: $(EXE)

run: $(EXE)
	@cd ..
	@echo
	@echo Executing program...
	@echo _____________________________
	@echo
	@$^
	@echo
	@echo _____________________________
	@echo Finished!