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

# BUYING COMPONENTS

The original project ensured that all components were available from Digikey.

The `UWED2_proto.xls` file shows where these components were available in 2019.

At that time you would have been able to paste the following list on https://www.digikey.com/ordering/shoppingcart, but the BOM needs to be updated for some passive components and the ESP32-WROOM-32 (was: 1904-1010-1-ND):
```csv
2,401-1427-1-ND,BOOT1;EN1
6,490-3340-2-ND,C1;C2;C5;C6;C16;C18
2,311-1136-1-ND,C10;C12
2,399-16641-1-ND,C20;C21
2,1276-1300-1-ND,C3;C4
9,478-1395-1-ND,C7-C9;C11;C13-C15;C17;C19
1,497-18870-1-ND,D7
1,1904-1010-1-ND,IC1
1,AD5667RBRMZ-2-ND,IC2
1,AD8608ARUZ-ND,IC3
2,576-1259-1-ND,IC4;IC5
1,MAX4643EUA+-ND,IC6
1,MAX4644EUT+TCT-ND,IC7
1,LTC2471IMS#PBF-ND,IC8
1,VAOL-S8SB4CT-ND,LED1
1,CP-032HPJCT-ND,P1
1,GH7540CT-ND,P2
1,RR12P1.2KDCT-ND,R1
2,541-4163-1-ND,R11;R12
2,A130132CT-ND,R14;R15
1,311-16.2KCRCT-ND,R2
2,311-845CRCT-ND,R3;R10
1,311-29.4KCRCT-ND,R4
1,311-8.06KCRCT-ND,R5
1,541-4126-1-ND,R7
3,541-4164-1-ND,R8;R9;R13
```
