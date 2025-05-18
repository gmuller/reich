// initialize_midi.ck - MIDI clock sync version

// Channel assignments for each instrument
// Format: instrument_name => [left_channel, right_channel]
global int kickChannels[2];
global int clickChannels[2];
global int bassChannels[2];
global int arp1Channels[2];
global int arp2Channels[2];
global int strings1Channels[2];
global int strings2Channels[2];
global int strings3Channels[2];
global int fluteChannels[2];

// Set channel assignments
[0, 1] @=> kickChannels;
[0, 1] @=> clickChannels;
[0, 1] @=> bassChannels;
[0, 1] @=> arp1Channels;
[0, 1] @=> arp2Channels;
[0, 1] @=> strings1Channels;
[0, 1] @=> strings2Channels;
[0, 1] @=> strings3Channels;
[0, 1] @=> fluteChannels;

// Add MIDI Clock
me.dir() + "/MIDIClock.ck" => string midiClockPath;
Machine.add(midiClockPath) => int midiClockID;
1::ms => now;  // Give it a moment to initialize

// add score.ck
me.dir() + "/score.ck" => string scorePath;
Machine.add(scorePath); 