0.75::second => dur quarter;
ModalBar click => NRev rev => dac;
0.05 => rev.mix;
0.1 => click.stickHardness;
Std.mtof(45) => click.freq;
6 => click.preset;
0.65 => click.gain;
[1, 0, 0, 1, 0, 0, 1, 0] @=> int shakes[];

0 => int counter;
while(true) {
    counter % shakes.cap() => int beat;
    if (shakes[beat]) {
        Math.random2f(0.2, 0.4) => click.strikePosition;
        Math.random2f(0.8, 1.0) => click.strike;
    }
    0.25::quarter => now;
    counter++;
}