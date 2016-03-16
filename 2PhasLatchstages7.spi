*** SPICE deck for cell 2PhasLatchstages7{sch} from library sequentialLogic
*** Created on Mon Feb 15, 2016 16:57:14
*** Last revised on Mon Feb 15, 2016 20:18:57
*** Written on Fri Mar 04, 2016 10:05:48 by Electric VLSI Design System, version 9.06
*** Layout tech: mocmos, foundry MOSIS
*** UC SPICE *** , MIN_RESIST 4.0, MIN_CAPAC 0.1FF
* Model cards are described in this file:
.include /home/josh/Dropbox/OSU_VLSI/Spice/basics.spi

*** SUBCIRCUIT red__PMOS-2-X_5 FROM CELL red:PMOS-2{sch}
.SUBCKT red__PMOS-2-X_5 d g s
** GLOBAL vdd
XPMOSf@0 d g s PMOS  WW='30' LL='2'
.ENDS red__PMOS-2-X_5

*** SUBCIRCUIT red__NMOS-2-X_10_5 FROM CELL red:NMOS-2{sch}
.SUBCKT red__NMOS-2-X_10_5 d g s
** GLOBAL gnd
XNMOSf@0 d g s NMOS WW='31.5' L='2'
.ENDS red__NMOS-2-X_10_5

*** SUBCIRCUIT red__nms3-X_3_5 FROM CELL red:nms3{sch}
.SUBCKT red__nms3-X_3_5 d g g2 g3
** GLOBAL gnd
XNMOS-2@0 net@7 g gnd red__NMOS-2-X_10_5
XNMOS-2@1 net@6 g2 net@7 red__NMOS-2-X_10_5
XNMOS-2@2 d g3 net@6 red__NMOS-2-X_10_5
.ENDS red__nms3-X_3_5

*** SUBCIRCUIT red__nand3-X_5 FROM CELL red:nand3{sch}
.SUBCKT red__nand3-X_5 ina inb inc out
** GLOBAL gnd
** GLOBAL vdd
XPMOS-2@0 out inb vdd red__PMOS-2-X_5 M=1
XPMOS-2@1 out ina vdd red__PMOS-2-X_5 M=1
XPMOS-2@2 out inc vdd red__PMOS-2-X_5 M=1
Xnms3@0 out ina inb inc red__nms3-X_3_5
.ENDS red__nand3-X_5

*** SUBCIRCUIT red__NMOS-0-X_1 FROM CELL red:NMOS-0{sch}
.SUBCKT red__NMOS-0-X_1 d g s
** GLOBAL gnd
XNMOSf@0 d g s NMOS WW='3' L='2'
.ENDS red__NMOS-0-X_1

*** SUBCIRCUIT red__PMOS-0-X_2 FROM CELL red:PMOS-0{sch}
.SUBCKT red__PMOS-0-X_2 d g s
** GLOBAL vdd
XPMOSf@0 d g s PMOS  WW='12' LL='2'
.ENDS red__PMOS-0-X_2

*** SUBCIRCUIT red__nor2-X_1 FROM CELL red:nor2{sch}
.SUBCKT red__nor2-X_1 ina inb out
** GLOBAL gnd
** GLOBAL vdd
XNMOS-0@0 out inb gnd red__NMOS-0-X_1
XNMOS-0@1 out ina gnd red__NMOS-0-X_1
XPMOS-0@0 net@25 ina vdd red__PMOS-0-X_2 M=1
XPMOS-0@1 out inb net@25 red__PMOS-0-X_2 M=1
.ENDS red__nor2-X_1

*** SUBCIRCUIT sequentialLogic__dpLogic FROM CELL sequentialLogic:dpLogic{sch}
.SUBCKT sequentialLogic__dpLogic inn out
** GLOBAL gnd
** GLOBAL vdd
Xnand3@0 vdd vdd net@0 out red__nand3-X_5
Xnor2@0 gnd inn net@0 red__nor2-X_1
.ENDS sequentialLogic__dpLogic

