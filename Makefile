.PHONY: pdf img clean

pdf: img
	docker run --rm -i -v `pwd`:/source danielfm/resume

img:
	docker build -t danielfm/resume .

clean:
	rm -f *.{log,out,pdf,aux}
