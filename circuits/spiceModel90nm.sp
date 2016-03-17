

.MODEL n NMOS (                                LEVEL   = 54
+VERSION = 4.3            BINUNIT = 1              MOBMOD  = 2
+RDSMOD  = 0              CAPMOD  = 2              EPSROX  = 3.9
+TOXE    = 2.2E-9         NGATE   = 1E20           RSH     = 7.1
+VTH0    = 0.2636929      K1      = 0.5187992      K2      = -0.0927531
+K3      = 1E-3           K3B     = 8.254844       W0      = 1E-10
+LPE0    = 8.922603E-8    LPEB    = 7.01126E-8     DVT0    = 0.0233872
+DVT1    = 0.0370136      DVT2    = 0              DVTP0   = 0
+DVTP1   = 0              DVT0W   = 0              DVT1W   = 0
+DVT2W   = -0.032         U0      = 180.5888911    UA      = 5.020608E-15
+UB      = 1.002568E-26   UC      = -1E-10         EU      = 0.1101638
+VSAT    = 7.526087E5     A0      = 2              AGS     = 0
+B0      = 1.248816E-6    B1      = 1E-7           KETA    = 0.05
+A1      = 0              A2      = 1              WINT    = 4.553671E-15
+LINT    = 3.006484E-12   DWG     = -2.244321E-8   DWB     = 4.456532E-8
+VOFF    = -0.0328158     NFACTOR = 1.8918918      ETA0    = 2.9476E-3
+ETAB    = -0.0117687     DSUB    = 0.1841044      CIT     = 0
+CDSC    = 2.4E-4         CDSCB   = 0              CDSCD   = 0
+PCLM    = 0.4020828      PDIBLC1 = 0.6278172      PDIBLC2 = 0.01
+PDIBLCB = -1E-3          DROUT   = 0.6771686      PSCBE1  = 5.552668E8
+PSCBE2  = 3.09264E-6     PVAG    = 0.0491186      DELTA   = 1.741612E-3
+FPROUT  = 1.689547E-4    RDSW    = 100            RDSWMIN = 100
+RDW     = 100            RDWMIN  = 0              RSW     = 100
+RSWMIN  = 0              PRWG    = 3              PRWB    = 0.099714
+WR      = 1              XPART   = 0.5            CGSO    = 5.099E-11
+CGDO    = 5.099E-11      CGBO    = 0              CF      = 0
+CJS     = 8.93E-4        CJD     = 8.93E-4        MJS     = 0.3003
+MJD     = 0.3003         MJSWS   = 0.2357         MJSWD   = 0.2357
+CJSWS   = 1.59E-10       CJSWD   = 1.59E-10       CJSWGS  = 3.065074E-11
+CJSWGD  = 3.065074E-11   MJSWGS  = 0.1757671      MJSWGD  = 0.1757671
+PBSWS   = 0.4            PBSWD   = 0.4
+PBSWGS  = 0.429054       PBSWGD  = 0.429054       TNOM    = 27
+WKETA   = 0.039914       PKETA   = -1.059394E-3   PETA0   = 0
+PVSAT   = 1.838993E3     SAREF   = 5.5E-7         SBREF   = 5.5E-7
+STETA0  = 0              LODK2   = 1              WLOD    = 2E-6
+KU0     = -4E-7          KVSAT   = 0.01           KVTH0   = 1E-9
+LLODKU0 = 1.0867072      WLODKU0 = 1.0990864
+LLODVTH = 1              WLODVTH = 1              LKU0    = 1E-6
+WKU0    = 1E-6           LODETA0 = 1              LKVTH0  = 1.1E-7
+WKVTH0  = 1.1E-7         PKVTH0  = 0              STK2    = 0               )
*
.MODEL p PMOS (                                LEVEL   = 54
+VERSION = 4.3            BINUNIT = 1              MOBMOD  = 2
+RDSMOD  = 0              CAPMOD  = 2              EPSROX  = 3.9
+TOXE    = 2.4E-9         NGATE   = 1E20           RSH     = 7.4
+VTH0    = -0.1813383     K1      = 0.5040355      K2      = -0.1102364
+K3      = 66.378433      K3B     = 10             W0      = 3.141402E-5
+LPE0    = 6.921141E-8    LPEB    = -3.965941E-8   DVT0    = 0.0105541
+DVT1    = 0.0410644      DVT2    = -4.419248E-5   DVTP0   = 0
+DVTP1   = 0              DVT0W   = 0              DVT1W   = 0
+DVT2W   = -0.032         U0      = 100            UA      = 2.062972E-15
+UB      = 1.02985E-22    UC      = -1.29941E-15   EU      = 1.6350896
+VSAT    = 1.73042E4      A0      = 2              AGS     = 0
+B0      = 6.267244E-7    B1      = 1E-7           KETA    = 0.05
+A1      = 0              A2      = 1              WINT    = 2.635515E-8
+LINT    = 0              DWG     = -7.079877E-8   DWB     = 3.494798E-8
+VOFF    = -0.027961      NFACTOR = 0              ETA0    = 1E-3
+ETAB    = 0              DSUB    = 0.180604       CIT     = 0
+CDSC    = 2.4E-4         CDSCB   = 0              CDSCD   = 0
+PCLM    = 0.1            PDIBLC1 = 0.9871103      PDIBLC2 = 5.643297E-4
+PDIBLCB = 0              DROUT   = 1              PSCBE1  = 2.176353E8
+PSCBE2  = 5.05807E-6     PVAG    = 0.112746       DELTA   = 0.03
+FPROUT  = 9.83849E-6     RDSW    = 412.4573857    RDSWMIN = 100
+RDW     = 100            RDWMIN  = 0              RSW     = 100
+RSWMIN  = 0              PRWG    = 1.228517E-3    PRWB    = 0.1
+WR      = 1              XPART   = 0.5            CGSO    = 5.099E-11
+CGDO    = 5.099E-11      CGBO    = 0              CF      = 0
+CJS     = 6.4337E-9      CJD     = 6.4337E-9      MJS     = 0.475
+MJD     = 0.475          MJSWS   = 0.432          MJSWD   = 0.432
+CJSWS   = 1.084E-9       CJSWD   = 1.084E-9       CJSWGS  = 6.3E-11
+CJSWGD  = 6.3E-11        MJSWGS  = 0.2169436      MJSWGD  = 0.2169436
+PBSWS   = 0.965          PBSWD   = 0.965
+PBSWGS  = 0.9009362      PBSWGD  = 0.9009362      TNOM    = 27
+WKETA   = -0.0364142     PETA0   = 0              PVSAT   = 786.6108609     )

