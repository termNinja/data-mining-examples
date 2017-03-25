# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
# Nemanja Micovic <nmicovic@outlook.com> 
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
PROJECT = oop.uvod
OUTPUT = $(PROJECT).pdf
SRC = $(PROJECT).tex
BIB = $(PROJECT).bib
LATEX = xelatex -shell-escape
BIBTEX = bibtex
FILES = $(SRC) $(BIB) $(PROJECT).pdf Makefile
JUNK = *.aux *.log *.out *.toc *.pdf *.blg *.bbl $(OUTPUT)
CLOC = $(shell type -p cloc || echo wc -l)
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
$(OUTPUT): $(SRC)
	$(LATEX) $<
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=

# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
.PHONY: clean dist author

clean:
	@rm -rf *~ $(JUNK)
	@clear
	@echo "Workspace cleared!"

dist:
	@make
	@clear
	@tar -cvf $(PROJECT).tar $(FILES)
	@make clean
	@echo "Project packed up."

author:
	@clear
	@echo "Created by: Nemanja Micovic"

# Count lines of code.
lines:
	$(CLOC) *		
# =-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=
