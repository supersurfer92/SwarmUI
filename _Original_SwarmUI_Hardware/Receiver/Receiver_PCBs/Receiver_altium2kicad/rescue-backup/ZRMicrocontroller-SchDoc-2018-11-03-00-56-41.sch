EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:special
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
EELAYER 27 0
EELAYER END
$Descr B 17000 11000
encoding utf-8
Sheet 1 1
Title "ZRMicrocontroller-SchDoc"
Date "20 10 2018"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR?5BCB5997
U 1 1 5BCB5997
P 6500 7500
F 0 "GND" H 6500 7640 20  0000 C CNN
F 1 "+GND" H 6500 7610 30  0000 C CNN
F 2 "" H 6500 7500 70  0000 C CNN
F 3 "" H 6500 7500 70  0000 C CNN
	1    6500 7500
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?5BCB5996
U 1 1 5BCB5996
P 4800 4300
F 0 "+3.3V" H 4800 4300 20  0000 C CNN
F 1 "+3.3V" H 4800 4230 30  0000 C CNN
F 2 "" H 4800 4300 70  0000 C CNN
F 3 "" H 4800 4300 70  0000 C CNN
	1    4800 4300
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?5BCB5995
U 1 1 5BCB5995
P 1900 4000
F 0 "+3.3V_2" H 1900 4000 20  0000 C CNN
F 1 "+3.3V" H 1900 3930 30  0000 C CNN
F 2 "" H 1900 4000 70  0000 C CNN
F 3 "" H 1900 4000 70  0000 C CNN
	1    1900 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB5994
U 1 1 5BCB5994
P 1900 4300
F 0 "GND_2" H 1900 4440 20  0000 C CNN
F 1 "+GND" H 1900 4410 30  0000 C CNN
F 2 "" H 1900 4300 70  0000 C CNN
F 3 "" H 1900 4300 70  0000 C CNN
	1    1900 4300
	1    0    0    -1  
$EndComp
Text Notes 400 4800 0    60   ~ 12
for VDDA
$Comp
L +3.3V #PWR?5BCB5993
U 1 1 5BCB5993
P 600 4000
F 0 "+3.3V_3" H 600 4000 20  0000 C CNN
F 1 "+3.3V" H 600 3930 30  0000 C CNN
F 2 "" H 600 4000 70  0000 C CNN
F 3 "" H 600 4000 70  0000 C CNN
	1    600 4000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB5992
U 1 1 5BCB5992
P 600 4300
F 0 "GND_3" H 600 4440 20  0000 C CNN
F 1 "+GND" H 600 4410 30  0000 C CNN
F 2 "" H 600 4300 70  0000 C CNN
F 3 "" H 600 4300 70  0000 C CNN
	1    600 4300
	1    0    0    -1  
$EndComp
Text Notes 1600 4800 0    60   ~ 12
for VDDs
Text Label 6600 4800 0 60 ~
SWDIO
Text Label 6600 4900 0 60 ~
SWCLK
Text Label 6600 6100 0 60 ~
NRST
Text Label 2050 5600 0 60 ~
SWDIO
Text Label 2050 6200 0 60 ~
SWCLK
$Comp
L +3.3V #PWR?5BCB5991
U 1 1 5BCB5991
P 1200 5700
F 0 "+3.3V_4" H 1200 5700 20  0000 C CNN
F 1 "+3.3V" H 1200 5630 30  0000 C CNN
F 2 "" H 1200 5700 70  0000 C CNN
F 3 "" H 1200 5700 70  0000 C CNN
	1    1200 5700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB5990
U 1 1 5BCB5990
P 1200 6200
F 0 "GND_4" H 1200 6340 20  0000 C CNN
F 1 "+GND" H 1200 6310 30  0000 C CNN
F 2 "" H 1200 6200 70  0000 C CNN
F 3 "" H 1200 6200 70  0000 C CNN
	1    1200 6200
	1    0    0    -1  
$EndComp
Text Label 2050 5900 0 60 ~
NRST
Text Label 8650 5650 0 60 ~
RADIO_SPI
Entry Wire Line
 	7050 5300 7150 5400
Entry Wire Line
 	7150 5300 7050 5200
Text Label 6600 5300 0 60 ~
RGBLED1
Text Label 4200 5800 0 60 ~
RGBLED2
Text Label 6600 5200 0 60 ~
RGBLED3
Text Label 7200 5400 0 60 ~
RGBLED[1..3]
Text Notes 1450 6850 0    120   ~ 12
SWD Connector
$Comp
L GND #PWR?5BCB598F
U 1 1 5BCB598F
P 1100 7600
F 0 "GND_5" H 1100 7740 20  0000 C CNN
F 1 "+GND" H 1100 7710 30  0000 C CNN
F 2 "" H 1100 7600 70  0000 C CNN
F 3 "" H 1100 7600 70  0000 C CNN
	1    1100 7600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB598E
