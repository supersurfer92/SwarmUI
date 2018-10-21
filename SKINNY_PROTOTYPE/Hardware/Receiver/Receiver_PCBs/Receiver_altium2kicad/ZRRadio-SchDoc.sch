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
Title "ZRRadio-SchDoc"
Date "20 10 2018"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +3.3V #PWR?5BCB5964
U 1 1 5BCB5964
P 1100 3900
F 0 "+3.3V_10" H 1100 3900 20  0000 C CNN
F 1 "+3.3V" H 1100 3830 30  0000 C CNN
F 2 "" H 1100 3900 70  0000 C CNN
F 3 "" H 1100 3900 70  0000 C CNN
	1    1100 3900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?5BCB5963
U 1 1 5BCB5963
P 1500 3900
F 0 "+3.3V_11" H 1500 3900 20  0000 C CNN
F 1 "+3.3V" H 1500 3830 30  0000 C CNN
F 2 "" H 1500 3900 70  0000 C CNN
F 3 "" H 1500 3900 70  0000 C CNN
	1    1500 3900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?5BCB5962
U 1 1 5BCB5962
P 2400 3900
F 0 "+3.3V_12" H 2400 3900 20  0000 C CNN
F 1 "+3.3V" H 2400 3830 30  0000 C CNN
F 2 "" H 2400 3900 70  0000 C CNN
F 3 "" H 2400 3900 70  0000 C CNN
	1    2400 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB5961
U 1 1 5BCB5961
P 1150 7150
F 0 "GND_13" H 1150 7290 20  0000 C CNN
F 1 "+GND" H 1150 7260 30  0000 C CNN
F 2 "" H 1150 7150 70  0000 C CNN
F 3 "" H 1150 7150 70  0000 C CNN
	1    1150 7150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB5960
U 1 1 5BCB5960
P 1650 7150
F 0 "GND_14" H 1650 7290 20  0000 C CNN
F 1 "+GND" H 1650 7260 30  0000 C CNN
F 2 "" H 1650 7150 70  0000 C CNN
F 3 "" H 1650 7150 70  0000 C CNN
	1    1650 7150
	1    0    0    -1  
$EndComp
Text Label 350 6500 0 60 ~
RADIO_X1_16MHZ
Text Label 1650 6500 0 60 ~
RADIO_X2_16MHZ
Text Notes 2000 7600 0    120   ~ 12
Crystal
Text Label 4100 4500 0 60 ~
RADIO_X1_16MHZ
Text Label 4100 4600 0 60 ~
RADIO_X2_16MHZ
Text Notes 3950 6150 0    120   ~ 12
Radio Chip
Text Label 1350 4750 0 60 ~
RADIO_SPI
Text Label 4100 4100 0 60 ~
ANT1
Text Label 4100 4000 0 60 ~
ANT2
Text Label 4100 4300 0 60 ~
VDD_PA
Wire Notes Line
	5000 6200 200 6200
Wire Notes Line
	5000 3600 5000 6200
Wire Notes Line
	2700 7700 200 7700
Wire Notes Line
	2700 6200 2700 7700
Wire Notes Line
	1900 7300 2700 7300
Wire Notes Line
	1900 7700 1900 7300
Wire Notes Line
	3800 5900 5000 5900
Wire Notes Line
	3800 6200 3800 5900
Text Notes 7600 5350 0    120   ~ 12
Antenna Circuit (Balun)
Text Label 5900 4200 0 60 ~
ANT1
Text Label 5900 4000 0 60 ~
ANT2
Text Label 5900 4400 0 60 ~
VDD_PA
Wire Notes Line
	9850 5400 5000 5400
Wire Notes Line
	9850 3600 9850 5400
Wire Notes Line
	7550 5100 9850 5100
Wire Notes Line
	7550 5400 7550 5100
$Comp
L GND #PWR?5BCB595F
U 1 1 5BCB595F
P 9050 4200
F 0 "GND_15" H 9050 4340 20  0000 C CNN
F 1 "+GND" H 9050 4310 30  0000 C CNN
F 2 "" H 9050 4200 70  0000 C CNN
F 3 "" H 9050 4200 70  0000 C CNN
	1    9050 4200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?5BCB595E
U 1 1 5BCB595E
P 750 3900
F 0 "+3.3V_13" H 750 3900 20  0000 C CNN
F 1 "+3.3V" H 750 3830 30  0000 C CNN
F 2 "" H 750 3900 70  0000 C CNN
F 3 "" H 750 3900 70  0000 C CNN
	1    750 3900
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR?5BCB595D
U 1 1 5BCB595D
P 350 3900
F 0 "+3.3V_14" H 350 3900 20  0000 C CNN
F 1 "+3.3V" H 350 3830 30  0000 C CNN
F 2 "" H 350 3900 70  0000 C CNN
F 3 "" H 350 3900 70  0000 C CNN
	1    350 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB595C
