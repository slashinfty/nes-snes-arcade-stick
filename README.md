# nes-snes-arcade-stick
How the NES & SNES controllers function: https://gamesx.com/wiki/doku.php?id=controls:nes_snes_controller

The link above contains controller port pinouts. Use a multimeter to identify the wires in the extension cable, as they differ by manufacturer.

## Bill of Materials

* CD4021 (x2)
* Schottsky diodes (x2)
* General purpose diodes (x4)
* SPDT switch (x1)
* 10k resistors (x16)
* Joystick (x1) [AliExpress](https://www.aliexpress.us/item/2251832847025726.html)
* Buttons (x8) [AliExpress](https://www.aliexpress.us/item/3256801226554958.html)
* NES controller extension cable (x1)
* SNES controller extension cable (x1)

## Schematic (KiCad)

Note: the Y button for SNES will be the B button for NES, and the B button for SNES will by the A button for NES.

![schematic](/images/schematic.png)

## Stripboard Layout (DIY Layout Creator)

![stripboard layout](/images/layout.png)

## Case (OpenSCAD)

![case](/images/case.png)
