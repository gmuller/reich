BPM bpm;
bpm.quarterNote => dur quarter;
BandedWG bass => Gain master;

// Get channel numbers from command line arguments
Std.atoi(me.arg(0)) => int leftChan;
Std.atoi(me.arg(1)) => int rightChan;

Gain gL => dac.chan(leftChan);  // Left channel
Gain gR => dac.chan(rightChan); // Right channel
master => gL;
master => gR;

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