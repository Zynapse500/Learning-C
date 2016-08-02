CC = gcc

CFILES = $(wildcard src/*.c)

EXE = main.exe

$(EXE): $(CFILES)
	@echo Compiling $(CFILES)...
	@$(CC) -o $@ $^
	@echo Done!

#.PHONY: $(EXE)

clean: $(EXE)
	@cd ..
	@echo
	@echo Executing program...
	@echo _____________________________
	@echo
	@$^
	@echo
	@echo _____________________________
	@echo Finished!