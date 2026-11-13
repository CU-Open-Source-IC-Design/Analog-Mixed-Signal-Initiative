v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 440 -240 480 -240 {lab=VDS}
N 480 -300 480 -240 {lab=VDS}
N 400 -300 480 -300 {lab=VDS}
N 400 -300 400 -270 {lab=VDS}
N 400 -340 400 -300 {lab=VDS}
N 400 -210 400 -180 {lab=GND}
N 400 -450 400 -400 {lab=VDD}
N 100 -250 100 -230 {lab=GND}
N 210 -340 210 -310 {lab=VDD}
N 210 -250 210 -210 {lab=GND}
N 100 -330 100 -250 {lab=GND}
N 330 -240 400 -240 {lab=GND}
N 330 -240 330 -200 {lab=GND}
N 330 -200 400 -200 {lab=GND}
N 610 -240 650 -240 {lab=VDS}
N 690 -340 690 -300 {lab=VDD}
N 690 -210 690 -180 {lab=GND}
N 690 -240 760 -240 {lab=GND}
N 760 -240 760 -200 {lab=GND}
N 690 -200 760 -200 {lab=GND}
N 690 -300 690 -270 {lab=VDD}
N 480 -240 610 -240 {lab=VDS}
N 690 -450 690 -340 {lab=VDD}
C {symbols/nfet_03v3.sym} 420 -240 0 1 {name=M1
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
C {isource.sym} 400 -370 0 1 {name=iref value=700u}
C {devices/code_shown.sym} 1160 -550 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 400 -180 0 0 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 400 -450 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 -300 2 0 {name=p5 sig_type=std_logic lab=VDS
}
C {code_shown.sym} 1110 -400 0 0 {name=Simulation only_toplevel=false 

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
C {vsource.sym} 210 -280 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 100 -230 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 210 -340 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 210 -210 2 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_wire.sym} 100 -330 0 1 {name=p1 sig_type=std_logic lab=GND}
C {symbols/nfet_03v3.sym} 670 -240 0 0 {name=M2
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
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 690 -180 0 1 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} 690 -450 2 0 {name=p6 sig_type=std_logic lab=VDD}
