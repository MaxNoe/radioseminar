texoptions = -lualatex \
			 -output-directory=build \
			 -interaction=nonstopmode \
			 -halt-on-error

all: build/wasserstoff.pdf

build/wasserstoff.pdf: wasserstoff.tex beamerthemevertex.sty | build
	latexmk $(texoptions) wasserstoff.tex

beamerthemevertex.sty:
	wget https://raw.githubusercontent.com/ibab/beamertheme-vertex/master/beamerthemevertex.sty

build:
	mkdir -p build


clean:
	rm -rf build
