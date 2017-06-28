PNGS= laptop.png \
	  haskell-logo.png \

make: $(PNGS)

%.png: %.svg
	inkscape -D $< -e $@

clean:
	rm $(PNGS)
