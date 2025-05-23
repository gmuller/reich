BPM bpm;
80 => bpm.tempo;
bpm.quarterNote => dur quarter;

// Get channel assignments from initialize.ck
global int kickChannels[];
global int clickChannels[];
global int bassChannels[];
global int arp1Channels[];
global int arp2Channels[];
global int strings1Channels[];
global int strings2Channels[];
global int strings3Channels[];
global int fluteChannels[];

me.dir() + "/kick.ck:" + kickChannels[0] + ":" + kickChannels[1] => string kickPath;
me.dir() + "/bass.ck:" + bassChannels[0] + ":" + bassChannels[1] => string bassPath;
me.dir() + "/arp1.ck:" + arp1Channels[0] + ":" + arp1Channels[1] => string arpPath;
me.dir() + "/arp2.ck:" + arp2Channels[0] + ":" + arp2Channels[1] => string arp2Path;
me.dir() + "/click.ck:" + clickChannels[0] + ":" + clickChannels[1] => string clickPath;
me.dir() + "/strings1.ck:" + strings1Channels[0] + ":" + strings1Channels[1] + ":33:37" => string strings1Path;
me.dir() + "/strings1.ck:" + strings2Channels[0] + ":" + strings2Channels[1] + ":40:44" => string strings2Path;
me.dir() + "/strings1.ck:" + strings3Channels[0] + ":" + strings3Channels[1] + ":49:52" => string strings3Path;
me.dir() + "/flute.ck:" + fluteChannels[0] + ":" + fluteChannels[1] => string flutePath;

<<< "Lets do the intro" >>>;
Machine.add(kickPath) => int kickID;
Machine.add(clickPath) => int clickID;
16::quarter => now;

<<< "Add the bass, like a Peter Gabriel thing" >>>;
Machine.add(bassPath) => int bassID;
16::quarter => now;

<<< "Simple arpeggiation, 5 notes" >>>;
Machine.add(arpPath) => int arpID;
24::quarter => now;

<<< "Quiet time" >>>;
Machine.remove(kickID);
Machine.remove(arpID);
8::quarter => now;

<<< "Do the strings" >>>;
Machine.add(strings1Path) => int strings1ID;
Machine.add(strings2Path) => int strings2ID;
13::quarter => now;

<<< "Do some more strings" >>>;
Machine.add(kickPath) => kickID;
Machine.add(strings3Path) => int strings3ID;
13::quarter => now;

<<< "Another arpeggiation. 7's" >>>;
Machine.add(arp2Path) => int arp2ID;
13::quarter => now;

<<< "Bring back the 5's" >>>;
Machine.add(arpPath) => arpID;
26::quarter => now;

<<< "Quiet time again" >>>;
Machine.remove(strings1ID);
Machine.remove(strings2ID);
Machine.remove(strings3ID);
Machine.remove(arpID);
16::quarter => now;

<<< "Called a flute, sounds like a bell, repetitive ostinato" >>>;
Machine.add(flutePath) => int fluteID;
25::quarter => now;

<<< "Build it back up" >>>;
Machine.add(arpPath) => arpID;
10::quarter => now; 

<<< "Do the strings again" >>>;
Machine.add(strings1Path) => strings1ID;
Machine.add(strings2Path) => strings2ID;
13::quarter => now;

<<< "Yeah really do them" >>>;
Machine.add(strings3Path) => strings3ID;
26::quarter => now;

<<< "Thats enough of that" >>>;
Machine.remove(arpID);
6.5::quarter => now;
Machine.remove(arp2ID);
13::quarter => now;
Machine.remove(fluteID);
32.5::quarter => now;

<<< "Get outta here strings" >>>;
Machine.remove(strings1ID);
Machine.remove(strings2ID);
Machine.remove(strings3ID);
16::quarter => now;

<<< "Peter Gabriel again" >>>;
Machine.remove(bassID);
12::quarter => now;

Machine.remove(clickID);
Machine.remove(kickID);

