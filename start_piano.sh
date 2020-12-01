qsynth &
sleep 1
echo "--------- Lising MIDI Inputs ------------"
aconnect -i
echo "--------- Lising MIDI Outputs ------------"
aconnect -o
# conncet my piano to qsynth
#aconnect 20: 128:
PIANO_CHANNEL=$(aconnect -i | grep "Impact LX61+" | grep client | cut -d" " -f2)
FLUID_CHANNEL=$(aconnect -o | grep "FLUID Synth" | grep client | cut -d" " -f2)
aconnect $PIANO_CHANNEL $FLUID_CHANNEL
