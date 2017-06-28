PNGS= laptop.png \

make: $(PNGS)

%.png: %.svg
	inkscape -D $< -e $@

clean:
	rm *.png
