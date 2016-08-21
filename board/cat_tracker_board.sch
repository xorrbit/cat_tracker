EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328-P IC?
U 1 1 57B924F8
P 5350 3700
F 0 "IC?" H 4600 4950 50  0000 L BNN
F 1 "ATMEGA328-P" H 5750 2300 50  0000 L BNN
F 2 "DIL28" H 5350 3700 50  0000 C CIN
F 3 "" H 5350 3700 50  0000 C CNN
	1    5350 3700
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X06 P?
U 1 1 57B9272D
P 6950 1650
F 0 "P?" H 6950 2000 50  0000 C CNN
F 1 "MicroSD Card Adapter" V 7050 1650 50  0000 C CNN
F 2 "" H 6950 1650 50  0000 C CNN
F 3 "" H 6950 1650 50  0000 C CNN
	1    6950 1650
	1    0    0    -1  
$EndComp
Text GLabel 6450 1400 0    60   Input ~ 0
SD_CS
Text GLabel 5900 1500 0    60   Input ~ 0
SD_SCK
Text GLabel 6450 1600 0    60   Input ~ 0
SD_MOSI
Text GLabel 5900 1700 0    60   Input ~ 0
SD_MISO
Text GLabel 6450 1800 0    60   Input ~ 0
SD_VCC
Text GLabel 5900 1900 0    60   Input ~ 0
SD_GND
$Comp
L +BATT #PWR?
U 1 1 57B92930
P 4100 2600
F 0 "#PWR?" H 4100 2450 50  0001 C CNN
F 1 "+BATT" H 4100 2740 50  0000 C CNN
F 2 "" H 4100 2600 50  0000 C CNN
F 3 "" H 4100 2600 50  0000 C CNN
	1    4100 2600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57B92948
P 4100 5000
F 0 "#PWR?" H 4100 4750 50  0001 C CNN
F 1 "GND" H 4100 4850 50  0000 C CNN
F 2 "" H 4100 5000 50  0000 C CNN
F 3 "" H 4100 5000 50  0000 C CNN
	1    4100 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 2600 4100 2600
Wire Wire Line
	4100 2600 4100 3650
Wire Wire Line
	4100 3200 4450 3200
Wire Wire Line
	4450 2900 4100 2900
Connection ~ 4100 2900
$Comp
L GND #PWR?
U 1 1 57B929C4
P 6700 2100
F 0 "#PWR?" H 6700 1850 50  0001 C CNN
F 1 "GND" H 6700 1950 50  0000 C CNN
F 2 "" H 6700 2100 50  0000 C CNN
F 3 "" H 6700 2100 50  0000 C CNN
	1    6700 2100
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR?
U 1 1 57B929DC
P 6600 1200
F 0 "#PWR?" H 6600 1050 50  0001 C CNN
F 1 "+BATT" H 6600 1340 50  0000 C CNN
F 2 "" H 6600 1200 50  0000 C CNN
F 3 "" H 6600 1200 50  0000 C CNN
	1    6600 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1400 6450 1400
Wire Wire Line
	6750 1500 5900 1500
Wire Wire Line
	6750 1600 6450 1600
Wire Wire Line
	6750 1700 5900 1700
Wire Wire Line
	6750 1800 6450 1800
Wire Wire Line
	6750 1900 5900 1900
Wire Wire Line
	6600 1200 6600 1800
Connection ~ 6600 1800
Wire Wire Line
	6700 2100 6700 1900
Connection ~ 6700 1900
Text GLabel 7300 2800 2    60   Input ~ 0
SD_CS
Text GLabel 6800 3100 2    60   Input ~ 0
SD_SCK
Wire Wire Line
	6800 3100 6350 3100
Text GLabel 7300 3000 2    60   Input ~ 0
SD_MISO
Wire Wire Line
	7300 3000 6350 3000
Wire Wire Line
	7300 2800 6350 2800
Text GLabel 6800 2900 2    60   Input ~ 0
SD_MOSI
Wire Wire Line
	6800 2900 6350 2900
$Comp
L CONN_01X04 P?
U 1 1 57B92C0F
P 4850 1700
F 0 "P?" H 4850 1950 50  0000 C CNN
F 1 "GPS_NMEA" V 4950 1700 50  0000 C CNN
F 2 "" H 4850 1700 50  0000 C CNN
F 3 "" H 4850 1700 50  0000 C CNN
	1    4850 1700
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57B92C70
P 4550 1950
F 0 "#PWR?" H 4550 1700 50  0001 C CNN
F 1 "GND" H 4550 1800 50  0000 C CNN
F 2 "" H 4550 1950 50  0000 C CNN
F 3 "" H 4550 1950 50  0000 C CNN
	1    4550 1950
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR?
U 1 1 57B92C8A
P 4450 1450
F 0 "#PWR?" H 4450 1300 50  0001 C CNN
F 1 "+BATT" H 4450 1590 50  0000 C CNN
F 2 "" H 4450 1450 50  0000 C CNN
F 3 "" H 4450 1450 50  0000 C CNN
	1    4450 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1550 4650 1550
Wire Wire Line
	4550 1550 4550 1950
Wire Wire Line
	4350 1850 4650 1850
Wire Wire Line
	4450 1850 4450 1450
Text GLabel 4350 1650 0    60   Input ~ 0
GPS_TX
Wire Wire Line
	4650 1650 4350 1650
Text GLabel 3850 1750 0    60   Input ~ 0
GPS_RX
Wire Wire Line
	4650 1750 3850 1750
