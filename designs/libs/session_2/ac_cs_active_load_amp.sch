v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 340 -200 380 -200 {lab=VDS}
N 300 -260 300 -230 {lab=VDD}
N 300 -300 300 -260 {lab=VDD}
N 300 -170 300 -140 {lab=VDS}
N 300 -410 300 -360 {lab=VDD}
N 230 -200 300 -200 {lab=VDD}
N 510 -200 550 -200 {lab=VDS}
N 590 -300 590 -260 {lab=VDD}
N 590 -170 590 -140 {lab=VOUT}
N 590 -260 590 -230 {lab=VDD}
N 380 -200 510 -200 {lab=VDS}
N 590 -410 590 -300 {lab=VDD}
N 300 -140 300 -90 {lab=VDS}
N 300 -360 300 -300 {lab=VDD}
N 300 -140 360 -140 {lab=VDS}
N 360 -200 360 -140 {lab=VDS}
N 590 -140 590 -40 {lab=VOUT}
N 300 -30 300 -10 {lab=GND}
N 590 -200 690 -200 {lab=VDD}
N 690 -240 690 -200 {lab=VDD}
N 590 -240 690 -240 {lab=VDD}
N 230 -240 230 -200 {lab=VDD}
N 230 -240 300 -240 {lab=VDD}
N 590 100 590 150 {lab=GND}
N 590 70 720 70 {lab=GND}
N 720 70 720 120 {lab=GND}
N 590 120 720 120 {lab=GND}
N 590 10 590 40 {lab=VOUT}
N 590 -10 590 10 {lab=VOUT}
N 590 150 590 160 {lab=GND}
N 40 210 40 230 {lab=GND}
N 150 120 150 150 {lab=VDD}
N 590 20 660 20 {lab=VOUT}
N 490 70 550 70 {lab=VIN}
N 490 290 490 320 {lab=GND}
N 490 70 490 100 {lab=VIN}
N 490 270 490 290 {lab=GND}
N 150 210 150 250 {lab=GND}
N 40 130 40 210 {lab=GND}
N 490 160 490 210 {lab=#net1}
N 590 -40 590 -10 {lab=VOUT}
C {isource.sym} 300 -60 0 1 {name=iref value=2.5u}
C {lab_pin.sym} 300 -10 0 0 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 300 -410 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -140 2 0 {name=p5 sig_type=std_logic lab=VDS
}
C {lab_pin.sym} 590 -410 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} 570 -200 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 320 -200 0 1 {name=M2
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
C {symbols/nfet_03v3.sym} 570 70 0 0 {name=M3
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
C {vsource.sym} 150 180 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 40 230 0 0 {name=l2 lab=GND}
C {lab_wire.sym} 150 120 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 590 160 2 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_wire.sym} 490 320 2 0 {name=p12 sig_type=std_logic lab=GND}
C {vsource.sym} 490 240 0 1 {name=VBIAS value=.750 savecurrent=false}
C {code_shown.sym} 850 90 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
ac dec 20 1 10G
plot db(v(VOUT))
plot ph(v(VOUT))*180/pi
meas ac dc_gain_linear find vm(VOUT) at=1k
meas ac dc_gain_db  find vdb(VOUT) at=1k
print dc_gain_linear dc_gain_db
.endc
"}
C {lab_wire.sym} 660 20 2 0 {name=p13 sig_type=std_logic lab=VOUT}
C {devices/code_shown.sym} 850 -30 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} 490 70 0 0 {name=p14 sig_type=std_logic lab=VIN}
C {lab_wire.sym} 150 250 2 0 {name=p15 sig_type=std_logic lab=GND}
C {lab_wire.sym} 40 130 0 1 {name=p16 sig_type=std_logic lab=GND}
C {vsource.sym} 490 130 0 1 {name=VIN value= "AC 1" savecurrent=false}