U 1 1 5BCB595C
P 350 4250
F 0 "GND_16" H 350 4390 20  0000 C CNN
F 1 "+GND" H 350 4360 30  0000 C CNN
F 2 "" H 350 4250 70  0000 C CNN
F 3 "" H 350 4250 70  0000 C CNN
	1    350 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB595B
U 1 1 5BCB595B
P 750 4250
F 0 "GND_17" H 750 4390 20  0000 C CNN
F 1 "+GND" H 750 4360 30  0000 C CNN
F 2 "" H 750 4250 70  0000 C CNN
F 3 "" H 750 4250 70  0000 C CNN
	1    750 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB595A
U 1 1 5BCB595A
P 1100 4250
F 0 "GND_18" H 1100 4390 20  0000 C CNN
F 1 "+GND" H 1100 4360 30  0000 C CNN
F 2 "" H 1100 4250 70  0000 C CNN
F 3 "" H 1100 4250 70  0000 C CNN
	1    1100 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB5959
U 1 1 5BCB5959
P 1500 4250
F 0 "GND_19" H 1500 4390 20  0000 C CNN
F 1 "+GND" H 1500 4360 30  0000 C CNN
F 2 "" H 1500 4250 70  0000 C CNN
F 3 "" H 1500 4250 70  0000 C CNN
	1    1500 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 4200 2500 4200
Wire Wire Line
	2400 4100 2400 4200
Wire Wire Line
	2400 4000 2400 4100
Wire Wire Line
	2400 3900 2400 4000
Wire Wire Line
	2400 4100 2500 4100
Wire Wire Line
	2400 4000 2500 4000
Wire Wire Line
	4400 4800 4100 4800
Wire Wire Line
	2300 5300 2500 5300
Wire Wire Line
	4900 4600 4100 4600
Wire Wire Line
	4900 4500 4100 4500
Wire Wire Line
	2350 4900 2500 4900
Wire Wire Line
	2350 4700 2500 4700
Wire Wire Line
	2350 4600 2500 4600
Wire Wire Line
	2350 4800 2500 4800
Wire Wire Line
	2500 4500 2350 4500
Wire Wire Line
	2500 4400 2500 4500
Wire Wire Line
	2500 5000 2500 5100
Wire Wire Line
	2350 5000 2500 5000
Wire Wire Line
	1150 6500 350 6500
Wire Wire Line
	1150 6750 1150 6500
Wire Wire Line
	1150 6850 1150 6750
Wire Wire Line
	1650 6500 2450 6500
Wire Wire Line
	1650 6750 1650 6500
Wire Wire Line
	1650 6850 1650 6750
Wire Wire Line
	4500 4300 4100 4300
Wire Wire Line
	4400 4100 4100 4100
Wire Wire Line
	4100 4000 4400 4000
Wire Wire Line
	6350 4200 5900 4200
Wire Wire Line
	5900 4000 6350 4000
Wire Wire Line
	6300 4400 6350 4400
Wire Wire Line
	5900 4400 6300 4400
Wire Wire Line
	7450 4400 7450 4700
Wire Wire Line
	1100 4200 1100 4250
Wire Wire Line
	1500 4200 1500 4250
Wire Wire Line
	350 4200 350 4250
Wire Wire Line
	750 4200 750 4250
$Comp
L GND #PWR?5BCB5958
U 1 1 5BCB5958
P 2300 5600
F 0 "GND_20" H 2300 5740 20  0000 C CNN
F 1 "+GND" H 2300 5710 30  0000 C CNN
F 2 "" H 2300 5600 70  0000 C CNN
F 3 "" H 2300 5600 70  0000 C CNN
	1    2300 5600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB5957
U 1 1 5BCB5957
P 4400 5300
F 0 "GND_21" H 4400 5440 20  0000 C CNN
F 1 "+GND" H 4400 5410 30  0000 C CNN
F 2 "" H 4400 5300 70  0000 C CNN
F 3 "" H 4400 5300 70  0000 C CNN
	1    4400 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5100 4100 5000
Wire Wire Line
	4100 5200 4100 5100
Wire Wire Line
	4100 5300 4100 5200
Wire Wire Line
	4100 5400 4100 5300
