*** SPICE deck for cell FBLatch{sch} from library ReedJLib_Review
*** Created on Tue Feb 16, 2016 07:22:42
*** Last revised on Thu Feb 18, 2016 11:22:30
*** Written on Thu Feb 18, 2016 14:32:27 by Electric VLSI Design System, version 9.06
*** Layout tech: mocmos, foundry MOSIS
*** UC SPICE *** , MIN_RESIST 4.0, MIN_CAPAC 0.1FF
* Model cards are described in this file:
.include /home/josh/Dropbox/OSU_VLSI/Spice/basics.spi

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

*** SUBCIRCUIT red__NMOS-0-X_1 FROM CELL red:NMOS-0{sch}
.SUBCKT red__NMOS-0-X_1 d g s
** GLOBAL gnd
XNMOSf@0 d g s NMOS WW='3' L='2'
.ENDS red__NMOS-0-X_1

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

*** SUBCIRCUIT red__NMOS-0-X_6 FROM CELL red:NMOS-0{sch}
.SUBCKT red__NMOS-0-X_6 d g s
** GLOBAL gnd
XNMOSf@0 d g s NMOS WW='18' L='2'
.ENDS red__NMOS-0-X_6

*** SUBCIRCUIT red__PMOS-0-X_3 FROM CELL red:PMOS-0{sch}
.SUBCKT red__PMOS-0-X_3 d g s
** GLOBAL vdd
XPMOSf@0 d g s PMOS  WW='18' LL='2'
.ENDS red__PMOS-0-X_3

.global gnd vdd

*** TOP LEVEL CELL: FBLatch{sch}
Xinv@0 din net@47 red__inv-X_1
Xkpr@0 dot sequentialLogic__kpr
Xnm1 net@11 din net@7 red__NMOS-0-X_1
Xnm2 dot net@47 net@7 red__NMOS-0-X_6
Xnm3 net@7 clk gnd red__NMOS-0-X_6
Xpm1 net@11 din vdd red__PMOS-0-X_1 M=1
Xpm2 dot net@11 vdd red__PMOS-0-X_3 M=1
