pics=\
  000_title\
  010_hardware\
  020_device\
  030_device_cfg\
  040_device_spp\
  050_graphene\
  060_devrole\
  070_sweep\
  080_bfdata\
  090_components\
  091_dev\

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

