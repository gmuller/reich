0.75::second => dur quarter;
BandedWG bass => Gain master => dac;
[0, 49, 50, 52, 54, 56, 57, 59, 61] @=> int scale[];
[6, 6, 0, 6, 6, 6, 6, 6] @=> int bassDegrees[];

0 => int counter;
while(true) {
    counter % bassDegrees.cap() => int beat;
    if (bassDegrees[beat]) {
        Std.mtof(scale[bassDegrees[beat]] - 24) => bass.freq;
        1 => bass.noteOn;
    }
    0.25::quarter => now;
    counter++;
}