pics=\
  000_title\
  010_trap\
  020_pulses\
  030_spectra\
  040_relax\
  999_black

#all: ${pics:=.png} ${pics:=.tex} ${pics:=.eps}
all: ${pics:=.tex} ${pics:=.eps} ${pics:%=full_%.eps} st.txt

st.txt: ${pics:=.tex} ${pics:=.eps}
	date > st.txt

%.png: %.fig
	fig2dev -Lpng -j -m3.75 $< $@

%.eps: %.fig
	fig2dev -Lpstex -j $< $@
%.tex: %.fig
	fig2dev -Lpstex_t -p ${@:.tex=.eps} -j $< $@

full_%.eps: %.tex
	epstex2eps $<

clean:
	rm -f *.tex *.png *.eps *.bak st.txt tmp_fig.*

