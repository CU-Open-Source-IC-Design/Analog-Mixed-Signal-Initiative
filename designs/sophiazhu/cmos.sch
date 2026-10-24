v {xschem version=3.4.7 file_version=1.2}
K {type=subcircuit
format="@name @pinlist @symname"
template="name=x1"
}
T {@symname} -18 -6 0 0 0.3 0.3 {}
T {@name} 135 -42 0 0 0.2 0.2 {}
P 4 5 130 -30 -130 -30 -130 30 130 30 130 -30 {}
B 5 -152.5 -22.5 -147.5 -17.5 {name=Vd dir=in}
L 4 -150 -20 -130 -20 {}
T {Vd} -125 -24 0 0 0.2 0.2 {}
B 5 -152.5 -2.5 -147.5 2.5 {name=Vg dir=in}
L 4 -150 0 -130 0 {}
T {Vg} -125 -4 0 0 0.2 0.2 {}
B 5 147.5 -22.5 152.5 -17.5 {name=Vout dir=out}
L 4 130 -20 150 -20 {}
T {Vout} 125 -24 0 1 0.2 0.2 {}
B 5 -152.5 17.5 -147.5 22.5 {name=Vs dir=in}
L 4 -150 20 -130 20 {}
T {Vs} -125 16 0 0 0.2 0.2 {}
