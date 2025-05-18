// Simple sine wave test
SinOsc s => dac;
440 => s.freq;
0.5 => s.gain;

// Print to confirm it's running
<<< "Test sound running - you should hear a 440Hz tone" >>>;

// Let it run for 5 seconds
5::second => now; 