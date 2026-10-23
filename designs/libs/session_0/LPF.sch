v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -0 110 -0 {lab=OUT}
N 110 -0 110 30 {lab=OUT}
N 110 90 110 130 {lab=GND}
N -100 130 110 130 {lab=GND}
N -100 -0 -30 -0 {lab=IN}
N -100 -0 -100 30 {lab=IN}
N -100 90 -100 130 {lab=GND}
N 0 130 0 140 {lab=GND}
C {res.sym} 0 0 3 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 110 60 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -100 60 0 1 {name=V1 value= "0 AC 1" savecurrent=false}
C {gnd.sym} 0 140 0 0 {name=l1 lab=GND}
C {code_shown.sym} 220 -10 0 0 {name=Directive only_toplevel=false 

value= "

.control
ac dec 50 1 1G
let gain_db = db(v(OUT))
let phase_deg = ph(v(OUT))*180/pi
plot gain_db
plot phase_deg
meas ac f3db when gain_db=-3
wrdata /foss/designs/libs/session_0/Data/LPF_results.txt v(IN) v(OUT) phase_deg
.endc

"}
C {lab_wire.sym} 110 0 0 1 {name=p2 sig_type=std_logic lab=OUT}
C {lab_wire.sym} -100 20 0 1 {name=p3 sig_type=std_logic lab=IN}
