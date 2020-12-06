TARGET      = resume

SOURCES     = $(shell find . -name "*.sty" -o -name "*.tex" -o -name "*.cls" -o -name "*.xtx")
IMAGES      = images/*
FONTS       = fonts/*

all: $(TARGET).pdf

$(TARGET).pdf: $(SOURCES) $(FONTS) $(IMAGES) $(TARGET).out
	xelatex $(TARGET).xtx

.PHONY = $(TARGET).out
$(TARGET).out:
	xelatex $(TARGET).xtx

clean:
	rm -rf *.aux *.log *.out *.pdf
