v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 522.5 -85 {}
N 380 -140 420 -140 {lab=VDS}
N 420 -140 420 -80 {lab=VDS}
N 340 -200 340 -170 {lab=VDD}
N 340 -240 340 -200 {lab=VDD}
N 340 -110 340 -80 {lab=VDS}
N 340 -290 340 -240 {lab=VDD}
N 40 -90 40 -70 {lab=GND}
N 150 -180 150 -150 {lab=VDD}
N 150 -90 150 -50 {lab=GND}
N 40 -170 40 -90 {lab=GND}
N 270 -140 340 -140 {lab=VDD}
N 270 -200 270 -140 {lab=VDD}
N 270 -200 340 -200 {lab=VDD}
N 340 -80 420 -80 {lab=VDS}
N 340 -20 340 10 {lab=GND}
C {isource.sym} 340 -50 0 1 {name=iref value=10u}
C {devices/code_shown.sym} 630 -390 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 340 10 0 0 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 340 -290 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 -80 2 0 {name=p5 sig_type=std_logic lab=VDS
}
C {code_shown.sym} 580 -240 0 0 {name=Simulation only_toplevel=false 

value=
"
.control
    save all @m.xm1.m0[id] @m.xm1.m0[gm] @m.xm1.m0[vds]
    op
    let load_impedance = @m.xm1.m0[vds] / @m.xm1.m0[id]
    print @m.xm1.m0[id]
    print @m.xm1.m0[gm]
    print @m.xm1.m0[vds]
    print @m.xm1.m0[vgs]
    print @m.xm1.m0[vth]
    print load_impedance

.endc
"}
C {vsource.sym} 150 -120 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 40 -70 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 150 -180 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 150 -50 2 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_wire.sym} 40 -170 0 1 {name=p1 sig_type=std_logic lab=GND}
C {symbols/pfet_03v3.sym} 360 -140 0 1 {name=M1
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
