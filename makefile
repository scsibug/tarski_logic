# set latexfile to the name of the main file without the .tex
latexfile = introToLogicSol

TEX = pdflatex

.SUFFIXES: .pdf

# reruns latex if needed.  to get rid of this capability, delete the
# three lines after the rule.
# idea from http://ctan.unsw.edu.au/help/uk-tex-faq/Makefile
.tex.pdf :
	while ($(TEX) $< ; \
	grep -q "Rerun to get cross" $*.log ) do true ; \
	done

pdf : $(latexfile).pdf

clean :
	rm -f $(latexfile).pdf *.log *.aux *.out *.toc