U 1 1 5BCB598E
P 1600 7600
F 0 "GND_6" H 1600 7740 20  0000 C CNN
F 1 "+GND" H 1600 7710 30  0000 C CNN
F 2 "" H 1600 7600 70  0000 C CNN
F 3 "" H 1600 7600 70  0000 C CNN
	1    1600 7600
	1    0    0    -1  
$EndComp
Text Notes 2150 8200 0    120   ~ 12
Crystal
Text Label 4150 7300 0 60 ~
MCU_X1_16MHZ
$Comp
L GND #PWR?5BCB598D
U 1 1 5BCB598D
P 6700 6700
F 0 "GND_7" H 6700 6840 20  0000 C CNN
F 1 "+GND" H 6700 6810 30  0000 C CNN
F 2 "" H 6700 6700 70  0000 C CNN
F 3 "" H 6700 6700 70  0000 C CNN
	1    6700 6700
	1    0    0    -1  
$EndComp
Text Label 4150 7400 0 60 ~
MCU_X2_16MHZ
Text Label 400 7200 0 60 ~
MCU_X1_16MHZ
Text Label 1600 7200 0 60 ~
MCU_X2_16MHZ
Text Notes 900 5250 0    120   ~ 12
Decoupling Capacitors
Text Notes 8800 8200 0    120   ~ 12
MCU
Wire Notes Line
	2900 5300 200 5300
Wire Notes Line
	2900 3600 2900 5300
Wire Notes Line
	850 5000 2900 5000
Wire Notes Line
	850 5300 850 5000
Wire Notes Line
	2900 6900 200 6900
Wire Notes Line
	2900 5300 2900 6900
Wire Notes Line
	1350 6600 2900 6600
Wire Notes Line
	1350 6900 1350 6600
Wire Notes Line
	2900 8250 200 8250
Wire Notes Line
	2900 6900 2900 8250
Wire Notes Line
	2050 7950 2900 7950
Wire Notes Line
	2050 8250 2050 7950
Wire Notes Line
	9300 8250 2900 8250
Wire Notes Line
	8650 7950 9300 7950
Wire Notes Line
	8650 8250 8650 7950
$Comp
L GND #PWR?5BCB598C
U 1 1 5BCB598C
P 8750 7200
F 0 "GND_8" H 8750 7340 20  0000 C CNN
F 1 "+GND" H 8750 7310 30  0000 C CNN
F 2 "" H 8750 7200 70  0000 C CNN
F 3 "" H 8750 7200 70  0000 C CNN
	1    8750 7200
	1    0    0    -1  
$EndComp
Text Label 8350 6900 0 60 ~
NRST
$Comp
L +3.3V #PWR?5BCB598B
U 1 1 5BCB598B
P 8750 6400
F 0 "+3.3V_5" H 8750 6400 20  0000 C CNN
F 1 "+3.3V" H 8750 6330 30  0000 C CNN
F 2 "" H 8750 6400 70  0000 C CNN
F 3 "" H 8750 6400 70  0000 C CNN
	1    8750 6400
	1    0    0    -1  
$EndComp
Wire Notes Line
	9300 3600 9300 8250
Text Label 4200 5700 0 60 ~
STATUS_LED
Text Label 7200 4700 0 60 ~
USB_D_P
Text Label 7200 4600 0 60 ~
USB_D_N
Text Label 7600 4600 0 70 ~
USB
Text Label 7600 4700 0 70 ~
USB
Text Label 7500 4450 1 70 ~
USB
Wire Wire Line
	4800 4300 4900 4300
Wire Wire Line
	4800 4400 4800 4300
Wire Wire Line
	4900 4400 4800 4400
Wire Wire Line
	600 4300 400 4300
Wire Wire Line
	800 4300 600 4300
Wire Wire Line
	600 4000 800 4000
Wire Wire Line
	400 4000 600 4000
Wire Wire Line
	7000 4900 6500 4900
Wire Wire Line
	7000 4800 6500 4800
Wire Wire Line
	1550 5800 1550 5600
Wire Wire Line
	1100 5800 1550 5800
Wire Wire Line
	2050 5900 2350 5900
Wire Wire Line
	1550 5900 1100 5900
Wire Wire Line
	1550 6000 1100 6000
Wire Wire Line
	1550 6200 1550 6000
Wire Wire Line
	2350 6200 2050 6200
Wire Wire Line
	2350 5600 2050 5600
Wire Wire Line
	6500 5500 8050 5500
Wire Wire Line
	6500 5600 8050 5600
Wire Wire Line
	8050 5700 6500 5700
Wire Wire Line
	8050 5800 6500 5800
Wire Wire Line
	6500 5900 8050 5900
