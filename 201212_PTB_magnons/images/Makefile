pics= 000title 010phd 020text 030nmr 040levels 050cwnmr\
      060pulse 070rel 080zrel 090relfre 100concl 105black 110sp_hmin

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

