all: examples/example.css index.html

examples/example.css: examples/example.scss sass/*.scss
	node-sass $< > $@

index.html: README.md
	pandoc README.md -o index.html --css examples/example.css
