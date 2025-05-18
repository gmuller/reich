Bowed bow => NRev rev;

// Get channel numbers from command line arguments
Std.atoi(me.arg(0)) => int leftChan;
Std.atoi(me.arg(1)) => int rightChan;

Gain gL => dac.chan(leftChan);  // Left channel
Gain gR => dac.chan(rightChan); // Right channel
rev => gL;
rev => gR;

BPM bpm;
bpm.quarterNote => dur quarter;
Std.atoi(me.arg(2)) => int note1;
Std.atoi(me.arg(3)) => int note2;

0.1 => bow.bowPressure;
0.9 => bow.bowPosition;
0.2 => rev.mix;

while(true) {
    Std.mtof(note1) => bow.freq;
    Math.random2f(0.4, 0.8) => bow.startBowing;
    2.5::quarter => now;
    Std.mtof(note2) => bow.freq;
    2::quarter => now;
    1 => bow.stopBowing;
    2::quarter => now;
} 