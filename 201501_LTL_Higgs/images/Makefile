pics=\
  000_title\
  010_he3\
  015_ferro\
  030_modes\
  040_spinwaves\
  050_exp\
  070_suhl\
  071_suhl\
  072_suhl\
  080_vort\
  100_concl

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

