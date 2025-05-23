BandedWG flute => NRev rev;

// Get channel numbers from command line arguments
Std.atoi(me.arg(0)) => int leftChan;
Std.atoi(me.arg(1)) => int rightChan;

Gain gL => dac.chan(leftChan);  // Left channel
Gain gR => dac.chan(rightChan); // Right channel
rev => gL;
rev => gR;

BPM bpm;
bpm.quarterNote => dur quarter;
1 => flute.preset;
0.15 => rev.mix;

fun void playNote(int noteNum, float time) {
    Std.mtof(noteNum + 12) => flute.freq;
    Math.random2f(0.7, 0.8) => flute.pluck;
    time::quarter => now;
    1 => flute.noteOff;
}

while(true) {
    playNote(56, 0.5);
    playNote(49, 0.5);
    playNote(52, 0.5);
    playNote(54, 1);
    playNote(52, 1);
    
    playNote(56, 0.5);
    playNote(49, 0.5);
    playNote(52, 0.5);
    playNote(59, 0.25);
    playNote(61, 1.25);
    
    playNote(56, 0.5);
    playNote(49, 0.5);
    playNote(52, 0.5);
    playNote(54, 1);
    playNote(52, 1);
    
    playNote(61, 0.5);
    playNote(57, 0.5);
    playNote(59, 0.5);
    playNote(56, 0.25);
    playNote(52, 0.25);
    playNote(54, 0.25);
    playNote(59, 0.25);
}
