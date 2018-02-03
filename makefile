run: picmaker.rb
	ruby picmaker.rb

convert: run
	convert image.ppm image.png

display: convert
	display image.png

clean:
	rm image.ppm image.png
