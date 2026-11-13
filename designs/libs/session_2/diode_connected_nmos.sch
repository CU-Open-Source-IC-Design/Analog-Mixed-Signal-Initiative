v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 24882.5 -34765 {}
N 24740 -34760 24780 -34760 {lab=VDS}
N 24780 -34820 24780 -34760 {lab=VDS}
N 24700 -34820 24780 -34820 {lab=VDS}
N 24700 -34820 24700 -34790 {lab=VDS}
N 24700 -34860 24700 -34820 {lab=VDS}
N 24700 -34730 24700 -34700 {lab=GND}
N 24700 -34970 24700 -34920 {lab=VDD}
N 24400 -34770 24400 -34750 {lab=GND}
N 24510 -34860 24510 -34830 {lab=VDD}
N 24510 -34770 24510 -34730 {lab=GND}
N 24400 -34850 24400 -34770 {lab=GND}
N 24630 -34760 24700 -34760 {lab=GND}
N 24630 -34760 24630 -34720 {lab=GND}
N 24630 -34720 24700 -34720 {lab=GND}
C {symbols/nfet_03v3.sym} 24720 -34760 0 1 {name=M1
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
C {isource.sym} 24700 -34890 0 1 {name=iref value=10u}
C {devices/code_shown.sym} 24990 -35070 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 24700 -34700 0 0 {name=p3 sig_type=std_logic lab=GND}
C {lab_pin.sym} 24700 -34970 2 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 24780 -34820 2 0 {name=p5 sig_type=std_logic lab=VDS
}
C {code_shown.sym} 24940 -34920 0 0 {name=Simulation only_toplevel=false 

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
C {vsource.sym} 24510 -34800 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 24400 -34750 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 24510 -34860 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 24510 -34730 2 0 {name=p8 sig_type=std_logic lab=GND}
C {lab_wire.sym} 24400 -34850 0 1 {name=p1 sig_type=std_logic lab=GND}