Wire Wire Line
	1100 5700 1200 5700
Wire Wire Line
	1600 7200 2300 7200
Wire Wire Line
	1600 7300 1600 7200
Wire Wire Line
	4900 7300 4150 7300
Wire Wire Line
	4900 7400 4150 7400
Wire Wire Line
	6700 6200 6500 6200
Wire Wire Line
	1100 7200 400 7200
Wire Wire Line
	1100 7300 1100 7200
Wire Wire Line
	1200 6100 1200 6200
Wire Wire Line
	1100 6100 1200 6100
Wire Wire Line
	6850 6100 6500 6100
Wire Wire Line
	8300 6900 8750 6900
Wire Wire Line
	4800 4700 4900 4700
Wire Wire Line
	4800 4500 4900 4500
Wire Wire Line
	4900 5700 4200 5700
Wire Wire Line
	1700 4300 1300 4300
Wire Wire Line
	1900 4300 1700 4300
Wire Wire Line
	2100 4300 1900 4300
Wire Wire Line
	2500 4300 2100 4300
Wire Wire Line
	2100 4000 2500 4000
Wire Wire Line
	1900 4000 2100 4000
Wire Wire Line
	1700 4000 1900 4000
Wire Wire Line
	1300 4000 1700 4000
Wire Wire Line
	6500 7400 6500 7500
Wire Wire Line
	6500 7300 6500 7400
Wire Wire Line
	6500 7200 6500 7300
Wire Wire Line
	6500 7100 6500 7200
Wire Wire Line
	4900 5800 4200 5800
Wire Wire Line
	6500 5200 7050 5200
Wire Wire Line
	7050 5300 6500 5300
Wire Wire Line
	7900 5000 6500 5000
Wire Wire Line
	7900 5400 7900 5000
Wire Wire Line
	8050 5400 7900 5400
Wire Bus Line
	7150 5300 7150 5400
Wire Bus Line
	7150 5400 7750 5400
Wire Wire Line
	4800 4900 4900 4900
Wire Wire Line
	4800 4700 4800 4900
Wire Wire Line
	4800 4500 4800 4700
Wire Wire Line
	4800 4400 4800 4500
Wire Wire Line
	7600 4700 7850 4700
Wire Wire Line
	6500 4700 7600 4700
Wire Wire Line
	7600 4600 7850 4600
Wire Wire Line
	6500 4600 7600 4600
Connection ~ 600 4300
Connection ~ 600 4000
Connection ~ 1100 7200
Connection ~ 1600 7200
Connection ~ 1700 4300
Connection ~ 1700 4000
Connection ~ 1900 4300
Connection ~ 1900 4000
Connection ~ 2100 4300
Connection ~ 2100 4000
Connection ~ 4800 4700
Connection ~ 4800 4500
Connection ~ 4800 4400
Connection ~ 4800 4300
Connection ~ 6500 7500
Connection ~ 6500 7400
Connection ~ 6500 7300
Connection ~ 6500 7200
Connection ~ 8750 6900
$Comp
L 10nF C1
U 1 1 5BCB598A
P 400 4150
F 0 "C1" V 360 4060 60  0000 R TNN
F 1 "10nF" V 260 4060 60  0000 R TNN
F 2 "" H 260 4060 60  0000 C CNN
F 3 "" H 260 4060 60  0000 C CNN
	1    400 4150
	0    -1   -1   0
$EndComp
$Comp
L 100nF C4
U 1 1 5BCB5989
P 1700 4150
F 0 "C4" V 1660 4060 60  0000 R TNN
F 1 "100nF" V 1560 4060 60  0000 R TNN
F 2 "" H 1560 4060 60  0000 C CNN
F 3 "" H 1560 4060 60  0000 C CNN
	1    1700 4150
	0    -1   -1   0
$EndComp
$Comp
L 100nF C5
U 1 1 5BCB5988
P 2100 4150
F 0 "C5" V 2060 4060 60  0000 R TNN
F 1 "100nF" V 1960 4060 60  0000 R TNN
F 2 "" H 1960 4060 60  0000 C CNN
F 3 "" H 1960 4060 60  0000 C CNN
	1    2100 4150
	0    -1   -1   0
$EndComp
$Comp
L 100nF C7
U 1 1 5BCB5987
P 8750 7050
F 0 "C7" V 8710 6960 60  0000 R TNN
F 1 "100nF" V 8610 6960 60  0000 R TNN
F 2 "" H 8610 6960 60  0000 C CNN
F 3 "" H 8610 6960 60  0000 C CNN
	1    8750 7050
	0    -1   -1   0
