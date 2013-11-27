BandedWG flute => NRev rev => dac.right;
0.75::second => dur quarter;
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
