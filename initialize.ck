// initialize.ck

//Add Clock
me.dir() + "/BPM.ck" => string clockPath;
Machine.add(clockPath);

// add score.ck
me.dir() + "/score.ck" => string scorePath;
Machine.add(scorePath);