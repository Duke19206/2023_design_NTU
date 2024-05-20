****
.inc '90nm_bulk.l'
.SUBCKT FA1 DVDD GND InA InB CI S CO

MN0  CO  t0  GND  GND  NMOS l=0.1u w=0.25u m=1
MN1  t0  CI  t1   GND  NMOS l=0.1u w=0.25u m=1
MN2  t0  InA t2   GND  NMOS l=0.1u w=0.25u m=1
MN3  t2  InB GND  GND  NMOS l=0.1u w=0.25u m=1
MN4  t1  InB GND  GND  NMOS l=0.1u w=0.25u m=1
MN5  t3  t4  t5   GND  NMOS l=0.1u w=0.25u m=1
MN6  t4  t5  t3   GND  NMOS l=0.1u w=0.25u m=1
MN7  S   t3  GND  GND  NMOS l=0.1u w=0.25u m=1
MN8  t6  InA GND  GND  NMOS l=0.1u w=0.25u m=1
MN9  t4  InB InA  GND  NMOS l=0.1u w=0.25u m=1
MN10 InB InA t4   GND  NMOS l=0.1u w=0.25u m=1
MN11 t1  InA GND  GND  NMOS l=0.1u w=0.25u m=1
MN12 t5  CI  GND  GND  NMOS l=0.1u w=0.25u m=1
MP0  CO  t0  DVDD DVDD PMOS l=0.1u w=0.5u m=1
MP1  t0  CI  t7   DVDD PMOS l=0.1u w=0.5u m=1
MP2  t0  InA t8   DVDD PMOS l=0.1u w=0.5u m=1
MP3  t8  InB DVDD DVDD PMOS l=0.1u w=0.5u m=1
MP4  t7  InB DVDD DVDD PMOS l=0.1u w=0.5u m=1
MP5  t3  t4  CI   DVDD PMOS l=0.1u w=0.5u m=1
MP6  t4  CI  t3   DVDD PMOS l=0.1u w=0.5u m=1
MP7  S   t3  DVDD DVDD PMOS l=0.1u w=0.5u m=1
MP8  t6  InA DVDD DVDD PMOS l=0.1u w=0.5u m=1
MP9  t4  InB t6   DVDD PMOS l=0.1u w=0.5u m=1
MP10 InB t6  t4   DVDD PMOS l=0.1u w=0.5u m=1
MP11 t7  InA DVDD DVDD PMOS l=0.1u w=0.5u m=1
MP12 t5  CI  DVDD DVDD PMOS l=0.1u w=0.5u m=1
.ENDS

****

Vdd DVDD 0 1
Vss GND  0 0

Vin1 InA 0 pulse(0 1 0 0 0 0.4u 0.8u)
Vin2 InB 0 pulse(0 1 100n 0 0 0.4u 0.8u)
Vin  CI  0 1

x1 DVDD GND InA InB CI S CO FA1

.tran 10n 4u
.op
.option post
.end