$Comp
L GND #PWR?5BCB5956
U 1 1 5BCB5956
P 4100 5400
F 0 "GND_22" H 4100 5540 20  0000 C CNN
F 1 "+GND" H 4100 5510 30  0000 C CNN
F 2 "" H 4100 5400 70  0000 C CNN
F 3 "" H 4100 5400 70  0000 C CNN
	1    4100 5400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB5955
U 1 1 5BCB5955
P 6300 4700
F 0 "GND_23" H 6300 4840 20  0000 C CNN
F 1 "+GND" H 6300 4810 30  0000 C CNN
F 2 "" H 6300 4700 70  0000 C CNN
F 3 "" H 6300 4700 70  0000 C CNN
	1    6300 4700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB5954
U 1 1 5BCB5954
P 7450 4700
F 0 "GND_24" H 7450 4840 20  0000 C CNN
F 1 "+GND" H 7450 4810 30  0000 C CNN
F 2 "" H 7450 4700 70  0000 C CNN
F 3 "" H 7450 4700 70  0000 C CNN
	1    7450 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4000 7850 4050
Wire Wire Line
	8550 4000 8550 4050
Wire Wire Line
	8450 4000 8550 4000
$Comp
L GND #PWR?5BCB5953
U 1 1 5BCB5953
P 7850 4550
F 0 "GND_25" H 7850 4690 20  0000 C CNN
F 1 "+GND" H 7850 4660 30  0000 C CNN
F 2 "" H 7850 4550 70  0000 C CNN
F 3 "" H 7850 4550 70  0000 C CNN
	1    7850 4550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?5BCB5952
U 1 1 5BCB5952
P 8550 4550
F 0 "GND_26" H 8550 4690 20  0000 C CNN
F 1 "+GND" H 8550 4660 30  0000 C CNN
F 2 "" H 8550 4550 70  0000 C CNN
F 3 "" H 8550 4550 70  0000 C CNN
	1    8550 4550
	1    0    0    -1  
$EndComp
Text Notes 7900 5050 0    60   ~ 12
pi-network in case
Wire Wire Line
	8550 4000 8850 4000
Wire Wire Line
	7850 4000 7450 4000
Wire Wire Line
	7950 4000 7850 4000
Connection ~ 1150 6750
Connection ~ 1150 6500
Connection ~ 1650 6750
Connection ~ 1650 6500
Connection ~ 2400 4100
Connection ~ 2400 4000
Connection ~ 4100 5400
Connection ~ 4100 5300
Connection ~ 4100 5200
Connection ~ 4100 5100
Connection ~ 6300 4400
Connection ~ 7850 4000
Connection ~ 8550 4000
$Comp
L nRF24L01+ U3
U 1 1 5BCB5951
P 3300 4700
F 0 "U3" H 2800 5500 60  0000 L BNN
F 1 "nRF24L01+" H 2800 3800 60  0000 L BNN
F 2 "" H 2800 3800 60  0000 C CNN
F 3 "" H 2800 3800 60  0000 C CNN
	1    3300 4700
	1    0    0    -1
$EndComp
$Comp
L 2450BM14A0002T B1
U 1 1 5BCB5950
P 6900 4200
F 0 "B1" H 6550 4500 60  0000 L BNN
	1    6900 4200
	1    0    0    -1
$EndComp
$Comp
L 2.2nF C16
U 1 1 5BCB594F
P 6300 4550
F 0 "C16" V 6260 4460 60  0000 R TNN
F 1 "2.2nF" V 6160 4460 60  0000 R TNN
F 2 "" H 6160 4460 60  0000 C CNN
F 3 "" H 6160 4460 60  0000 C CNN
	1    6300 4550
	0    -1   -1   0
$EndComp
$Comp
L 142-4701-801 A1
U 1 1 5BCB594E
P 9050 4000
F 0 "A1" H 8900 4000 60  0000 R BNN
	1    9050 4000
	-1    0    0    -1
$EndComp
$Comp
L 100nF C12
U 1 1 5BCB594D
P 350 4050
F 0 "C12" V 310 3960 60  0000 R TNN
F 1 "100nF" V 210 3960 60  0000 R TNN
F 2 "" H 210 3960 60  0000 C CNN
F 3 "" H 210 3960 60  0000 C CNN
	1    350 4050
	0    -1   -1   0
$EndComp
$Comp
L 100nF C13
U 1 1 5BCB594C
P 750 4050
F 0 "C13" V 710 3960 60  0000 R TNN
F 1 "100nF" V 610 3960 60  0000 R TNN
F 2 "" H 610 3960 60  0000 C CNN
F 3 "" H 610 3960 60  0000 C CNN
	1    750 4050
	0    -1   -1   0
