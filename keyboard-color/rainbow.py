
#for some reason python is blind to the file in the dir, but can' be bothered to debug rn
import subprocess
import time
import os

rainbow = ["0xFF0000",
           "0xFF8000",
           "0xFFFF00",
           "0x80FF00",
           "0x00FF00",
           "0x00FF80",
           "0x00FFFF",
           "0x0080FF",
           "0x0000FF",
           "0x8000FF",
           "0xFF00FF",
           "0xFF0080"]
for color in rainbow:
    #subprocess.run(["ls"], cwd=os.getcwd())
    subprocess.run(["/home/mo/src/github/moobsen/scripts/keyboard-color/set-color.sh %s" % (color)], cwd=os.getcwd())
    time.sleep(1)
