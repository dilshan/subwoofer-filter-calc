EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Band pass filter for powered subwoofers"
Date "2021-04-30"
Rev "1.0.0"
Comp "Dilshan R Jayakody"
Comment1 "jayakody2000lk@gmail.com"
Comment2 "jayakody2000lk.blogspot.com"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Amplifier_Operational:NJM4558 U1
U 1 1 608C11CD
P 5050 3900
F 0 "U1" H 5050 3533 50  0000 C CNN
F 1 "NJM4558" H 5050 3624 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 5050 3900 50  0001 C CNN
F 3 "http://www.njr.com/semicon/PDF/NJM4558_NJM4559_E.pdf" H 5050 3900 50  0001 C CNN
	1    5050 3900
	1    0    0    1   
$EndComp
$Comp
L Device:R R3
U 1 1 608C0CC4
P 4250 4000
F 0 "R3" V 4150 4000 50  0000 C CNN
F 1 "10K" V 4134 4000 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4180 4000 50  0001 C CNN
F 3 "~" H 4250 4000 50  0001 C CNN
	1    4250 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 608C1890
P 3750 4000
F 0 "R2" V 3650 4000 50  0000 C CNN
F 1 "10K" V 3634 4000 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3680 4000 50  0001 C CNN
F 3 "~" H 3750 4000 50  0001 C CNN
	1    3750 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R1
U 1 1 608C1BC8
P 3250 4000
F 0 "R1" V 3150 4000 50  0000 C CNN
F 1 "10K" V 3134 4000 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3180 4000 50  0001 C CNN
F 3 "~" H 3250 4000 50  0001 C CNN
	1    3250 4000
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 4000 4000 4000
$Comp
L Device:C C2
U 1 1 608C389D
P 4300 3400
F 0 "C2" V 4150 3400 50  0000 C CNN
F 1 "0.068MFD" V 4139 3400 50  0001 C CNN
F 2 "Capacitor_THT:C_Rect_L9.0mm_W4.0mm_P7.50mm_MKT" H 4338 3250 50  0001 C CNN
F 3 "~" H 4300 3400 50  0001 C CNN
	1    4300 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 4000 4000 3400
Wire Wire Line
	4000 3400 4150 3400
Connection ~ 4000 4000
Wire Wire Line
	4000 4000 3900 4000
Wire Wire Line
	4750 3800 4600 3800
Wire Wire Line
	4600 3800 4600 3400
Wire Wire Line
	4600 3400 4450 3400
$Comp
L Device:C C3
U 1 1 608C5472
P 4600 4500
F 0 "C3" H 4500 4500 50  0000 R CNN
F 1 "0.0033MFD" H 4485 4545 50  0001 R CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W4.4mm_P5.00mm" H 4638 4350 50  0001 C CNN
F 3 "~" H 4600 4500 50  0001 C CNN
	1    4600 4500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C1
U 1 1 608C65CC
P 3500 4500
F 0 "C1" H 3400 4500 50  0000 R CNN
F 1 "0.022MFD" H 3385 4545 50  0001 R CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W3.5mm_P5.00mm" H 3538 4350 50  0001 C CNN
F 3 "~" H 3500 4500 50  0001 C CNN
	1    3500 4500
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 608C70FE
P 4600 4900
F 0 "#PWR02" H 4600 4650 50  0001 C CNN
F 1 "GND" H 4605 4727 50  0000 C CNN
F 2 "" H 4600 4900 50  0001 C CNN
F 3 "" H 4600 4900 50  0001 C CNN
	1    4600 4900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 608C851C
P 3500 4900
F 0 "#PWR01" H 3500 4650 50  0001 C CNN
F 1 "GND" H 3505 4727 50  0000 C CNN
F 2 "" H 3500 4900 50  0001 C CNN
F 3 "" H 3500 4900 50  0001 C CNN
	1    3500 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3400 5450 3400
Wire Wire Line
	5450 3400 5450 3900
Wire Wire Line
	5450 3900 5350 3900
Connection ~ 4600 3400
$Comp
L Amplifier_Operational:NJM4558 U1
U 2 1 608CEEFA
P 7800 3800
F 0 "U1" H 7800 3433 50  0000 C CNN
F 1 "NJM4558" H 7800 3524 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm_LongPads" H 7800 3800 50  0001 C CNN
F 3 "http://www.njr.com/semicon/PDF/NJM4558_NJM4559_E.pdf" H 7800 3800 50  0001 C CNN
	2    7800 3800
	1    0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 608D478F
