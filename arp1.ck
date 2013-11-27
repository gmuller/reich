ModalBar bar => NRev rev => dac;
0.05 => rev.mix;
0.5 => bar.strikePosition;
0.75::second => dur quarter;
0 => bar.gain;
[0, 49, 50, 52, 54, 56, 57, 59, 61] @=> int scale[];
[1, 4, 5, 6, 8] @=> int arpDegrees[];

0 => int counter;
while(true) {
    counter % arpDegrees.cap() => int beat;
    Std.mtof(scale[arpDegrees[beat]]) => bar.freq;
    Math.random2f(0.35, 0.65) => bar.strikePosition;
    Math.random2f(0.5, 0.8) => bar.strike;
    0.25::quarter => now;
    if (bar.gain() < 0.8) {
        bar.gain() + 0.02 => bar.gain;
    }
    counter++;
}