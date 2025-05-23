// initialize.ck

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
[2, 3] @=> clickChannels;
[4, 5] @=> bassChannels;
[6, 7] @=> arp1Channels;
[8, 9] @=> arp2Channels;
[10, 11] @=> strings1Channels;
[12, 13] @=> strings2Channels;
[14, 15] @=> strings3Channels;
[16, 17] @=> fluteChannels;

//Add Clock
me.dir() + "/BPM.ck" => string clockPath;
Machine.add(clockPath);

// add score.ck
me.dir() + "/score.ck" => string scorePath;
Machine.add(scorePath);