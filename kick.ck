ModalBar bar => NRev rev;

// Get channel numbers from command line arguments
Std.atoi(me.arg(0)) => int leftChan;
Std.atoi(me.arg(1)) => int rightChan;

Gain gL => dac.chan(leftChan);  // Left channel
Gain gR => dac.chan(rightChan); // Right channel
rev => gL;
rev => gR;

0.05 => rev.mix;
7 => bar.preset;
0.9 => bar.stickHardness;
Std.mtof(57) => bar.freq;
BPM bpm;
bpm.quarterNote => dur quarter;
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