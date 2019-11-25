N1 DEF BOOL W_BLADE
N2 G17 G70 G90 G40 G64
N3 M32
N4 STOPRE
;  R50 = Part Area in SqFt
N5 R50=0.00
;  R51 = Linear Feet Cut
N6 R51=0.00
N7 IF $MN_USER_DATA_INT[1]==1
N8 W_BLADE=TRUE
N9 ELSE
N10 W_BLADE=FALSE
N11 ENDIF
N12 PATHLGTH
N13 DO $R44=0
N14 G17 G90 G64 G70 G40
N15 IF W_BLADE==TRUE
N16 G00 SUPA Z=0 BZ=0
N17 ELSE
N18 G00 SUPA Z=0
N19 ENDIF
N20 M5
N21 D0
N22 IF W_BLADE==TRUE
N23 G00 SUPA Z=0 BZ=0
N24 ELSE
N25 G00 SUPA Z=0
N26 ENDIF
N27 ; T1 (001) CORE BIT 1.375 CNC 1
N28 T1 D1
N29 M6
N30 TRANS X=SPIN_X_OFFSET Y=SPIN_Y_OFFSET
N31 G54 CFIN
N32 ; OP 1
N33 G90 G0 X-8.8059 Y-5.3995
N34 Z5.0
N35 S2800 M3
N36 G0 Z4.0
N37 M8
N38 G1 Z-0.125 F2.0
N39 G0 Z4.0
N40 Z5.0
N41 X-7.8843 Y-3.9351
N42 Z4.0
N43 G1 Z-0.125 F2.0
N44 G0 Z4.0
N45 Z5.0
N46 M5
N47 D0
N48 IF W_BLADE==TRUE
N49 G00 SUPA Z=0 BZ=0
N50 ELSE
N51 G00 SUPA Z=0
N52 ENDIF
N53 ; T2 (002) FINGER BIT CNC 2
N54 T2 D1
N55 M6
N56 TRANS X=SPIN_X_OFFSET Y=SPIN_Y_OFFSET
N57 G54 CFIN
N58 ; OP 2
N59 G90 G0 X-8.8059 Y-5.3995
N60 Z5.0
N61 S5500 M3
N62 G4 F1.0
N63 G0 Z4.0
N64 M8
N65 G90 G1 X-8.8059 Y-5.3995 Z0.0 F50.0
N66 M13
N67 DO $R44=1
N68 G41
N69 G90 G1 X-8.2411 Y-5.9818 Z0.0 F10.0
N70 G90 G3 X-7.0516 Y-5.4814 Z0.0 I0.2375 J1.0997 F10.0
N71 G90 G3 X-5.8991 Y-1.4856 Z0.0 I-6.347 J3.9946 F10.0
N72 G90 G3 X-13.3975 Y6.0127 Z0.0 I-7.4983 J0.0 F10.0
N73 G90 G3 X-20.896 Y-1.4856 Z0.0 I0.0002 J-7.4987 F10.0
N74 G90 G3 X-15.9208 Y-8.5482 Z0.0 I7.5003 J-0.0001 F10.0
N75 G90 G3 X-15.3193 Y-8.1211 Z0.0 I0.1515 J0.4237 F10.0
N76 G90 G2 X-15.3278 Y-6.9564 Z0.0 I15662.3898 J114.7986 F10.0
N77 G90 G2 X-17.8663 Y-6.0115 Z0.0 I-0.7655 J1.8257 F10.0
N78 G90 G2 X-17.8694 Y-6.0038 Z0.0 I0.0448 J0.0222 F10.0
N79 G90 G3 X-18.6701 Y-4.9375 Z0.0 I-1.8647 J-0.5664 F10.0
N80 G90 G2 X-18.5939 Y-4.3774 Z0.0 I-0.0424 J0.291 F10.0
N81 G90 G2 X-17.4076 Y-5.1787 Z0.0 I-0.2305 J-1.62 F10.0
N82 G90 G2 X-17.4071 Y-5.1797 Z0.0 I-0.0433 J-0.025 F10.0
N83 G90 G3 X-15.3015 Y-5.8002 Z0.0 I1.3649 J0.749 F10.0
N84 G90 G2 X-14.8936 Y-4.8739 Z0.0 I1.6485 J-0.1729 F10.0
N85 G90 G2 X-18.2642 Y-1.0888 Z0.0 I0.0035 J3.3964 F10.0
N86 G90 G2 X-17.4934 Y0.9465 Z0.0 I2.971 J0.0385 F10.0
N87 G90 G2 X-17.409 Y2.9525 Z0.0 I2.6135 J0.8948 F10.0
N88 G90 G2 X-17.3656 Y2.9823 Z0.0 I0.0458 J-0.0201 F10.0
N89 G90 G2 X-15.273 Y2.2142 Z0.0 I0.1344 J-2.8684 F10.0
N90 G90 G2 X-13.3976 Y2.4626 Z0.0 I1.8864 J-7.0369 F10.0
N91 G90 G2 X-13.3974 Y2.4626 Z0.0 I0.0001 J-0.05 F10.0
N92 G90 G2 X-11.5205 Y2.2142 Z0.0 I-0.0119 J-7.304 F10.0
N93 G90 G2 X-9.4304 Y2.9823 Z0.0 I1.9559 J-2.0943 F10.0
N94 G90 G2 X-9.387 Y2.9525 Z0.0 I-0.0023 J-0.0499 F10.0
N95 G90 G2 X-9.3017 Y0.9465 Z0.0 I-2.5248 J-1.1122 F10.0
N96 G90 G2 X-8.5318 Y-1.0888 Z0.0 I-2.1954 J-1.9937 F10.0
N97 G90 G2 X-11.9123 Y-4.8684 Z0.0 I-3.3661 J-0.3909 F10.0
N98 G90 G2 X-11.4666 Y-6.2156 Z0.0 I-1.4037 J-1.2117 F10.0
N99 G90 G2 X-11.4743 Y-8.1215 Z0.0 I-411.1686 J0.7028 F10.0
N100 G90 G3 X-10.8728 Y-8.5481 Z0.0 I0.45 J-0.0029 F10.0
N101 G90 G3 X-7.0516 Y-5.4814 Z0.0 I-2.5258 J7.0613 F10.0
N102 G90 G3 X-7.1149 Y-4.1924 Z0.0 I-0.9521 J0.5992 F10.0
N103 G40 G90 G1 X-7.8843 Y-3.9351 Z0.0 F10.0
N104 DO $R44=0
N105 M15
N106 G0 Z5.0
N107 M9
;MD14512[5] = 1H
N108 IF $MN_USER_DATA_HEX[5] B_AND 'B00000001'
N109 PARKPAUSE
N110 ELSE
N111 D0
N112 IF W_BLADE==TRUE
N113 G00 SUPA Z=0
N114 ENDIF
N115 M5
N116 SUPA X=$MA_POS_LIMIT_PLUS[X]-0.1 Y=$MA_POS_LIMIT_PLUS[Y]-0.1
N117 MSG ("- PAUSED - REMOVE SINK AND PRESS CYCLE START TO CONTINUE")
N118 M0
N119 D1
N120 M3
N121 MSG("")
N122 ENDIF
N123 M5
N124 D0
N125 IF W_BLADE==TRUE
N126 G00 SUPA Z=0 BZ=0
N127 ELSE
N128 G00 SUPA Z=0
N129 ENDIF
N130 ; T49 (049) A30 R3 POS 0 CNC 2
N131 T49 D1
N132 M6
N133 TRANS X=SPIN_X_OFFSET Y=SPIN_Y_OFFSET
N134 G54 CFIN
N135 ; OP 3
N136 G90 G0 X-8.4366 Y-4.8499
N137 Z5.0
N138 S5500 M3
N139 G4 F1.0
N140 G0 Z4.0
N141 M8
N142 G90 G1 X-8.4366 Y-4.8499 Z0.0 F50.0
N143 M13
N144 DO $R44=1
N145 G41
N146 G90 G1 X-7.0092 Y-5.5081 Z0.0 F50.0
N147 G90 G3 X-5.8491 Y-1.4856 Z0.0 I-6.3893 J4.0212 F50.0
N148 G90 G3 X-7.5009 Y3.2269 Z0.0 I-7.5483 J0.0 F50.0
N149 G90 G3 X-9.2607 Y2.3971 Z0.0 I-0.7812 J-0.6243 F50.0
N150 G90 G2 X-9.3588 Y0.9347 Z0.0 I-2.6511 J-0.5567 F50.0
N151 G90 G2 X-8.5819 Y-1.0914 Z0.0 I-2.1384 J-1.9819 F50.0
N152 G90 G2 X-12.0286 Y-4.8159 Z0.0 I-3.316 J-0.3884 F50.0
N153 G90 G2 X-11.5166 Y-6.2138 Z0.0 I-1.2874 J-1.2642 F50.0
N154 G90 G2 X-11.5202 Y-7.3654 Z0.0 I-411.1186 J0.7009 F50.0
N155 G90 G3 X-10.0807 Y-8.2681 Z0.0 I1.0 J-0.0045 F50.0
N156 G90 G3 X-7.0092 Y-5.5081 Z0.0 I-3.3178 J6.7813 F50.0
N157 G40 G90 G1 X-8.1714 Y-4.5684 Z0.0 F50.0
N158 DO $R44=0
N159 M15
N160 G0 Z5.0
N161 M9
N162 G90 G0 X-9.4749 Y0.8697
N163 Z4.0
N164 M8
N165 G90 G1 X-9.4749 Y0.8697 Z0.0 F50.0
N166 M13
N167 DO $R44=1
N168 G41
N169 G90 G1 X-8.1381 Y2.0792 Z0.0 F50.0
N170 G90 G3 X-9.1579 Y4.7597 Z0.0 I-2.4239 J0.612 F50.0
N171 G90 G3 X-13.3975 Y6.0627 Z0.0 I-4.2395 J-6.2453 F50.0
N172 G90 G3 X-17.637 Y4.7597 Z0.0 I0.0002 J-7.5487 F50.0
N173 G90 G3 X-17.1161 Y2.9331 Z0.0 I0.5616 J-0.8274 F50.0
N174 G90 G2 X-15.2869 Y2.1586 Z0.0 I-0.1151 J-2.8192 F50.0
N175 G90 G2 X-13.3975 Y2.4126 Z0.0 I1.9003 J-6.9814 F50.0
N176 G90 G2 X-11.5065 Y2.1586 Z0.0 I-0.0118 J-7.254 F50.0
N177 G90 G2 X-9.679 Y2.9331 Z0.0 I1.9419 J-2.0388 F50.0
N178 G90 G3 X-7.3985 Y4.6722 Z0.0 I-0.1016 J2.4979 F50.0
N179 G40 G90 G1 X-7.896 Y6.405 Z0.0 F50.0
N180 DO $R44=0
N181 M15
N182 G0 Z5.0
N183 M9
N184 G90 G0 X-15.4413 Y2.6078
N185 Z4.0
N186 M8
N187 G90 G1 X-15.4413 Y2.6078 Z0.0 F50.0
N188 M13
N189 DO $R44=1
N190 G41
N191 G90 G1 X-16.5435 Y4.0344 Z0.0 F50.0
N192 G90 G3 X-19.295 Y3.2258 Z0.0 I-0.7983 J-2.3691 F50.0
N193 G90 G3 X-20.946 Y-1.4856 Z0.0 I5.8977 J-4.7117 F50.0
N194 G90 G3 X-20.4903 Y-4.0692 Z0.0 I7.5503 J-0.0001 F50.0
N195 G90 G3 X-18.8769 Y-4.4661 Z0.0 I0.9396 J0.3422 F50.0
N196 G90 G2 X-18.7269 Y-4.4028 Z0.0 I0.1644 J-0.1804 F50.0
N197 G90 G3 X-17.8896 Y-2.9612 Z0.0 I-0.059 J0.9983 F50.0
N198 G90 G2 X-18.2141 Y-1.0914 Z0.0 I2.9995 J1.4837 F50.0
N199 G90 G2 X-17.4364 Y0.9347 Z0.0 I2.921 J0.0411 F50.0
N200 G90 G2 X-17.5349 Y2.3968 Z0.0 I2.5564 J0.9066 F50.0
N201 G90 G3 X-18.6639 Y5.0331 Z0.0 I-2.447 J0.512 F50.0
N202 G40 G90 G1 X-20.4657 Y4.9742 Z0.0 F50.0
N203 DO $R44=0
N204 M15
N205 G0 Z5.0
N206 M9
N207 M5
N208 D0
N209 IF W_BLADE==TRUE
N210 G00 SUPA Z=0 BZ=0
N211 ELSE
N212 G00 SUPA Z=0
N213 ENDIF
N214 ; T50 (050) A30 R3 POS 1 CNC 2
N215 T50 D1
N216 M6
N217 TRANS X=SPIN_X_OFFSET Y=SPIN_Y_OFFSET
N218 G54 CFIN
N219 ; OP 4
N220 G90 G0 X-8.4366 Y-4.8499
N221 Z5.0
N222 S5500 M3
N223 G4 F1.0
N224 G0 Z4.0
N225 M8
N226 G90 G1 X-8.4366 Y-4.8499 Z0.0 F50.0
N227 M13
N228 DO $R44=1
N229 G41
N230 G90 G1 X-7.0092 Y-5.5081 Z0.0 F120.0
N231 G90 G3 X-5.8491 Y-1.4856 Z0.0 I-6.3893 J4.0212 F120.0
N232 G90 G3 X-7.5009 Y3.2269 Z0.0 I-7.5483 J0.0 F120.0
N233 G90 G3 X-9.2607 Y2.3971 Z0.0 I-0.7812 J-0.6243 F120.0
N234 G90 G2 X-9.3588 Y0.9347 Z0.0 I-2.6511 J-0.5567 F120.0
N235 G90 G2 X-8.5819 Y-1.0914 Z0.0 I-2.1384 J-1.9819 F120.0
N236 G90 G2 X-12.0286 Y-4.8159 Z0.0 I-3.316 J-0.3884 F120.0
N237 G90 G2 X-11.5166 Y-6.2138 Z0.0 I-1.2874 J-1.2642 F120.0
N238 G90 G2 X-11.5202 Y-7.3654 Z0.0 I-411.1186 J0.7009 F120.0
N239 G90 G3 X-10.0807 Y-8.2681 Z0.0 I1.0 J-0.0045 F120.0
N240 G90 G3 X-7.0092 Y-5.5081 Z0.0 I-3.3178 J6.7813 F120.0
N241 G40 G90 G1 X-8.1714 Y-4.5684 Z0.0 F120.0
N242 DO $R44=0
N243 M15
N244 G0 Z5.0
N245 M9
N246 G90 G0 X-9.4749 Y0.8697
N247 Z4.0
N248 M8
N249 G90 G1 X-9.4749 Y0.8697 Z0.0 F50.0
N250 M13
N251 DO $R44=1
N252 G41
N253 G90 G1 X-8.1381 Y2.0792 Z0.0 F120.0
N254 G90 G3 X-9.1579 Y4.7597 Z0.0 I-2.4239 J0.612 F120.0
N255 G90 G3 X-13.3975 Y6.0627 Z0.0 I-4.2395 J-6.2453 F120.0
N256 G90 G3 X-17.637 Y4.7597 Z0.0 I0.0002 J-7.5487 F120.0
N257 G90 G3 X-17.1161 Y2.9331 Z0.0 I0.5616 J-0.8274 F120.0
N258 G90 G2 X-15.2869 Y2.1586 Z0.0 I-0.1151 J-2.8192 F120.0
N259 G90 G2 X-13.3975 Y2.4126 Z0.0 I1.9003 J-6.9814 F120.0
N260 G90 G2 X-11.5065 Y2.1586 Z0.0 I-0.0118 J-7.254 F120.0
N261 G90 G2 X-9.679 Y2.9331 Z0.0 I1.9419 J-2.0388 F120.0
N262 G90 G3 X-7.3985 Y4.6722 Z0.0 I-0.1016 J2.4979 F120.0
N263 G40 G90 G1 X-7.896 Y6.405 Z0.0 F120.0
N264 DO $R44=0
N265 M15
N266 G0 Z5.0
N267 M9
N268 G90 G0 X-15.4413 Y2.6078
N269 Z4.0
N270 M8
N271 G90 G1 X-15.4413 Y2.6078 Z0.0 F50.0
N272 M13
N273 DO $R44=1
N274 G41
N275 G90 G1 X-16.5435 Y4.0344 Z0.0 F120.0
N276 G90 G3 X-19.295 Y3.2258 Z0.0 I-0.7983 J-2.3691 F120.0
N277 G90 G3 X-20.946 Y-1.4856 Z0.0 I5.8977 J-4.7117 F120.0
N278 G90 G3 X-20.4903 Y-4.0692 Z0.0 I7.5503 J-0.0001 F120.0
N279 G90 G3 X-18.8769 Y-4.4661 Z0.0 I0.9396 J0.3422 F120.0
N280 G90 G2 X-18.7269 Y-4.4028 Z0.0 I0.1644 J-0.1804 F120.0
N281 G90 G3 X-17.8896 Y-2.9612 Z0.0 I-0.059 J0.9983 F120.0
N282 G90 G2 X-18.2141 Y-1.0914 Z0.0 I2.9995 J1.4837 F120.0
N283 G90 G2 X-17.4364 Y0.9347 Z0.0 I2.921 J0.0411 F120.0
N284 G90 G2 X-17.5349 Y2.3968 Z0.0 I2.5564 J0.9066 F120.0
N285 G90 G3 X-18.6639 Y5.0331 Z0.0 I-2.447 J0.512 F120.0
N286 G40 G90 G1 X-20.4657 Y4.9742 Z0.0 F120.0
N287 DO $R44=0
N288 M15
N289 G0 Z5.0
N290 M9
N291 M5
N292 D0
N293 IF W_BLADE==TRUE
N294 G00 SUPA Z=0 BZ=0
N295 ELSE
N296 G00 SUPA Z=0
N297 ENDIF
N298 ; T51 (051) A30 R3 POS 2 CNC 2
N299 T51 D1
N300 M6
N301 TRANS X=SPIN_X_OFFSET Y=SPIN_Y_OFFSET
N302 G54 CFIN
N303 ; OP 5
N304 G90 G0 X-8.4366 Y-4.8499
N305 Z5.0
N306 S5500 M3
N307 G4 F1.0
N308 G0 Z4.0
N309 M8
N310 G90 G1 X-8.4366 Y-4.8499 Z0.0 F50.0
N311 M13
N312 DO $R44=1
N313 G41
N314 G90 G1 X-7.0092 Y-5.5081 Z0.0 F120.0
N315 G90 G3 X-5.8491 Y-1.4856 Z0.0 I-6.3893 J4.0212 F120.0
N316 G90 G3 X-7.5009 Y3.2269 Z0.0 I-7.5483 J0.0 F120.0
N317 G90 G3 X-9.2607 Y2.3971 Z0.0 I-0.7812 J-0.6243 F120.0
N318 G90 G2 X-9.3588 Y0.9347 Z0.0 I-2.6511 J-0.5567 F120.0
N319 G90 G2 X-8.5819 Y-1.0914 Z0.0 I-2.1384 J-1.9819 F120.0
N320 G90 G2 X-12.0286 Y-4.8159 Z0.0 I-3.316 J-0.3884 F120.0
N321 G90 G2 X-11.5166 Y-6.2138 Z0.0 I-1.2874 J-1.2642 F120.0
N322 G90 G2 X-11.5202 Y-7.3654 Z0.0 I-411.1186 J0.7009 F120.0
N323 G90 G3 X-10.0807 Y-8.2681 Z0.0 I1.0 J-0.0045 F120.0
N324 G90 G3 X-7.0092 Y-5.5081 Z0.0 I-3.3178 J6.7813 F120.0
N325 G40 G90 G1 X-8.1714 Y-4.5684 Z0.0 F120.0
N326 DO $R44=0
N327 M15
N328 G0 Z5.0
N329 M9
N330 G90 G0 X-9.4749 Y0.8697
N331 Z4.0
N332 M8
N333 G90 G1 X-9.4749 Y0.8697 Z0.0 F50.0
N334 M13
N335 DO $R44=1
N336 G41
N337 G90 G1 X-8.1381 Y2.0792 Z0.0 F120.0
N338 G90 G3 X-9.1579 Y4.7597 Z0.0 I-2.4239 J0.612 F120.0
N339 G90 G3 X-13.3975 Y6.0627 Z0.0 I-4.2395 J-6.2453 F120.0
N340 G90 G3 X-17.637 Y4.7597 Z0.0 I0.0002 J-7.5487 F120.0
N341 G90 G3 X-17.1161 Y2.9331 Z0.0 I0.5616 J-0.8274 F120.0
N342 G90 G2 X-15.2869 Y2.1586 Z0.0 I-0.1151 J-2.8192 F120.0
N343 G90 G2 X-13.3975 Y2.4126 Z0.0 I1.9003 J-6.9814 F120.0
N344 G90 G2 X-11.5065 Y2.1586 Z0.0 I-0.0118 J-7.254 F120.0
N345 G90 G2 X-9.679 Y2.9331 Z0.0 I1.9419 J-2.0388 F120.0
N346 G90 G3 X-7.3985 Y4.6722 Z0.0 I-0.1016 J2.4979 F120.0
N347 G40 G90 G1 X-7.896 Y6.405 Z0.0 F120.0
N348 DO $R44=0
N349 M15
N350 G0 Z5.0
N351 M9
N352 G90 G0 X-15.4413 Y2.6078
N353 Z4.0
N354 M8
N355 G90 G1 X-15.4413 Y2.6078 Z0.0 F50.0
N356 M13
N357 DO $R44=1
N358 G41
N359 G90 G1 X-16.5435 Y4.0344 Z0.0 F120.0
N360 G90 G3 X-19.295 Y3.2258 Z0.0 I-0.7983 J-2.3691 F120.0
N361 G90 G3 X-20.946 Y-1.4856 Z0.0 I5.8977 J-4.7117 F120.0
N362 G90 G3 X-20.4903 Y-4.0692 Z0.0 I7.5503 J-0.0001 F120.0
N363 G90 G3 X-18.8769 Y-4.4661 Z0.0 I0.9396 J0.3422 F120.0
N364 G90 G2 X-18.7269 Y-4.4028 Z0.0 I0.1644 J-0.1804 F120.0
N365 G90 G3 X-17.8896 Y-2.9612 Z0.0 I-0.059 J0.9983 F120.0
N366 G90 G2 X-18.2141 Y-1.0914 Z0.0 I2.9995 J1.4837 F120.0
N367 G90 G2 X-17.4364 Y0.9347 Z0.0 I2.921 J0.0411 F120.0
N368 G90 G2 X-17.5349 Y2.3968 Z0.0 I2.5564 J0.9066 F120.0
N369 G90 G3 X-18.6639 Y5.0331 Z0.0 I-2.447 J0.512 F120.0
N370 G40 G90 G1 X-20.4657 Y4.9742 Z0.0 F120.0
N371 DO $R44=0
N372 M15
N373 G0 Z5.0
N374 M9
N375 M5
N376 D0
N377 IF W_BLADE==TRUE
N378 G00 SUPA Z=0 BZ=0
N379 ELSE
N380 G00 SUPA Z=0
N381 ENDIF
N382 ; T52 (052) A30 R3 POS 3 CNC 2
N383 T52 D1
N384 M6
N385 TRANS X=SPIN_X_OFFSET Y=SPIN_Y_OFFSET
N386 G54 CFIN
N387 ; OP 6
N388 G90 G0 X-8.4366 Y-4.8499
N389 Z5.0
N390 S5500 M3
N391 G4 F1.0
N392 G0 Z4.0
N393 M8
N394 G90 G1 X-8.4366 Y-4.8499 Z0.0 F50.0
N395 M13
N396 DO $R44=1
N397 G41
N398 G90 G1 X-7.0092 Y-5.5081 Z0.0 F50.0
N399 G90 G3 X-5.8491 Y-1.4856 Z0.0 I-6.3893 J4.0212 F50.0
N400 G90 G3 X-7.5009 Y3.2269 Z0.0 I-7.5483 J0.0 F50.0
N401 G90 G3 X-9.2607 Y2.3971 Z0.0 I-0.7812 J-0.6243 F50.0
N402 G90 G2 X-9.3588 Y0.9347 Z0.0 I-2.6511 J-0.5567 F50.0
N403 G90 G2 X-8.5819 Y-1.0914 Z0.0 I-2.1384 J-1.9819 F50.0
N404 G90 G2 X-12.0286 Y-4.8159 Z0.0 I-3.316 J-0.3884 F50.0
N405 G90 G2 X-11.5166 Y-6.2138 Z0.0 I-1.2874 J-1.2642 F50.0
N406 G90 G2 X-11.5202 Y-7.3654 Z0.0 I-411.1186 J0.7009 F50.0
N407 G90 G3 X-10.0807 Y-8.2681 Z0.0 I1.0 J-0.0045 F50.0
N408 G90 G3 X-7.0092 Y-5.5081 Z0.0 I-3.3178 J6.7813 F50.0
N409 G40 G90 G1 X-8.1714 Y-4.5684 Z0.0 F50.0
N410 DO $R44=0
N411 M15
N412 G0 Z5.0
N413 M9
N414 G90 G0 X-9.4749 Y0.8697
N415 Z4.0
N416 M8
N417 G90 G1 X-9.4749 Y0.8697 Z0.0 F50.0
N418 M13
N419 DO $R44=1
N420 G41
N421 G90 G1 X-8.1381 Y2.0792 Z0.0 F50.0
N422 G90 G3 X-9.1579 Y4.7597 Z0.0 I-2.4239 J0.612 F50.0
N423 G90 G3 X-13.3975 Y6.0627 Z0.0 I-4.2395 J-6.2453 F50.0
N424 G90 G3 X-17.637 Y4.7597 Z0.0 I0.0002 J-7.5487 F50.0
N425 G90 G3 X-17.1161 Y2.9331 Z0.0 I0.5616 J-0.8274 F50.0
N426 G90 G2 X-15.2869 Y2.1586 Z0.0 I-0.1151 J-2.8192 F50.0
N427 G90 G2 X-13.3975 Y2.4126 Z0.0 I1.9003 J-6.9814 F50.0
N428 G90 G2 X-11.5065 Y2.1586 Z0.0 I-0.0118 J-7.254 F50.0
N429 G90 G2 X-9.679 Y2.9331 Z0.0 I1.9419 J-2.0388 F50.0
N430 G90 G3 X-7.3985 Y4.6722 Z0.0 I-0.1016 J2.4979 F50.0
N431 G40 G90 G1 X-7.896 Y6.405 Z0.0 F50.0
N432 DO $R44=0
N433 M15
N434 G0 Z5.0
N435 M9
N436 G90 G0 X-15.4413 Y2.6078
N437 Z4.0
N438 M8
N439 G90 G1 X-15.4413 Y2.6078 Z0.0 F50.0
N440 M13
N441 DO $R44=1
N442 G41
N443 G90 G1 X-16.5435 Y4.0344 Z0.0 F50.0
N444 G90 G3 X-19.295 Y3.2258 Z0.0 I-0.7983 J-2.3691 F50.0
N445 G90 G3 X-20.946 Y-1.4856 Z0.0 I5.8977 J-4.7117 F50.0
N446 G90 G3 X-20.4903 Y-4.0692 Z0.0 I7.5503 J-0.0001 F50.0
N447 G90 G3 X-18.8769 Y-4.4661 Z0.0 I0.9396 J0.3422 F50.0
N448 G90 G2 X-18.7269 Y-4.4028 Z0.0 I0.1644 J-0.1804 F50.0
N449 G90 G3 X-17.8896 Y-2.9612 Z0.0 I-0.059 J0.9983 F50.0
N450 G90 G2 X-18.2141 Y-1.0914 Z0.0 I2.9995 J1.4837 F50.0
N451 G90 G2 X-17.4364 Y0.9347 Z0.0 I2.921 J0.0411 F50.0
N452 G90 G2 X-17.5349 Y2.3968 Z0.0 I2.5564 J0.9066 F50.0
N453 G90 G3 X-18.6639 Y5.0331 Z0.0 I-2.447 J0.512 F50.0
N454 G40 G90 G1 X-20.4657 Y4.9742 Z0.0 F50.0
N455 DO $R44=0
N456 M15
N457 G0 Z5.0
N458 M9
N459 M5
N460 D0
N461 IF W_BLADE==TRUE
N462 G00 SUPA Z=0 BZ=0
N463 ELSE
N464 G00 SUPA Z=0
N465 ENDIF
N466 ; T53 (053) A30 R3 POS 4 CNC 2
N467 T53 D1
N468 M6
N469 TRANS X=SPIN_X_OFFSET Y=SPIN_Y_OFFSET
N470 G54 CFIN
N471 ; OP 7
N472 G90 G0 X-8.4366 Y-4.8499
N473 Z5.0
N474 S2500 M3
N475 G4 F1.0
N476 G0 Z4.0
N477 M8
N478 G90 G1 X-8.4366 Y-4.8499 Z0.0 F50.0
N479 M13
N480 DO $R44=1
N481 G41
N482 G90 G1 X-7.0092 Y-5.5081 Z0.0 F45.0
N483 G90 G3 X-5.8491 Y-1.4856 Z0.0 I-6.3893 J4.0212 F45.0
N484 G90 G3 X-7.5009 Y3.2269 Z0.0 I-7.5483 J0.0 F45.0
N485 G90 G3 X-9.2607 Y2.3971 Z0.0 I-0.7812 J-0.6243 F45.0
N486 G90 G2 X-9.3588 Y0.9347 Z0.0 I-2.6511 J-0.5567 F45.0
N487 G90 G2 X-8.5819 Y-1.0914 Z0.0 I-2.1384 J-1.9819 F45.0
N488 G90 G2 X-12.0286 Y-4.8159 Z0.0 I-3.316 J-0.3884 F45.0
N489 G90 G2 X-11.5166 Y-6.2138 Z0.0 I-1.2874 J-1.2642 F45.0
N490 G90 G2 X-11.5202 Y-7.3654 Z0.0 I-411.1186 J0.7009 F45.0
N491 G90 G3 X-10.0807 Y-8.2681 Z0.0 I1.0 J-0.0045 F45.0
N492 G90 G3 X-7.0092 Y-5.5081 Z0.0 I-3.3178 J6.7813 F45.0
N493 G40 G90 G1 X-8.1714 Y-4.5684 Z0.0 F45.0
N494 DO $R44=0
N495 M15
N496 G0 Z5.0
N497 M9
N498 G90 G0 X-9.4749 Y0.8697
N499 Z4.0
N500 M8
N501 G90 G1 X-9.4749 Y0.8697 Z0.0 F50.0
N502 M13
N503 DO $R44=1
N504 G41
N505 G90 G1 X-8.1381 Y2.0792 Z0.0 F45.0
N506 G90 G3 X-9.1579 Y4.7597 Z0.0 I-2.4239 J0.612 F45.0
N507 G90 G3 X-13.3975 Y6.0627 Z0.0 I-4.2395 J-6.2453 F45.0
N508 G90 G3 X-17.637 Y4.7597 Z0.0 I0.0002 J-7.5487 F45.0
N509 G90 G3 X-17.1161 Y2.9331 Z0.0 I0.5616 J-0.8274 F45.0
N510 G90 G2 X-15.2869 Y2.1586 Z0.0 I-0.1151 J-2.8192 F45.0
N511 G90 G2 X-13.3975 Y2.4126 Z0.0 I1.9003 J-6.9814 F45.0
N512 G90 G2 X-11.5065 Y2.1586 Z0.0 I-0.0118 J-7.254 F45.0
N513 G90 G2 X-9.679 Y2.9331 Z0.0 I1.9419 J-2.0388 F45.0
N514 G90 G3 X-7.3985 Y4.6722 Z0.0 I-0.1016 J2.4979 F45.0
N515 G40 G90 G1 X-7.896 Y6.405 Z0.0 F45.0
N516 DO $R44=0
N517 M15
N518 G0 Z5.0
N519 M9
N520 G90 G0 X-15.4413 Y2.6078
N521 Z4.0
N522 M8
N523 G90 G1 X-15.4413 Y2.6078 Z0.0 F50.0
N524 M13
N525 DO $R44=1
N526 G41
N527 G90 G1 X-16.5435 Y4.0344 Z0.0 F45.0
N528 G90 G3 X-19.295 Y3.2258 Z0.0 I-0.7983 J-2.3691 F45.0
N529 G90 G3 X-20.946 Y-1.4856 Z0.0 I5.8977 J-4.7117 F45.0
N530 G90 G3 X-20.4903 Y-4.0692 Z0.0 I7.5503 J-0.0001 F45.0
N531 G90 G3 X-18.8769 Y-4.4661 Z0.0 I0.9396 J0.3422 F45.0
N532 G90 G2 X-18.7269 Y-4.4028 Z0.0 I0.1644 J-0.1804 F45.0
N533 G90 G3 X-17.8896 Y-2.9612 Z0.0 I-0.059 J0.9983 F45.0
N534 G90 G2 X-18.2141 Y-1.0914 Z0.0 I2.9995 J1.4837 F45.0
N535 G90 G2 X-17.4364 Y0.9347 Z0.0 I2.921 J0.0411 F45.0
N536 G90 G2 X-17.5349 Y2.3968 Z0.0 I2.5564 J0.9066 F45.0
N537 G90 G3 X-18.6639 Y5.0331 Z0.0 I-2.447 J0.512 F45.0
N538 G40 G90 G1 X-20.4657 Y4.9742 Z0.0 F45.0
N539 DO $R44=0
N540 M15
N541 G0 Z5.0
N542 M9
N543 M5
N544 D0
N545 IF W_BLADE==TRUE
N546 G00 SUPA Z=0 BZ=0
N547 ELSE
N548 G00 SUPA Z=0
N549 ENDIF
N550 ; T54 (054) A30 R3 POS 5 CNC 2
N551 T54 D1
N552 M6
N553 TRANS X=SPIN_X_OFFSET Y=SPIN_Y_OFFSET
N554 G54 CFIN
N555 ; OP 8
N556 G90 G0 X-8.4366 Y-4.8499
N557 Z5.0
N558 S2500 M3
N559 G4 F1.0
N560 G0 Z4.0
N561 M8
N562 G90 G1 X-8.4366 Y-4.8499 Z0.0 F50.0
N563 M13
N564 DO $R44=1
N565 G41
N566 G90 G1 X-7.0092 Y-5.5081 Z0.0 F45.0
N567 G90 G3 X-5.8491 Y-1.4856 Z0.0 I-6.3893 J4.0212 F45.0
N568 G90 G3 X-7.5009 Y3.2269 Z0.0 I-7.5483 J0.0 F45.0
N569 G90 G3 X-9.2607 Y2.3971 Z0.0 I-0.7812 J-0.6243 F45.0
N570 G90 G2 X-9.3588 Y0.9347 Z0.0 I-2.6511 J-0.5567 F45.0
N571 G90 G2 X-8.5819 Y-1.0914 Z0.0 I-2.1384 J-1.9819 F45.0
N572 G90 G2 X-12.0286 Y-4.8159 Z0.0 I-3.316 J-0.3884 F45.0
N573 G90 G2 X-11.5166 Y-6.2138 Z0.0 I-1.2874 J-1.2642 F45.0
N574 G90 G2 X-11.5202 Y-7.3654 Z0.0 I-411.1186 J0.7009 F45.0
N575 G90 G3 X-10.0807 Y-8.2681 Z0.0 I1.0 J-0.0045 F45.0
N576 G90 G3 X-7.0092 Y-5.5081 Z0.0 I-3.3178 J6.7813 F45.0
N577 G40 G90 G1 X-8.1714 Y-4.5684 Z0.0 F45.0
N578 DO $R44=0
N579 M15
N580 G0 Z5.0
N581 M9
N582 G90 G0 X-9.4749 Y0.8697
N583 Z4.0
N584 M8
N585 G90 G1 X-9.4749 Y0.8697 Z0.0 F50.0
N586 M13
N587 DO $R44=1
N588 G41
N589 G90 G1 X-8.1381 Y2.0792 Z0.0 F45.0
N590 G90 G3 X-9.1579 Y4.7597 Z0.0 I-2.4239 J0.612 F45.0
N591 G90 G3 X-13.3975 Y6.0627 Z0.0 I-4.2395 J-6.2453 F45.0
N592 G90 G3 X-17.637 Y4.7597 Z0.0 I0.0002 J-7.5487 F45.0
N593 G90 G3 X-17.1161 Y2.9331 Z0.0 I0.5616 J-0.8274 F45.0
N594 G90 G2 X-15.2869 Y2.1586 Z0.0 I-0.1151 J-2.8192 F45.0
N595 G90 G2 X-13.3975 Y2.4126 Z0.0 I1.9003 J-6.9814 F45.0
N596 G90 G2 X-11.5065 Y2.1586 Z0.0 I-0.0118 J-7.254 F45.0
N597 G90 G2 X-9.679 Y2.9331 Z0.0 I1.9419 J-2.0388 F45.0
N598 G90 G3 X-7.3985 Y4.6722 Z0.0 I-0.1016 J2.4979 F45.0
N599 G40 G90 G1 X-7.896 Y6.405 Z0.0 F45.0
N600 DO $R44=0
N601 M15
N602 G0 Z5.0
N603 M9
N604 G90 G0 X-15.4413 Y2.6078
N605 Z4.0
N606 M8
N607 G90 G1 X-15.4413 Y2.6078 Z0.0 F50.0
N608 M13
N609 DO $R44=1
N610 G41
N611 G90 G1 X-16.5435 Y4.0344 Z0.0 F45.0
N612 G90 G3 X-19.295 Y3.2258 Z0.0 I-0.7983 J-2.3691 F45.0
N613 G90 G3 X-20.946 Y-1.4856 Z0.0 I5.8977 J-4.7117 F45.0
N614 G90 G3 X-20.4903 Y-4.0692 Z0.0 I7.5503 J-0.0001 F45.0
N615 G90 G3 X-18.8769 Y-4.4661 Z0.0 I0.9396 J0.3422 F45.0
N616 G90 G2 X-18.7269 Y-4.4028 Z0.0 I0.1644 J-0.1804 F45.0
N617 G90 G3 X-17.8896 Y-2.9612 Z0.0 I-0.059 J0.9983 F45.0
N618 G90 G2 X-18.2141 Y-1.0914 Z0.0 I2.9995 J1.4837 F45.0
N619 G90 G2 X-17.4364 Y0.9347 Z0.0 I2.921 J0.0411 F45.0
N620 G90 G2 X-17.5349 Y2.3968 Z0.0 I2.5564 J0.9066 F45.0
N621 G90 G3 X-18.6639 Y5.0331 Z0.0 I-2.447 J0.512 F45.0
N622 G40 G90 G1 X-20.4657 Y4.9742 Z0.0 F45.0
N623 DO $R44=0
N624 M15
N625 G0 Z5.0
N626 M9
N627 M5
N628 D0
N629 IF W_BLADE==TRUE
N630 G00 SUPA Z=0 BZ=0
N631 ELSE
N632 G00 SUPA Z=0
N633 ENDIF
N634 ; T55 (055) A30 R3 POS 6 CNC 2
N635 T55 D1
N636 M6
N637 TRANS X=SPIN_X_OFFSET Y=SPIN_Y_OFFSET
N638 G54 CFIN
N639 ; OP 9
N640 G90 G0 X-8.4366 Y-4.8499
N641 Z5.0
N642 S2500 M3
N643 G4 F1.0
N644 G0 Z4.0
N645 M8
N646 G90 G1 X-8.4366 Y-4.8499 Z0.0 F50.0
N647 M13
N648 DO $R44=1
N649 G41
N650 G90 G1 X-7.0092 Y-5.5081 Z0.0 F45.0
N651 G90 G3 X-5.8491 Y-1.4856 Z0.0 I-6.3893 J4.0212 F45.0
N652 G90 G3 X-7.5009 Y3.2269 Z0.0 I-7.5483 J0.0 F45.0
N653 G90 G3 X-9.2607 Y2.3971 Z0.0 I-0.7812 J-0.6243 F45.0
N654 G90 G2 X-9.3588 Y0.9347 Z0.0 I-2.6511 J-0.5567 F45.0
N655 G90 G2 X-8.5819 Y-1.0914 Z0.0 I-2.1384 J-1.9819 F45.0
N656 G90 G2 X-12.0286 Y-4.8159 Z0.0 I-3.316 J-0.3884 F45.0
N657 G90 G2 X-11.5166 Y-6.2138 Z0.0 I-1.2874 J-1.2642 F45.0
N658 G90 G2 X-11.5202 Y-7.3654 Z0.0 I-411.1186 J0.7009 F45.0
N659 G90 G3 X-10.0807 Y-8.2681 Z0.0 I1.0 J-0.0045 F45.0
N660 G90 G3 X-7.0092 Y-5.5081 Z0.0 I-3.3178 J6.7813 F45.0
N661 G40 G90 G1 X-8.1714 Y-4.5684 Z0.0 F45.0
N662 DO $R44=0
N663 M15
N664 G0 Z5.0
N665 M9
N666 G90 G0 X-9.4749 Y0.8697
N667 Z4.0
N668 M8
N669 G90 G1 X-9.4749 Y0.8697 Z0.0 F50.0
N670 M13
N671 DO $R44=1
N672 G41
N673 G90 G1 X-8.1381 Y2.0792 Z0.0 F45.0
N674 G90 G3 X-9.1579 Y4.7597 Z0.0 I-2.4239 J0.612 F45.0
N675 G90 G3 X-13.3975 Y6.0627 Z0.0 I-4.2395 J-6.2453 F45.0
N676 G90 G3 X-17.637 Y4.7597 Z0.0 I0.0002 J-7.5487 F45.0
N677 G90 G3 X-17.1161 Y2.9331 Z0.0 I0.5616 J-0.8274 F45.0
N678 G90 G2 X-15.2869 Y2.1586 Z0.0 I-0.1151 J-2.8192 F45.0
N679 G90 G2 X-13.3975 Y2.4126 Z0.0 I1.9003 J-6.9814 F45.0
N680 G90 G2 X-11.5065 Y2.1586 Z0.0 I-0.0118 J-7.254 F45.0
N681 G90 G2 X-9.679 Y2.9331 Z0.0 I1.9419 J-2.0388 F45.0
N682 G90 G3 X-7.3985 Y4.6722 Z0.0 I-0.1016 J2.4979 F45.0
N683 G40 G90 G1 X-7.896 Y6.405 Z0.0 F45.0
N684 DO $R44=0
N685 M15
N686 G0 Z5.0
N687 M9
N688 G90 G0 X-15.4413 Y2.6078
N689 Z4.0
N690 M8
N691 G90 G1 X-15.4413 Y2.6078 Z0.0 F50.0
N692 M13
N693 DO $R44=1
N694 G41
N695 G90 G1 X-16.5435 Y4.0344 Z0.0 F45.0
N696 G90 G3 X-19.295 Y3.2258 Z0.0 I-0.7983 J-2.3691 F45.0
N697 G90 G3 X-20.946 Y-1.4856 Z0.0 I5.8977 J-4.7117 F45.0
N698 G90 G3 X-20.4903 Y-4.0692 Z0.0 I7.5503 J-0.0001 F45.0
N699 G90 G3 X-18.8769 Y-4.4661 Z0.0 I0.9396 J0.3422 F45.0
N700 G90 G2 X-18.7269 Y-4.4028 Z0.0 I0.1644 J-0.1804 F45.0
N701 G90 G3 X-17.8896 Y-2.9612 Z0.0 I-0.059 J0.9983 F45.0
N702 G90 G2 X-18.2141 Y-1.0914 Z0.0 I2.9995 J1.4837 F45.0
N703 G90 G2 X-17.4364 Y0.9347 Z0.0 I2.921 J0.0411 F45.0
N704 G90 G2 X-17.5349 Y2.3968 Z0.0 I2.5564 J0.9066 F45.0
N705 G90 G3 X-18.6639 Y5.0331 Z0.0 I-2.447 J0.512 F45.0
N706 G40 G90 G1 X-20.4657 Y4.9742 Z0.0 F45.0
N707 DO $R44=0
N708 M15
N709 G0 Z5.0
N710 M9
N711 M5
N712 D0
N713 G53
N714 IF W_BLADE==TRUE
N715 G00 SUPA Z=0 BZ=0 C=0
N716 ELSE
N717 G00 SUPA Z=0
N718 ENDIF
N719 ;MD14512[5] = 1H
N720 IF $MN_USER_DATA_HEX[5] B_AND 'B00000001'
N721    PARKMACHINE
N722 ELSE
N723    SUPA X=$MA_POS_LIMIT_PLUS[X]-0.1 Y=$MA_POS_LIMIT_PLUS[Y]-0.1
N724 ENDIF
N725 M30