P 6950 3900
F 0 "C6" V 6800 3900 50  0000 C CNN
F 1 "0.22MFD" V 6789 3900 50  0001 C CNN
F 2 "Capacitor_THT:C_Rect_L11.0mm_W4.2mm_P10.00mm_MKT" H 6988 3750 50  0001 C CNN
F 3 "~" H 6950 3900 50  0001 C CNN
	1    6950 3900
	0    1    1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 608DCA91
P 6400 3900
F 0 "C5" V 6250 3900 50  0000 C CNN
F 1 "0.22MFD" V 6239 3900 50  0001 C CNN
F 2 "Capacitor_THT:C_Rect_L11.0mm_W4.2mm_P10.00mm_MKT" H 6438 3750 50  0001 C CNN
F 3 "~" H 6400 3900 50  0001 C CNN
	1    6400 3900
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 608DDCED
P 5800 3900
F 0 "C4" V 5650 3900 50  0000 C CNN
F 1 "0.22MFD" V 5639 3900 50  0001 C CNN
F 2 "Capacitor_THT:C_Rect_L11.0mm_W4.2mm_P10.00mm_MKT" H 5838 3750 50  0001 C CNN
F 3 "~" H 5800 3900 50  0001 C CNN
	1    5800 3900
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 608E34D4
P 7300 4500
F 0 "R6" H 7350 4500 50  0000 L CNN
F 1 "39K" H 7370 4455 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7230 4500 50  0001 C CNN
F 3 "~" H 7300 4500 50  0001 C CNN
	1    7300 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 3900 7300 3900
$Comp
L power:GND #PWR04
U 1 1 608FF3BF
P 7300 4900
F 0 "#PWR04" H 7300 4650 50  0001 C CNN
F 1 "GND" H 7305 4727 50  0000 C CNN
F 2 "" H 7300 4900 50  0001 C CNN
F 3 "" H 7300 4900 50  0001 C CNN
	1    7300 4900
	1    0    0    -1  
$EndComp
Connection ~ 7300 3900
Wire Wire Line
	7300 3900 7500 3900
Wire Wire Line
	7400 3700 7500 3700
Wire Wire Line
	7300 3250 7400 3250
Wire Wire Line
	8200 3250 8200 3800
Wire Wire Line
	8200 3800 8100 3800
Wire Wire Line
	7400 3700 7400 3250
Connection ~ 7400 3250
Wire Wire Line
	7400 3250 8200 3250
Wire Wire Line
	7000 3250 6700 3250
$Comp
L Device:R R4
U 1 1 6092344D
P 6100 4500
F 0 "R4" H 6150 4500 50  0000 L CNN
F 1 "15K" H 6170 4455 50  0001 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6030 4500 50  0001 C CNN
F 3 "~" H 6100 4500 50  0001 C CNN
	1    6100 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 3900 6100 3900
Connection ~ 6100 3900
Wire Wire Line
	6100 3900 6250 3900
$Comp
L power:GND #PWR03
U 1 1 6093C88A
P 6100 4900
F 0 "#PWR03" H 6100 4650 50  0001 C CNN
F 1 "GND" H 6105 4727 50  0000 C CNN
F 2 "" H 6100 4900 50  0001 C CNN
F 3 "" H 6100 4900 50  0001 C CNN
	1    6100 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 3900 5450 3900
Connection ~ 5450 3900
Wire Wire Line
	2800 4000 3100 4000
Wire Wire Line
	8500 3800 8200 3800
Connection ~ 8200 3800
Text Label 2800 4000 2    50   ~ 0
LPF-IN
Text Label 8500 3800 0    50   ~ 0
HPF-OUT
Wire Wire Line
	4400 4000 4600 4000
Wire Wire Line
	3400 4000 3500 4000
Wire Wire Line
	3500 4650 3500 4900
Wire Wire Line
	4600 4650 4600 4900
Wire Wire Line
	4600 4350 4600 4000
Connection ~ 4600 4000
Wire Wire Line
	4600 4000 4750 4000
Wire Wire Line
	3500 4350 3500 4000
Connection ~ 3500 4000
Wire Wire Line
	3500 4000 3600 4000
Wire Wire Line
	6100 3900 6100 4350
Wire Wire Line
	6100 4650 6100 4900
Wire Wire Line
	7300 3900 7300 4350
Wire Wire Line
	7300 4650 7300 4900
$Comp
L Device:R R5
U 1 1 609096C2
P 7150 3250
F 0 "R5" V 7050 3250 50  0000 C CNN
F 1 "330R" V 7034 3250 50  0001 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 7080 3250 50  0001 C CNN
F 3 "~" H 7150 3250 50  0001 C CNN
	1    7150 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 3900 6700 3900
Wire Wire Line
	6700 3250 6700 3900
Connection ~ 6700 3900
Wire Wire Line
	6700 3900 6800 3900
$EndSCHEMATC
