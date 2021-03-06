; thermal.g
; Created by PrintM3D
; for the Crane Quad

; This file declares heater and fan settings.
; Heaters
M305 P0 T100000 B4036		      			  ; Thermistor Config for NTC 100k
M143 H0 S120                   				; Set temperature limit for heater 0 to 120C
M305 P1 T100000 B5060 C1.890000e-7		; Thermistor Config for NTC 100k   Tuned for MK4 nozzles
M143 H1 S260      				            ; Set temperature limit for heater 1 to 260C

; Fans
; For Crane Quad: F0 is Heatsink Fan, F1 is Part Cooling fans, F2 is Case Fan
M106 P0 T45 H1 F50                         ; Set Heatsink Fan F0 to Thermostatic
M106 P1 H-1 F50 L51 X255                   ; Set Part Cooler Fans F1 to Gcode Control
M106 P2 S0.8 F50                           ; Set case fan always on at 80%
;M106 P2 S0 F25000 C"LEDs"                 ; Swap with line above If LEDS connected instead of fan on P2.
