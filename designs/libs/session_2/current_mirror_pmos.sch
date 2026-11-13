v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -350 -90 -310 -90 {lab=VDS}
N -390 -150 -390 -120 {lab=VDD}
N -390 -190 -390 -150 {lab=VDD}
N -390 -60 -390 -30 {lab=VDS}
N -390 -300 -390 -250 {lab=VDD}
N -690 -100 -690 -80 {lab=GND}
N -580 -190 -580 -160 {lab=VDD}
N -580 -100 -580 -60 {lab=GND}
N -690 -180 -690 -100 {lab=GND}
N -460 -90 -390 -90 {lab=VDD}
N -180 -90 -140 -90 {lab=VDS}
N -100 -190 -100 -150 {lab=VDD}
N -100 -60 -100 -30 {lab=GND}
N -100 -150 -100 -120 {lab=VDD}
N -310 -90 -180 -90 {lab=VDS}
N -100 -300 -100 -190 {lab=VDD}
N -390 -30 -390 20 {lab=VDS}
N -390 -250 -390 -190 {lab=VDD}
N -390 -30 -330 -30 {lab=VDS}
N -330 -90 -330 -30 {lab=VDS}
N -100 -30 -100 70 {lab=GND}
N -390 80 -390 100 {lab=GND}
N -100 -90 -0 -90 {lab=VDD}
N -0 -130 -0 -90 {lab=VDD}
N -100 -130 -0 -130 {lab=VDD}
N -460 -130 -460 -90 {lab=VDD}
N -460 -130 -390 -130 {lab=VDD}
C {isource.sym} -390 50 0 1 {name=iref value=700u}
C {devices/code_shown.sym} 140 -190 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} -390 100 0 0 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} -390 -300 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -330 -30 2 0 {name=p5 sig_type=std_logic lab=VDS
}
C {vsource.sym} -580 -130 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -690 -80 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -580 -190 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -580 -60 2 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_wire.sym} -690 -180 0 1 {name=p1 sig_type=std_logic lab=GND}
C {lab_pin.sym} -100 -300 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} -120 -90 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} -370 -90 0 1 {name=M2
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
C {lab_pin.sym} -100 70 0 0 {name=p4 sig_type=std_logic lab=GND}
C {code_shown.sym} 140 -90 0 0 {name=Simulation only_toplevel=false 

value=
"
.control
    save all @m.xm1.m0[id] @m.xm1.m0[gm] @m.xm1.m0[vds]
    op
    print @m.xm1.m0[id]
    print @m.xm1.m0[gm]
    print @m.xm1.m0[vgs]
    print @m.xm2.m0[id]
    print @m.xm2.m0[gm]
    print @m.xm2.m0[vgs]
.endc
"}
