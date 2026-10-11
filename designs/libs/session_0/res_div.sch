v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -0 80 -0 {lab=OUT}
N 80 -0 80 30 {lab=OUT}
N 80 90 80 120 {lab=GND}
N -80 0 -40 -0 {lab=IN}
N -80 0 -80 30 {lab=IN}
N -80 90 -80 110 {lab=GND}
N -80 110 80 110 {lab=GND}
C {res.sym} -10 0 3 1 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {res.sym} 80 60 0 0 {name=R2
value=4k
footprint=1206
device=resistor
m=1}
C {lab_wire.sym} 80 0 0 1 {name=p1 sig_type=std_logic lab=OUT}
C {gnd.sym} 80 120 0 0 {name=l1 lab=GND}
C {vsource.sym} -80 60 0 1 {name=V1 value= "SIN(0 1 1k)" savecurrent=false}
C {lab_wire.sym} -80 0 0 0 {name=p2 sig_type=std_logic lab=IN}
C {code_shown.sym} 150 10 0 0 {name=Directive only_toplevel=false 

value= "

.control
tran 10u 5m
plot v(IN) v(OUT)
.endc

"}
