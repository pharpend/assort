all:
	mkdir -p .build
	cp -rv tex/* .build
	cd .build && \
	  latexmk -pdf assort.tex && \
	  cp assort.pdf ..

clean:
	rm -rf .build