$EndComp
$Comp
L 100nF C6
U 1 1 5BCB5986
P 2500 4150
F 0 "C6" V 2460 4060 60  0000 R TNN
F 1 "100nF" V 2360 4060 60  0000 R TNN
F 2 "" H 2360 4060 60  0000 C CNN
F 3 "" H 2360 4060 60  0000 C CNN
	1    2500 4150
	0    -1   -1   0
$EndComp
$Comp
L 22R R3
U 1 1 5BCB5985
P 1850 6200
F 0 "R3" H 2060 6160 60  0000 R TNN
F 1 "22R" H 2060 6340 60  0000 R TNN
F 2 "" H 2060 6340 60  0000 C CNN
F 3 "" H 2060 6340 60  0000 C CNN
	1    1850 6200
	-1   0    0    1
$EndComp
$Comp
L 22R R2
U 1 1 5BCB5984
P 1850 5900
F 0 "R2" H 2060 5860 60  0000 R TNN
F 1 "22R" H 2060 6040 60  0000 R TNN
F 2 "" H 2060 6040 60  0000 C CNN
F 3 "" H 2060 6040 60  0000 C CNN
	1    1850 5900
	-1   0    0    1
$EndComp
$Comp
L 22R R1
U 1 1 5BCB5983
P 1850 5600
F 0 "R1" H 2060 5560 60  0000 R TNN
F 1 "22R" H 2060 5740 60  0000 R TNN
F 2 "" H 2060 5740 60  0000 C CNN
F 3 "" H 2060 5740 60  0000 C CNN
	1    1850 5600
	-1   0    0    1
$EndComp
$Comp
L STM32F103CBU6 U1
U 1 1 5BCB5982
P 5700 5900
F 0 "U1" H 5100 7600 60  0000 L BNN
F 1 "STM32F103CBU6" H 5100 4100 60  0000 L BNN
F 2 "" H 5100 4100 60  0000 C CNN
F 3 "" H 5100 4100 60  0000 C CNN
	1    5700 5900
	1    0    0    -1
$EndComp
$Comp
L 1uF C2
U 1 1 5BCB5981
P 800 4150
F 0 "C2" V 760 4060 60  0000 R TNN
F 1 "1uF" V 660 4060 60  0000 R TNN
F 2 "" H 660 4060 60  0000 C CNN
F 3 "" H 660 4060 60  0000 C CNN
	1    800 4150
	0    -1   -1   0
$EndComp
$Comp
L 4.7uF C3
U 1 1 5BCB5980
P 1300 4150
F 0 "C3" V 1260 4060 60  0000 R TNN
F 1 "4.7uF" V 1160 4060 60  0000 R TNN
F 2 "" H 1160 4060 60  0000 C CNN
F 3 "" H 1160 4060 60  0000 C CNN
	1    1300 4150
	0    -1   -1   0
$EndComp
$Comp
L 100K R4
U 1 1 5BCB597F
P 6700 6500
F 0 "R4" V 6810 6460 60  0000 R TNN
F 1 "100K" V 6710 6460 60  0000 R TNN
F 2 "" H 6710 6460 60  0000 C CNN
F 3 "" H 6710 6460 60  0000 C CNN
	1    6700 6500
	0    -1   -1   0
$EndComp
$Comp
L 7V-16.000MAAE-T Y1
U 1 1 5BCB597E
P 1350 7200
F 0 "Y1" H 1290 7020 60  0000 L BNN
	1    1350 7200
	1    0    0    -1
$EndComp
$Comp
L 22pF C8
U 1 1 5BCB597D
P 1100 7450
F 0 "C8" V 1060 7360 60  0000 R TNN
F 1 "22pF" V 960 7360 60  0000 R TNN
F 2 "" H 960 7360 60  0000 C CNN
F 3 "" H 960 7360 60  0000 C CNN
	1    1100 7450
	0    -1   -1   0
$EndComp
$Comp
L 22pF C9
U 1 1 5BCB597C
P 1600 7450
F 0 "C9" V 1560 7360 60  0000 R TNN
F 1 "22pF" V 1460 7360 60  0000 R TNN
F 2 "" H 1460 7360 60  0000 C CNN
F 3 "" H 1460 7360 60  0000 C CNN
	1    1600 7450
	0    -1   -1   0
$EndComp
$Comp
L TC2030-IDC-NL P1
U 1 1 5BCB597B
P 650 5950
F 0 "P1" H 400 5500 60  0000 L BNN
	1    650 5950
	1    0    0    -1
$EndComp
$Comp
L 100K R5
U 1 1 5BCB597A
P 8750 6700
F 0 "R5" V 8860 6660 60  0000 R TNN
F 1 "100K" V 8760 6660 60  0000 R TNN
F 2 "" H 8760 6660 60  0000 C CNN
F 3 "" H 8760 6660 60  0000 C CNN
	1    8750 6700
	0    -1   -1   0
$EndComp
$EndSCHEMATC