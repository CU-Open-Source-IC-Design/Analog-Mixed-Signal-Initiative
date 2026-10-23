v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 0 30 0 80 {lab=GND}
N 0 0 130 0 {lab=GND}
N 130 0 130 50 {lab=GND}
N 0 50 130 50 {lab=GND}
N 0 -60 0 -30 {lab=VOUT}
N 0 -180 0 -140 {lab=VDD}
N 0 -80 0 -60 {lab=VOUT}
N 0 80 0 90 {lab=GND}
N -360 30 -360 50 {lab=GND}
N -250 -60 -250 -30 {lab=VDD}
N 0 -50 70 -50 {lab=VOUT}
N -100 0 -40 0 {lab=VIN}
N -100 110 -100 140 {lab=GND}
N -100 0 -100 30 {lab=VIN}
N -100 90 -100 110 {lab=GND}
N -250 30 -250 70 {lab=GND}
N -360 -50 -360 30 {lab=GND}
C {symbols/nfet_03v3.sym} -20 0 0 0 {name=M1
L=1u
W=10u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {res.sym} 0 -110 0 0 {name=R1
value=10k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -250 0 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -360 50 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -250 -60 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 0 90 2 0 {name=p4 sig_type=std_logic lab=GND}
C {lab_wire.sym} 0 -180 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -100 140 2 0 {name=p6 sig_type=std_logic lab=GND}
C {vsource.sym} -100 60 0 1 {name=VIN value= 1.15 savecurrent=false}
C {code_shown.sym} 260 20 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
save all
op
show m
print v(VOUT)
.endc
"}
C {lab_wire.sym} 70 -50 2 0 {name=p7 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} 260 -100 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} -100 0 0 0 {name=p3 sig_type=std_logic lab=VIN}
C {lab_wire.sym} -250 70 2 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_wire.sym} -360 -50 0 1 {name=p1 sig_type=std_logic lab=GND}
