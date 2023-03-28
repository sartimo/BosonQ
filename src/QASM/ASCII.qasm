include "qelib1.inc";

// define 8 qubits to encode 8-bit ASCII characters
qreg ascii[8];

// initialization: encode "hello world" as ASCII
// (each character is 8 bits)
x ascii[0]; // h
x ascii[1]; // e
x ascii[2]; // l
x ascii[3]; // l
x ascii[4]; // o
x ascii[5]; //  
x ascii[6]; // w
x ascii[7]; // o
// ... and so on for the rest of the string

// measure the qubits to read out the ASCII values
// (reverse order to get the correct bit order)
measure ascii[7] -> c7;
measure ascii[6] -> c6;
measure ascii[5] -> c5;
measure ascii[4] -> c4;
measure ascii[3] -> c3;
measure ascii[2] -> c2;
measure ascii[1] -> c1;
measure ascii[0] -> c0;

// classical output: decode the ASCII values and print "hello world"
// (each character is 8 bits)
int c = 0;
c = (c << 1) | c7;
c = (c << 1) | c6;
c = (c << 1) | c5;
c = (c << 1) | c4;
c = (c << 1) | c3;
c = (c << 1) | c2;
c = (c << 1) | c1;
c = (c << 1) | c0;

// print the character
if (c == 'h') {
  printf("hello world\n");
}
