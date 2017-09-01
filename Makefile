DTC=dtc

all: spi-gpio-wlanthermo.dto

spi-gpio-wlanthermo.dto: spi-gpio-wlanthermo.dts
	$(DTC) -@ -I dts -O dtb -o spi-gpio-wlanthermo.dto spi-gpio-wlanthermo.dts

install-spi-gpio-wlanthermo.dto: spi-gpio-wlanthermo.dto
	mkdir -p $(DESTDIR)/boot/overlays
	cp spi-gpio-wlanthermo.dto $(DESTDIR)/boot/overlays/

install: install-spi-gpio-wlanthermo.dto

clean:
	rm *.dto

