Multibranched T line
*
*Ugly, multibranched T-line. One line branches into two lines.
*The branch lines have one load on one and two on the other line.
*
.include o_buffer_soic.inc      ; soic package
.include input_struct_soic.inc  ; input buffer structure in soic

*connect power and input
VDD tie0  0 3.3
VSS tie1  0 0

*inductance in Vdd supply
Lvdd tie0 VDD_pin  50nh
cbalance  tie0 VDD_pin 50n

*inductance in Vss supply
Lvss tie1 VSS_pin  20nh

*use only with buffer models
Vin input_pin 0 3.3 PULSE(0 3.3 5e-9 100p 100p 20e-9 40e-9)

*instantiate output buffer
X_test_buffer input_pin output_pin VDD_pin VSS_pin o_buffer_soic

*This is the source termination resistor at the driver output
rsrc output_pin tl_in  30    
rmid junct0 junct1  35    

rbalance1 endpt1 c1out  150
 cbalance1 c1out VSS_pin 2p
rbalance2 endpt2 c2out  150
 cbalance2 c2out VSS_pin 1p

*the transmission lines  
*insert resistor(s) as desired between lines
t1 tl_in   0 junct0 0  z0=50  td=1.0ns
t2 junct1  0 endpt1  0  z0=50  td=0.5ns
t3 junct1  0 endpt2  0  z0=50  td=0.8ns

*subcircuits for the endpoint loads
*.SUBCKT input_struct  vin pair_output e_vdd e_vss
xinput_struct3  endpt1  out2  vdd  0  input_struct_soic
xinput_struct4  endpt2  out3  vdd  0  input_struct_soic
xinput_struct5  endpt2  out4  vdd  0  input_struct_soic

.control
  *set hcopydevtype=postscript
  *set hcopydev=kec3112-clr
  *color0 is background color, color1: grid and text color, 2-15 are for the vectors
  set color0 = rgb:f/f/f
  set color1 = rgb:0/0/0
  set color2 = rgb:f/0/0
  op
  tran 100ps 40ns
  plot   V(VDD_pin) V(endpt1) V(endpt2) xl 1ns 40ns
  *plot   V(VDD_pin) V(tl_in) V(endpt1) xl 1ns 40ns
  hardcopy  out.tmp  V(VDD_pin) V(endpt1) V(endpt2) xl 1ns 40ns 
.endc

.end

