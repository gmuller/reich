ModalBar bar => NRev rev => dac;
0.1 => rev.mix;
6 => bar.preset;
0.5 => bar.strikePosition;
BPM bpm;
bpm.quarterNote => dur quarter;
[0, 49, 50, 52, 54, 56, 57, 59, 61] @=> int scale[];
[8, 3, 4, 6, 1, 6, 5] @=> int arpDegrees[];

0 => int counter;
while(true) {
    counter % arpDegrees.cap() => int beat;
    Std.mtof(scale[arpDegrees[beat]] + 12) => bar.freq;
    Math.random2f(0.35, 0.65) => bar.strikePosition;
    Math.random2f(0.8, 1) => bar.strike;
    0.5::quarter => now;
    counter++;
}