# WARNING

Project not tested.

# INFORMATION

This is based on the open-source project "Open-Source Potentiostat
for Wireless Electrochemical Detection with Smartphones" 

See : https://dash.harvard.edu/bitstream/handle/1/37298552/5997382.pdf;jsessionid=20A09C47E57A66C76ECFA98192F31BF9?sequence=1

The reference to "UWED, Alar Ainla, GMW Group Harvard Univ" was left on the PCB.  They did not design this one, but it was adapted from their Eagle Project.

- The wireless module was replaced with an ESP-WROOM-32 because the original module is no longer supported.
- A programming connector was added.
- A THT connector has been added for power.
- A "Battery Management" IC was added to safely charge a Li-Ion/Li-Poly on power connector.
- There was a project to ajust the PAD positions to a Molex/1719730004

And some other "minor" changes as well as an effort to improve the ground plaine.

# SOFTWARE

See ac8b00850_si_002.zip from https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5997382/ to get the original software as well as further information about this project.

The software has to be adapted to the ESP32-WROOM-32.
