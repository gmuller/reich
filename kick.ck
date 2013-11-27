ModalBar bar => NRev rev => dac;
0.05 => rev.mix;
7 => bar.preset;
0.9 => bar.stickHardness;
Std.mtof(57) => bar.freq;
0.75::second => dur quarter;
[57, 57, 61, 59] @=> int kickPitches[];

0 => int counter;
0 => int measure; 
while(true) {
    if (counter % 16 == 0) {
        measure++;
        if (measure >= kickPitches.cap()) {
            1 => measure;
        } 
        Std.mtof(kickPitches[measure]) => bar.freq;
    }
    
    Math.random2f(0.25, 0.35) => bar.strikePosition;
    Math.random2f(0.6, 0.8) => bar.strike;
    0.5::quarter => now;
    counter++;
}