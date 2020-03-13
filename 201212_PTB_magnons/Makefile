all:  img pres.pdf

img:
	make -C images

%.pdf: %.ps
	ps2pdf $<

%.ps: %.dvi
	dvips -T 298mm,210mm  -t landscape $<
%.dvi: %.tex
	latex $<

pres.dvi: pres.tex images/st.txt
	latex $<
clean:
	make -C images clean
	rm -f *.aux *.log *.nav *.out *.snm *.toc *.dvi *.eps

distclean: clean
	rm -f *.pdf

spell:
	ispell -d russian-lebedev pres.tex

