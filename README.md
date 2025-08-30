# Arduino Bare Metal Blink Example

Very simple program to blink the built-in led of an arduino without using any
external libraries only one C file `main.c`

## Dependencies

* `avr-gcc` and `avr-libc` to compile the code
* `avrdude` for uploading the program to the microcontroller

## Compile and upload to the board

Having the dependencies installed, compile the code running `make` or:

```console
$ make compile
```

Then with the board connected to the computer, check the port with:

```console
$ ls /dev/tty*
```

Often appears as `/dev/ttyUSB*` or `/dev/ttyACM*`, however it appears it should
match the `ARDUINO_PORT` variable on `Makefile`. Finally upload the code to the
arduino with

```console
$ make upload
```
