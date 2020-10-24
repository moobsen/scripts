# sound from https://freesound.org/people/surly/sounds/91196/

import os
import time

MEDITATION_DURATION = 10 #in minutes
file = 'meditation_bell.mp3'

print("Meditation starting in 20 seconds")
time.sleep(20)
print("MEditation Starting")
os.system("vlc --play-and-exit " + file)
time.sleep(60*MEDITATION_DURATION)
os.system("vlc --play-and-exit " + file)
print("Meditation ended")