*** SUBCIRCUIT red__NMOS-2-X_3 FROM CELL red:NMOS-2{sch}
.SUBCKT red__NMOS-2-X_3 d g s
** GLOBAL gnd
XNMOSf@0 d g s NMOS WW='9' L='2'
.ENDS red__NMOS-2-X_3

*** SUBCIRCUIT red__PMOS-2-X_3 FROM CELL red:PMOS-2{sch}
.SUBCKT red__PMOS-2-X_3 d g s
** GLOBAL vdd
XPMOSf@0 d g s PMOS  WW='18' LL='2'
.ENDS red__PMOS-2-X_3

*** SUBCIRCUIT red__inv-X_3 FROM CELL red:inv{sch}
.SUBCKT red__inv-X_3 in out
** GLOBAL gnd
** GLOBAL vdd
XNMOS@0 out in gnd red__NMOS-2-X_3
XPMOS@0 out in vdd red__PMOS-2-X_3 M=1
.ENDS red__inv-X_3

*** SUBCIRCUIT red__NMOS-2-X_5 FROM CELL red:NMOS-2{sch}
.SUBCKT red__NMOS-2-X_5 d g s
** GLOBAL gnd
XNMOSf@0 d g s NMOS WW='15' L='2'
.ENDS red__NMOS-2-X_5

*** SUBCIRCUIT red__inv-X_5 FROM CELL red:inv{sch}
.SUBCKT red__inv-X_5 in out
** GLOBAL gnd
** GLOBAL vdd
XNMOS@0 out in gnd red__NMOS-2-X_5
XPMOS@0 out in vdd red__PMOS-2-X_5 M=1
.ENDS red__inv-X_5

*** SUBCIRCUIT red__NMOS-2-X_1 FROM CELL red:NMOS-2{sch}
.SUBCKT red__NMOS-2-X_1 d g s
** GLOBAL gnd
XNMOSf@0 d g s NMOS WW='3' L='2'
.ENDS red__NMOS-2-X_1

*** SUBCIRCUIT red__PMOS-2-X_1 FROM CELL red:PMOS-2{sch}
.SUBCKT red__PMOS-2-X_1 d g s
** GLOBAL vdd
XPMOSf@0 d g s PMOS  WW='6' LL='2'
.ENDS red__PMOS-2-X_1

*** SUBCIRCUIT red__inv-X_1 FROM CELL red:inv{sch}
.SUBCKT red__inv-X_1 in out
** GLOBAL gnd
** GLOBAL vdd
XNMOS@0 out in gnd red__NMOS-2-X_1
XPMOS@0 out in vdd red__PMOS-2-X_1 M=1
.ENDS red__inv-X_1

*** SUBCIRCUIT red__PMOS-0-X_1 FROM CELL red:PMOS-0{sch}
.SUBCKT red__PMOS-0-X_1 d g s
** GLOBAL vdd
XPMOSf@0 d g s PMOS  WW='6' LL='2'
.ENDS red__PMOS-0-X_1

*** SUBCIRCUIT red__inv1-X_1 FROM CELL red:inv1{sch}
.SUBCKT red__inv1-X_1 in out
** GLOBAL gnd
** GLOBAL vdd
XNMOS@0 out in gnd red__NMOS-0-X_1
XPMOS@0 out in vdd red__PMOS-0-X_1 M=1
.ENDS red__inv1-X_1

*** SUBCIRCUIT sequentialLogic__kpr FROM CELL sequentialLogic:kpr{sch}
.SUBCKT sequentialLogic__kpr keep
** GLOBAL gnd
** GLOBAL vdd
XNMOS-0@0 keep net@9 net@0 red__NMOS-0-X_1
XNMOS-0@1 net@0 vdd gnd red__NMOS-0-X_1
XPMOS-0@0 keep net@9 net@4 red__PMOS-0-X_1 M=1
XPMOS-0@1 net@4 gnd vdd red__PMOS-0-X_1 M=1
Xinv1@0 keep net@9 red__inv1-X_1
.ENDS sequentialLogic__kpr

