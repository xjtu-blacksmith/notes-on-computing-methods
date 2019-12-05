main.pdf: main.tex zhindex.ist
	xelatex main.tex
	zhmakeindex -s zhindex.ist main.idx
	xelatex main.tex
	xelatex main.tex

clean:
	git clean -fdx