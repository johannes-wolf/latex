##
# LaTeX
#
# @file
# @version 0.1

all:
	lualatex -file-line-error -synctex=1 -interaction=nonstopmode handout-example.tex
	bibtex handout-example
	lualatex -file-line-error -synctex=1 -interaction=nonstopmode handout-example.tex
	lualatex -file-line-error -synctex=1 -interaction=nonstopmode handout-example.tex

clean:
	rm -f *.aux *.log *.toc *.lof *.bak *.loa *.lot *.bbl *.blg *.idx *.ilg *.ind *.dvi *.out *.brf *.thm *.toc *.thumbs.db *.literatur-template.tex *.synctex.gz *.bcf *.run.xml *-blx.bib

rebuild: clean all

# end
