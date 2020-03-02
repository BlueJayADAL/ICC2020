PROJECT= aceta
TEX=latex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
		$(BUILDTEX)
		$(BIBTEX) $(PROJECT)
		$(BUILDTEX)
		$(BUILDTEX)
		dvipdf $(PROJECT).dvi
		#open -a preview $(PROJECT).pdf

clean-all:
		rm -f ./fig/*eps-converted-to.pdf *.dvi *.log *.bak *.aux *.bbl *.blg *.idx *.ps *.eps *.pdf *.toc *.out *~

clean:
		rm -f *.log *.bak *.aux *.bbl *.blg *.idx *.toc *.out *~
