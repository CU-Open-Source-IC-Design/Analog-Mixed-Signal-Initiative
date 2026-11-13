v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -170 -210 -130 -210 {lab=VDS}
N -210 -270 -210 -240 {lab=VDD}
N -210 -310 -210 -270 {lab=VDD}
N -210 -180 -210 -150 {lab=VDS}
N -210 -420 -210 -370 {lab=VDD}
N -280 -210 -210 -210 {lab=VDD}
N 0 -210 40 -210 {lab=VDS}
N 80 -310 80 -270 {lab=VDD}
N 80 -180 80 -150 {lab=VOUT}
N 80 -270 80 -240 {lab=VDD}
N -130 -210 0 -210 {lab=VDS}
N 80 -420 80 -310 {lab=VDD}
N -210 -150 -210 -100 {lab=VDS}
N -210 -370 -210 -310 {lab=VDD}
N -210 -150 -150 -150 {lab=VDS}
N -150 -210 -150 -150 {lab=VDS}
N 80 -150 80 -50 {lab=VOUT}
N -210 -40 -210 -20 {lab=GND}
N 80 -210 180 -210 {lab=VDD}
N 180 -250 180 -210 {lab=VDD}
N 80 -250 180 -250 {lab=VDD}
N -280 -250 -280 -210 {lab=VDD}
N -280 -250 -210 -250 {lab=VDD}
N 80 90 80 140 {lab=GND}
N 80 60 210 60 {lab=GND}
N 210 60 210 110 {lab=GND}
N 80 110 210 110 {lab=GND}
N 80 0 80 30 {lab=VOUT}
N 80 -20 80 0 {lab=VOUT}
N 80 140 80 150 {lab=GND}
N -470 200 -470 220 {lab=GND}
N -360 110 -360 140 {lab=VDD}
N 80 10 150 10 {lab=VOUT}
N -20 60 40 60 {lab=VIN}
N -20 280 -20 310 {lab=GND}
N -20 60 -20 90 {lab=VIN}
N -20 260 -20 280 {lab=GND}
N -360 200 -360 240 {lab=GND}
N -470 120 -470 200 {lab=GND}
N -20 150 -20 200 {lab=#net1}
N 80 -50 80 -20 {lab=VOUT}
C {isource.sym} -210 -70 0 1 {name=iref value=2.5u}
C {lab_pin.sym} -210 -20 0 0 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} -210 -420 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -150 -150 2 0 {name=p5 sig_type=std_logic lab=VDS
}
C {lab_pin.sym} 80 -420 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 60 -210 0 0 {name=M1
L=1u
W=40u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} -190 -210 0 1 {name=M2
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 60 60 0 0 {name=M3
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
C {vsource.sym} -360 170 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -470 220 0 0 {name=l2 lab=GND}
C {lab_wire.sym} -360 110 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 80 150 2 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_wire.sym} -20 310 2 0 {name=p12 sig_type=std_logic lab=GND}
C {vsource.sym} -20 230 0 1 {name=VBIAS value=.76 savecurrent=false}
C {lab_wire.sym} 150 10 2 0 {name=p13 sig_type=std_logic lab=VOUT}
C {lab_wire.sym} -20 60 0 0 {name=p14 sig_type=std_logic lab=VIN}
C {lab_wire.sym} -360 240 2 0 {name=p15 sig_type=std_logic lab=GND}
C {lab_wire.sym} -470 120 0 1 {name=p16 sig_type=std_logic lab=GND}
C {vsource.sym} -20 120 0 1 {name=VIN value= "SIN(0 0.001 1k)" savecurrent=false}
C {code_shown.sym} 330 -30 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 10u 5m
meas tran vin_pp  pp  v(VIN)  from=1m to=5m
meas tran vout_pp pp  v(VOUT) from=1m to=5m
let gain = vout_pp / vin_pp
print gain
*plot gain
plot v(VOUT)
let vout_dc = mean(v(VOUT))
let vout_ac = v(VOUT) - vout_dc
print vout_dc
.endc
"}
C {devices/code_shown.sym} 330 -150 0 0 {name=Models1 only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
