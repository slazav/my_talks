# Following variables should be defined:
#
# * PICS  -- List of pictures (without extension).
#            Pictures are *.fig files in `pics/` folder.
# * TEXTS -- list of tests to compile (without extension).
#            Texts are tex-files

##################################
PICS_T  = ${PICS:%=full_%.pdf}
pic/%.png: pics/%.fig
	fig2dev -Lpng -j -m3.75 $< $@
pics/%.eps: pics/%.fig
	fig2dev -Lpstex -m1 -j $< $@
pics/%.tex: pics/%.fig
	fig2dev -Lpstex_t -m1 -p ${@:.tex=.eps} -j $< $@
full_%.eps: pics/%.tex pics/%.eps
	../epstex2eps $< $@
full_%.pdf: full_%.eps
	epstopdf $<

##################################
TEXTS_T = ${TEXTS:=.pdf}
%.pdf: %.tex ${PICS_T}
	pdflatex $<

all: ${PICS_T} ${TEXTS_T}

##################################
clean:
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.dvi *.eps *.bak *.bbl *.blg
	rm -f ${PICS_T} tmp_fig.* pics/*.eps pics/*.tex pics/*.bak

