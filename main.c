// Port B input pins register address
#define PINB (*(volatile unsigned char*) 0x23)

int main(void) {

    while(1) {
        PINB |= (1 << 5);
        for(volatile long i = 0; i < 500000L; ++i);
    }

    return 0;
}
