****
.inc '90nm_bulk.l'
.SUBCKT NA2 DVDD GND InA InB Out
*.PININFO DVDD:I GND:I In:I Out: O
MN0 Out InB  t1  GND  NMOS l=0.1u w=0.25u m=1
MN1 t1  InA GND  GND  NMOS l=0.1u w=0.25u m=1
MP0 Out InA DVDD DVDD PMOS l=0.1u w=0.5u m=1
MP1 Out InB DVDD DVDD PMOS l=0.1u w=0.5u m=1
.ENDS

****

Vdd DVDD 0 1
Vss GND  0 0

Vin1 InA 0 pulse(0 1 400n 0 0 0.4u 0.8u)
Vin2 InB 0 pulse(0 1 0 0 0 0.4u 0.8u)

x1 DVDD GND InA InB Out NA2

.tran 10n 4u
.op
.option post
.end