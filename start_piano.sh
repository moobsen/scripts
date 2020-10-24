qsynth &
sleep 1
echo "--------- Lising MIDI Inputs ------------"
aconnect -i
echo "--------- Lising MIDI Outputs ------------"
aconnect -o
# conncet my piano to qsynth
aconnect 20: 128:
