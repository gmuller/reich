// initialize_stereo.ck - Standard stereo output version

// Channel assignments for each instrument
// All instruments output to standard stereo (channels 0 and 1)
global int kickChannels[2];
global int clickChannels[2];
global int bassChannels[2];
global int arp1Channels[2];
global int arp2Channels[2];
global int strings1Channels[2];
global int strings2Channels[2];
global int strings3Channels[2];
global int fluteChannels[2];

// Set all instruments to standard stereo output (channels 0 and 1)
[0, 1] @=> kickChannels;
[0, 1] @=> clickChannels;
[0, 1] @=> bassChannels;
[0, 1] @=> arp1Channels;
[0, 1] @=> arp2Channels;
[0, 1] @=> strings1Channels;
[0, 1] @=> strings2Channels;
[0, 1] @=> strings3Channels;
[0, 1] @=> fluteChannels;

//Add Clock
me.dir() + "/BPM.ck" => string clockPath;
Machine.add(clockPath);

// add score.ck
me.dir() + "/score.ck" => string scorePath;
Machine.add(scorePath); 