BPM bpm;
90 => bpm.tempo;
bpm.quarterNote => dur quarter;
me.dir() + "/kick.ck" => string kickPath;
me.dir() + "/bass.ck" => string bassPath;
me.dir() + "/arp1.ck" => string arpPath;
me.dir() + "/arp2.ck" => string arp2Path;
me.dir() + "/click.ck" => string clickPath;
me.dir() + "/strings1.ck:33:37" => string strings1Path;
me.dir() + "/strings1.ck:40:44" => string strings2Path;
me.dir() + "/strings1.ck:49:52" => string strings3Path;
me.dir() + "/flute.ck" => string flutePath;

Machine.add(kickPath) => int kickID;
Machine.add(clickPath) => int clickID;
16::quarter => now;

Machine.add(bassPath) => int bassID;
16::quarter => now;

Machine.add(arpPath) => int arpID;
24::quarter => now;

Machine.remove(kickID);
Machine.remove(arpID);
8::quarter => now;

Machine.add(strings1Path) => int strings1ID;
Machine.add(strings2Path) => int strings2ID;
13::quarter => now;

Machine.add(kickPath) => kickID;
Machine.add(strings3Path) => int strings3ID;
13::quarter => now;

Machine.add(arp2Path) => int arp2ID;
13::quarter => now;

Machine.add(arpPath) => arpID;
26::quarter => now;

Machine.remove(strings1ID);
Machine.remove(strings2ID);
Machine.remove(strings3ID);
Machine.remove(arpID);
16::quarter => now;

Machine.add(flutePath) => int fluteID;
25::quarter => now;
Machine.add(arpPath) => arpID;
10::quarter => now; 
Machine.add(strings1Path) => strings1ID;
Machine.add(strings2Path) => strings2ID;
13::quarter => now;
Machine.add(strings3Path) => strings3ID;
26::quarter => now;

Machine.remove(arpID);
6.5::quarter => now;
Machine.remove(arp2ID);
13::quarter => now;
Machine.remove(fluteID);
32.5::quarter => now;
Machine.remove(strings1ID);
Machine.remove(strings2ID);
Machine.remove(strings3ID);
16::quarter => now;
Machine.remove(bassID);
12::quarter => now;
Machine.remove(clickID);
Machine.remove(kickID);