Text GLabel 3850 1550 0    60   Input ~ 0
GPS_GND
Connection ~ 4550 1550
Text GLabel 4350 1850 0    60   Input ~ 0
GPS_VCC
Connection ~ 4450 1850
Text GLabel 6800 2700 2    60   Input ~ 0
GPS_TX
Wire Wire Line
	6800 2700 6350 2700
$Comp
L CP1 C?
U 1 1 57B92DC8
P 4100 3800
F 0 "C?" H 4125 3900 50  0000 L CNN
F 1 "0.1u" H 4125 3700 50  0000 L CNN
F 2 "" H 4100 3800 50  0000 C CNN
F 3 "" H 4100 3800 50  0000 C CNN
	1    4100 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3950 4100 5000
Wire Wire Line
	4450 4900 4100 4900
Connection ~ 4100 4900
Wire Wire Line
	4450 4800 4100 4800
Connection ~ 4100 4800
Connection ~ 4100 3200
$Comp
L R 10K
U 1 1 57B92F02
P 7200 4050
F 0 "10K" V 7280 4050 50  0000 C CNN
F 1 "R" V 7200 4050 50  0000 C CNN
F 2 "" V 7130 4050 50  0000 C CNN
F 3 "" H 7200 4050 50  0000 C CNN
	1    7200 4050
	0    1    1    0   
$EndComp
$Comp
L +BATT #PWR?
U 1 1 57B93075
P 7700 4050
F 0 "#PWR?" H 7700 3900 50  0001 C CNN
F 1 "+BATT" H 7700 4190 50  0000 C CNN
F 2 "" H 7700 4050 50  0000 C CNN
F 3 "" H 7700 4050 50  0000 C CNN
	1    7700 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 4050 7700 4050
Wire Wire Line
	7050 4050 6350 4050
$Comp
L SW_PUSH SW?
U 1 1 57B93118
P 7250 4400
F 0 "SW?" H 7400 4510 50  0000 C CNN
F 1 "RESET" H 7250 4320 50  0000 C CNN
F 2 "" H 7250 4400 50  0000 C CNN
F 3 "" H 7250 4400 50  0000 C CNN
	1    7250 4400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 57B93150
P 7700 4500
F 0 "#PWR?" H 7700 4250 50  0001 C CNN
F 1 "GND" H 7700 4350 50  0000 C CNN
F 2 "" H 7700 4500 50  0000 C CNN
F 3 "" H 7700 4500 50  0000 C CNN
	1    7700 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 4400 7700 4400
Wire Wire Line
	7700 4400 7700 4500
Wire Wire Line
	6750 4400 6950 4400
Wire Wire Line
	6750 3850 6750 4400
Connection ~ 6750 4050
NoConn ~ 6350 2600
NoConn ~ 6350 3200
NoConn ~ 6350 3300
NoConn ~ 6350 3450
NoConn ~ 6350 3550
NoConn ~ 6350 3650
NoConn ~ 6350 3750
NoConn ~ 6350 3850
NoConn ~ 6350 3950
NoConn ~ 6350 4200
NoConn ~ 6350 4300
NoConn ~ 6350 4400
NoConn ~ 6350 4500
NoConn ~ 6350 4600
NoConn ~ 6350 4700
NoConn ~ 6350 4800
NoConn ~ 6350 4900
NoConn ~ 4650 1750
$Comp
L CONN_02X03 P?
U 1 1 57B933DE
P 8900 1700
F 0 "P?" H 8900 1900 50  0000 C CNN
F 1 "ISP" H 8900 1500 50  0000 C CNN
F 2 "" H 8900 500 50  0000 C CNN
F 3 "" H 8900 500 50  0000 C CNN
	1    8900 1700
	1    0    0    -1  
$EndComp
Text GLabel 8450 1600 0    60   Input ~ 0
SD_MISO
Text GLabel 7900 1700 0    60   Input ~ 0
SD_SCK
Text GLabel 8450 1800 0    60   Input ~ 0
RESET
Wire Wire Line
	8650 1600 8450 1600
Wire Wire Line
	8650 1700 7900 1700
Wire Wire Line
	8650 1800 8450 1800
Text GLabel 6900 3850 2    60   Input ~ 0
RESET
Wire Wire Line
	6750 3850 6900 3850
$Comp
L GND #PWR?
U 1 1 57B937FD
P 9250 1900
F 0 "#PWR?" H 9250 1650 50  0001 C CNN
F 1 "GND" H 9250 1750 50  0000 C CNN
F 2 "" H 9250 1900 50  0000 C CNN
F 3 "" H 9250 1900 50  0000 C CNN
	1    9250 1900
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR?
U 1 1 57B93826
P 9350 1500
F 0 "#PWR?" H 9350 1350 50  0001 C CNN
F 1 "+BATT" H 9350 1640 50  0000 C CNN
F 2 "" H 9350 1500 50  0000 C CNN
F 3 "" H 9350 1500 50  0000 C CNN
	1    9350 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1500 9350 1600
Wire Wire Line
	9350 1600 9150 1600
Wire Wire Line
	9150 1800 9250 1800
Wire Wire Line
	9250 1800 9250 1900
Text GLabel 9450 1700 2    60   Input ~ 0
SD_MOSI
Wire Wire Line
	9450 1700 9150 1700
Text Notes 8150 7500 2    60   ~ 0
Cat Tracker Board
$EndSCHEMATC