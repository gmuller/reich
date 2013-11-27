Bowed bow => NRev rev => dac;

Std.atoi(me.arg(0)) => int note1;
Std.atoi(me.arg(1)) => int note2;

0.1 => bow.bowPressure;
0.9 => bow.bowPosition;
0.2 => rev.mix;
0.75::second => dur quarter;

while(true) {
    Std.mtof(note1) => bow.freq;
    Math.random2f(0.4, 0.8) => bow.startBowing;
    2.5::quarter => now;
    Std.mtof(note2) => bow.freq;
    2::quarter => now;
    1 => bow.stopBowing;
    2::quarter => now;
} 