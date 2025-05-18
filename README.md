# Reich Composition

I wrote this song to learn audio coding with ChucK. Its a simple composition inspired by Steve Reich's Quartet and the use of simple overlapping ostinatos to create something more complex than its individual parts. 

## Prerequisites

- [ChucK](https://chuck.cs.princeton.edu/) programming language installed
- Audio interface with multiple output channels (for multi-channel version)

## Starting the Composition

There are two different ways to initialize and run the composition, depending on your setup and requirements:

### 1. Multi-Channel Version
This version assigns each instrument to different stereo pairs, allowing for spatial separation in the mix:
```bash
chuck --dac:4 --out:18 initialize.ck
```
Where your dac number is the number of the audio interface you're using. 

### 2. Standard Stereo Version
This version routes all instruments to the standard stereo output (channels 0 and 1):
```bash
chuck initialize_stereo.ck
```

## File Structure

- `initialize.ck` - Multi-channel initialization file
- `initialize_stereo.ck` - Standard stereo output initialization
- `initialize_midi.ck` - MIDI clock sync initialization
- `score.ck` - Main composition score
- `BPM.ck` - Tempo control
- Individual instrument files:
  - `kick.ck` - Kick drum patterns
  - `click.ck` - Click track
  - `bass.ck` - Bass patterns
  - `arp1.ck` and `arp2.ck` - Arpeggiator patterns
  - `strings1.ck` - String patterns
  - `flute.ck` - Flute patterns

## Channel Assignments

In the multi-channel version (`initialize.ck`), instruments are assigned to the following stereo pairs:
- Kick: Channels 0-1
- Click: Channels 2-3
- Bass: Channels 4-5
- Arp1: Channels 6-7
- Arp2: Channels 8-9
- Strings1: Channels 10-11
- Strings2: Channels 12-13
- Strings3: Channels 14-15
- Flute: Channels 16-17

## Modifying the Composition

To modify the composition:
1. Edit the individual instrument files to change patterns
2. Adjust the tempo in `BPM.ck`
3. Modify the score structure in `score.ck`
4. Choose the appropriate initialization file based on your output needs

## Notes

- The composition uses ChucK's built-in timing system for synchronization
- All instruments are synchronized to a common clock
- The MIDI version allows for external synchronization with other MIDI devices (not currently implemented, experimenting still)
- Make sure your audio interface has enough channels if using the multi-channel version. On a mac you can use Blackhole or Loopback to allocate enough internal ports to route to a DAW. On Windows I suspect you can use Soundflower. 