$EndComp
$Comp
L 0R R10
U 1 1 5BCB594B
P 8150 4000
F 0 "R10" H 8040 4040 60  0000 L BNN
F 1 "0R" H 8040 3860 60  0000 L BNN
F 2 "" H 8040 3860 60  0000 C CNN
F 3 "" H 8040 3860 60  0000 C CNN
	1    8150 4000
	1    0    0    -1
$EndComp
$Comp
L 0402-NC R11
U 1 1 5BCB594A
P 7850 4350
F 0 "R11" V 7960 4310 60  0000 R TNN
F 1 "NC" V 7860 4310 60  0000 R TNN
F 2 "" H 7860 4310 60  0000 C CNN
F 3 "" H 7860 4310 60  0000 C CNN
	1    7850 4350
	0    -1   -1   0
$EndComp
$Comp
L 0402-NC R12
U 1 1 5BCB5949
P 8550 4350
F 0 "R12" V 8660 4310 60  0000 R TNN
F 1 "NC" V 8560 4310 60  0000 R TNN
F 2 "" H 8560 4310 60  0000 C CNN
F 3 "" H 8560 4310 60  0000 C CNN
	1    8550 4350
	0    -1   -1   0
$EndComp
$Comp
L 10nF C14
U 1 1 5BCB5948
P 1100 4050
F 0 "C14" V 1060 3960 60  0000 R TNN
F 1 "10nF" V 960 3960 60  0000 R TNN
F 2 "" H 960 3960 60  0000 C CNN
F 3 "" H 960 3960 60  0000 C CNN
	1    1100 4050
	0    -1   -1   0
$EndComp
$Comp
L 1nF C15
U 1 1 5BCB5947
P 1500 4050
F 0 "C15" V 1460 3960 60  0000 R TNN
F 1 "1nF" V 1360 3960 60  0000 R TNN
F 2 "" H 1360 3960 60  0000 C CNN
F 3 "" H 1360 3960 60  0000 C CNN
	1    1500 4050
	0    -1   -1   0
$EndComp
$Comp
L 33nF C17
U 1 1 5BCB5946
P 2300 5450
F 0 "C17" V 2260 5360 60  0000 R TNN
F 1 "33nF" V 2160 5360 60  0000 R TNN
F 2 "" H 2160 5360 60  0000 C CNN
F 3 "" H 2160 5360 60  0000 C CNN
	1    2300 5450
	0    -1   -1   0
$EndComp
$Comp
L 22K R13
U 1 1 5BCB5945
P 4400 5100
F 0 "R13" V 4510 5060 60  0000 R TNN
F 1 "22K" V 4410 5060 60  0000 R TNN
F 2 "" H 4410 5060 60  0000 C CNN
F 3 "" H 4410 5060 60  0000 C CNN
	1    4400 5100
	0    -1   -1   0
$EndComp
$Comp
L 7V-16.000MAAE-T Y2
U 1 1 5BCB5944
P 1400 6500
F 0 "Y2" H 1460 6420 60  0000 R TNN
F 1 "7V-16.000MAAE-T" H 1300 6400 60  0000 R TNN
F 2 "" H 1300 6400 60  0000 C CNN
F 3 "" H 1300 6400 60  0000 C CNN
	1    1400 6500
	-1   0    0    1
$EndComp
$Comp
L 22pF C18
U 1 1 5BCB5943
P 1150 7000
F 0 "C18" V 1110 6910 60  0000 R TNN
F 1 "22pF" V 1010 6910 60  0000 R TNN
F 2 "" H 1010 6910 60  0000 C CNN
F 3 "" H 1010 6910 60  0000 C CNN
	1    1150 7000
	0    -1   -1   0
$EndComp
$Comp
L 22pF C19
U 1 1 5BCB5942
P 1650 7000
F 0 "C19" V 1610 6910 60  0000 R TNN
F 1 "22pF" V 1510 6910 60  0000 R TNN
F 2 "" H 1510 6910 60  0000 C CNN
F 3 "" H 1510 6910 60  0000 C CNN
	1    1650 7000
	0    -1   -1   0
$EndComp
$Comp
L 1M R14
U 1 1 5BCB5941
P 1350 6750
F 0 "R14" H 1240 6790 60  0000 L BNN
F 1 "1M" H 1240 6610 60  0000 L BNN
F 2 "" H 1240 6610 60  0000 C CNN
F 3 "" H 1240 6610 60  0000 C CNN
	1    1350 6750
	1    0    0    -1
$EndComp
$EndSCHEMATC