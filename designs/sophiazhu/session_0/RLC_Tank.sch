v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -70 -50 -70 -30 {lab=OUT}
N -70 -50 60 -50 {lab=OUT}
N 60 -50 60 -30 {lab=OUT}
N -0 -50 -0 -30 {lab=OUT}
N -70 30 -70 50 {lab=GND}
N -70 50 -0 50 {lab=GND}
N -0 30 -0 50 {lab=GND}
N -0 50 60 50 {lab=GND}
N 60 30 60 50 {lab=GND}
N -150 50 -70 50 {lab=GND}
N -150 -50 -150 -30 {lab=OUT}
N -150 -50 -70 -50 {lab=OUT}
N -150 30 -150 50 {lab=GND}
N -30 50 -30 60 {lab=GND}
C {res.sym} 0 0 0 1 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {capa.sym} 60 0 0 0 {name=C1
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {ind.sym} -70 0 0 1 {name=L1
m=1
value=1u
footprint=1206
device=inductor}
C {isource.sym} -150 0 0 1 {name=I0 value= "0 AC 1"}
C {code_shown.sym} 120 -140 0 0 {name=Directive only_toplevel=false 

value= "

.control
ac dec 200 10k 1G
let zmag = db(v(OUT))
let zph = ph(v(OUT))*180/pi
plot zmag
plot zph

meas ac f0 when vp(OUT)=0
meas ac zpk max vm(OUT)
let target = zpk/sqrt(2)
meas ac flo when vm(OUT)=$&target rise=1
meas ac fhi when vm(OUT)=$&target fall=1
let Q = f0/(fhi-flo)
print f0 zpk Q
.endc

"}
C {lab_wire.sym} 60 -50 0 1 {name=p1 sig_type=std_logic lab=OUT}
C {gnd.sym} -30 60 0 0 {name=l2 lab=GND}
