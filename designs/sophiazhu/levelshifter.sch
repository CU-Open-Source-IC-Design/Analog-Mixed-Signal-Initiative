v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -205 -165 -205 -120 {lab=vhh}
N -135 -165 -135 -120 {lab=#net1}
C {vsource.sym} -205 -90 0 0 {name=V1 value=3 savecurrent=false}
C {symbols/nfet_03v3.sym} 180 30 0 0 {name=M1
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 180 -90 0 0 {name=M2
L=0.28u
W=0.22u
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
C {gnd.sym} -205 -60 0 0 {name=l1 lab=GND}
C {vsource.sym} -135 -90 0 0 {name=V2 value=3 savecurrent=false}
C {gnd.sym} -135 -60 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -205 -155 0 0 {name=p1 sig_type=std_logic lab=vhh}
C {lab_pin.sym} -135 -155 0 0 {name=p2 sig_type=std_logic lab=vdd}