*** SUBCIRCUIT red__NMOS-0-X_3 FROM CELL red:NMOS-0{sch}
.SUBCKT red__NMOS-0-X_3 d g s
** GLOBAL gnd
XNMOSf@0 d g s NMOS WW='9' L='2'
.ENDS red__NMOS-0-X_3

*** SUBCIRCUIT red__PMOS-0-X_3 FROM CELL red:PMOS-0{sch}
.SUBCKT red__PMOS-0-X_3 d g s
** GLOBAL vdd
XPMOSf@0 d g s PMOS  WW='18' LL='2'
.ENDS red__PMOS-0-X_3

*** SUBCIRCUIT sequentialLogic__passgate-SZ_3 FROM CELL sequentialLogic:passgate{sch}
.SUBCKT sequentialLogic__passgate-SZ_3 io0 io1 opq tra
** GLOBAL gnd
** GLOBAL vdd
XNMOS-0@0 io1 tra io0 red__NMOS-0-X_3
XPMOS-0@0 io1 opq io0 red__PMOS-0-X_3 M=1
.ENDS sequentialLogic__passgate-SZ_3

*** SUBCIRCUIT sequentialLogic__Latch FROM CELL sequentialLogic:Latch{sch}
.SUBCKT sequentialLogic__Latch clb clk fb0 inn out
** GLOBAL gnd
** GLOBAL vdd
Xinv@0 fb0 out red__inv-X_3
Xkpr@0 fb0 sequentialLogic__kpr
Xpassgate@0 fb0 inn clb clk sequentialLogic__passgate-SZ_3
.ENDS sequentialLogic__Latch

.global gnd vdd

*** TOP LEVEL CELL: sequentialLogic:2PhasLatchstages7{sch}
XdpLogic@0 n0 p0 sequentialLogic__dpLogic
XdpLogic@1 n1 p1 sequentialLogic__dpLogic
XdpLogic@2 n2 p2 sequentialLogic__dpLogic
XdpLogic@3 n3 p3 sequentialLogic__dpLogic
XdpLogic@4 n4 p4 sequentialLogic__dpLogic
XdpLogic@5 n5 p5 sequentialLogic__dpLogic
XdpLogic@6 n6 p6 sequentialLogic__dpLogic
XdpLogic@7 n7 p7 sequentialLogic__dpLogic
Xinv@1 din ddd red__inv-X_3
Xinv@3 cin clock red__inv-X_5
Xinv@5 net@122 clockbar red__inv-X_5
Xinv@6 cin net@122 red__inv-X_1
Xs0 clockbar clock a0 ddd n0 sequentialLogic__Latch
Xs1 clock clockbar a1 p0 n1 sequentialLogic__Latch
Xs2 clockbar clock s2_fb0 p1 n2 sequentialLogic__Latch
Xs3 clock clockbar s3_fb0 p2 n3 sequentialLogic__Latch
Xs4 clockbar clock s4_fb0 p3 n4 sequentialLogic__Latch
Xs5 clock clockbar s5_fb0 p4 n5 sequentialLogic__Latch
Xs6 clockbar clock s6_fb0 p5 n6 sequentialLogic__Latch
Xs7 clock clockbar s7_fb0 p6 n7 sequentialLogic__Latch

* Spice Code nodes in cell cell 'sequentialLogic:2PhasLatchstages7{sch}'
vdata din gnd pulse 50ps 1 0 10ps 10ps 'data*0.5 -10ps' 'data'
vclk cin gnd pulse 50ps 1 0 10ps 10ps 'clock*0.5 -10ps' 'clock'
.param data = '3*clock'
.param clock = 500ps
.tran 10ps 5ns
.step param clock 200ps 800ps 200ps
vclf cif gnd pulse 50ps 0 1 10ps 10ps 'clock*0.5 -10ps' 'clock'
