TARGET = cv-alberto-oporto.pdf cv-alberto-oporto-en.pdf

default: $(TARGET)

# Rule to compile .tex files to .pdf
%.pdf: %.tex
	latexmk -pdf $<

clean:
	git clean -fdX

.PHONY: default clean
