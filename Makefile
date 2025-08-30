ARDUINO_PORT = /dev/ttyACM0

.PHONY: all

all: compile

compile: main.c
	avr-gcc -Os -DF_CPU=16000000UL -mmcu=atmega328p -c -o main.o main.c
	avr-gcc -o main.bin main.o
	avr-objcopy -O ihex -R .eeprom main.bin main.hex

upload: compile
	avrdude -F -V -c arduino -p ATMEGA328P \
		-P $(ARDUINO_PORT) -b 115200 -U flash:w:main.hex

clean:
	rm -f main.bin main.hex main.o
