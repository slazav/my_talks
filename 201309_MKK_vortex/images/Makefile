pics= 000title 010he3b 020nmr 030pulse\
      040rel 050zrel 060phdep\
      070peaks 071peaks2p 072peaks_temp\
      100concl 105black

#all: ${pics:=.png} ${pics:=.tex} ${pics:=.eps}
all: ${pics:=.tex} ${pics:=.eps} st.txt

st.txt: ${pics:=.tex} ${pics:=.eps}
	date > st.txt

%.png: %.fig
	fig2dev -Lpng -j -m3.75 $< $@

%.eps: %.fig
	fig2dev -Lpstex -j $< $@
%.tex: %.fig
	fig2dev -Lpstex_t -p ${@:.tex=.eps} -j $< $@

clean:
	rm -f *.tex *.png *.eps *.bak st.txt

