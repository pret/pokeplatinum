    .include "macros/scrcmd.inc"

    .data

    .long _00B6-.-4
    .long _0126-.-4
    .long _0365-.-4
    .long _0140-.-4
    .long _0365-.-4
    .long _1084-.-4
    .long _07F2-.-4
    .long _0800-.-4
    .long _08D8-.-4
    .long _08EB-.-4
    .long _090A-.-4
    .long _091D-.-4
    .long _0930-.-4
    .long _0943-.-4
    .long _0962-.-4
    .long _0975-.-4
    .long _10AA-.-4
    .long _118B-.-4
    .long _1199-.-4
    .long _11A7-.-4
    .long _11B5-.-4
    .long _11C3-.-4
    .long _11D1-.-4
    .long _11DF-.-4
    .long _11ED-.-4
    .long _11FB-.-4
    .long _1209-.-4
    .long _1217-.-4
    .long _1225-.-4
    .long _1233-.-4
    .long _1241-.-4
    .long _124F-.-4
    .long _125D-.-4
    .long _126B-.-4
    .long _1279-.-4
    .long _1287-.-4
    .long _1295-.-4
    .long _12A3-.-4
    .long _12B1-.-4
    .long _12BF-.-4
    .long _12CD-.-4
    .long _12DB-.-4
    .long _12E9-.-4
    .long _12F7-.-4
    .long _174A-.-4
    .short 0xFD13

_00B6:
    SetFlag 0x9CC
    SetFlag 0x2A1
    ScrCmd_2DF 0x40AB
    ScrCmd_1B7 0x4002, 5
    CompareVar 0x4002, 0
    GoToIf 1, _00FE
    CompareVar 0x4002, 1
    GoToIf 1, _0108
    CompareVar 0x4002, 2
    GoToIf 1, _0112
    CompareVar 0x4002, 3
    GoToIf 1, _011C
    End

_00FE:
    ScrCmd_186 15, 28, 14
    End

_0108:
    ScrCmd_186 15, 38, 8
    End

_0112:
    ScrCmd_186 15, 40, 21
    End

_011C:
    ScrCmd_186 15, 48, 41
    End

_0126:
    ScrCmd_060
    SetVar 0x8001, 1
    ApplyMovement 0xFF, _03B0
    WaitMovement
    GoTo _015A
    End

_0140:
    ScrCmd_060
    SetVar 0x8001, 2
    ApplyMovement 0xFF, _03B8
    WaitMovement
    GoTo _015A
    End

_015A:
    ScrCmd_22D 2, 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _0195
    GoTo _0174
    End

_0174:
    SetVar 0x4000, 0
    GoTo _0994
    End

_0182:
    ScrCmd_02C 0
    ScrCmd_034
    ApplyMovement 0xFF, _03C0
    WaitMovement
    ScrCmd_061
    End

_0195:
    SetVar 0x4000, 1
    GoTo _0ACC
    End

_01A3:
    ScrCmd_02C 1
    ScrCmd_034
    ApplyMovement 0xFF, _03C0
    WaitMovement
    ScrCmd_061
    End

_01B6:
    SetVar 0x400A, 0
    ScrCmd_177 0x400B
    SetVar 0x400C, 0
    GoTo _01CE
    End

_01CE:
    ScrCmd_198 0x400A, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _026D
    CompareVar 0x4000, 0
    CallIf 1, _0C50
    CompareVar 0x4000, 1
    CallIf 1, _0D36
    CompareVar 0x800C, 0
    GoToIf 1, _026D
    ScrCmd_0D6 0, 0x400A
    CompareVar 0x400C, 0
    GoToIf 1, _0229
    CompareVar 0x400C, 0
    GoToIf 5, _024B
    End

_0229:
    AddVar 0x400C, 1
    ScrCmd_02C 2
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0299
    GoTo _026D
    End

_024B:
    AddVar 0x400C, 1
    ScrCmd_02C 4
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0299
    GoTo _026D
    End

_026D:
    AddVar 0x400A, 1
    SubVar 0x400B, 1
    CompareVar 0x400B, 0
    GoToIf 5, _01CE
    ScrCmd_02C 5
    ScrCmd_034
    ApplyMovement 0xFF, _03C0
    WaitMovement
    ScrCmd_061
    End

_0299:
    ScrCmd_14E
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    SetVar 0x409D, 0x400A
    ScrCmd_198 0x400A, 0x409A
    GoTo _0E48
    End

_02BB:
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_02C9:
    ScrCmd_064 0x8002
    CompareVar 0x8001, 1
    CallIf 1, _032A
    CompareVar 0x8001, 2
    CallIf 1, _0338
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetVar 0x4099, 1
    ScrCmd_215
    Call _03DC
    ScrCmd_27C 0, 0x409D
    ScrCmd_02C 3
    ScrCmd_034
    ApplyMovement 0xFF, _03C8
    ApplyMovement 0x8002, _03C8
    WaitMovement
    ScrCmd_161
    ScrCmd_06D 0x8002, 48
    ScrCmd_061
    End

_032A:
    ScrCmd_187 0x8002, 12, 2, 47, 2
    Return

_0338:
    ScrCmd_187 0x8002, 51, 2, 47, 3
    Return

    .byte 188
    .byte 0
    .byte 6
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 189
    .byte 0
    .byte 44
    .byte 0
    .byte 5
    .byte 52
    .byte 0
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 97
    .byte 0
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0365:
    ScrCmd_060
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_162
    GoTo _037D
    End

_037D:
    ScrCmd_065 5
    GoTo _0389
    End

_0389:
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    SetVar 0x4099, 0
    ScrCmd_02C 6
    ScrCmd_034
    ApplyMovement 0xFF, _03C0
    WaitMovement
    ScrCmd_061
    End

    .balign 4, 0
_03B0:
    MoveAction_022
    EndMovement

    .balign 4, 0
_03B8:
    MoveAction_023
    EndMovement

    .balign 4, 0
_03C0:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_03C8:
    MoveAction_00C
    EndMovement

    .byte 85
    .byte 0
    .byte 2
    .byte 0
    .byte 2
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_03DC:
    ScrCmd_1B7 0x800C, 5
    CompareVar 0x800C, 0
    CallIf 1, _040A
    CompareVar 0x800C, 0
    CallIf 5, _0412
    ScrCmd_217 0x409C, 0x409A
    GoTo _041A
    End

_040A:
    SetVar 0x409B, 0
    Return

_0412:
    SetVar 0x409B, 1
    Return

_041A:
    ScrCmd_1B7 0x800C, 100
    CompareVar 0x800C, 20
    GoToIf 0, _0490
    CompareVar 0x800C, 35
    GoToIf 0, _0498
    CompareVar 0x800C, 50
    GoToIf 0, _04A0
    CompareVar 0x800C, 65
    GoToIf 0, _04A8
    CompareVar 0x800C, 72
    GoToIf 0, _04B0
    CompareVar 0x800C, 79
    GoToIf 0, _04B8
    CompareVar 0x800C, 86
    GoToIf 0, _04C0
    CompareVar 0x800C, 93
    GoToIf 0, _04C8
    GoTo _04D0
    End

_0490:
    SetVar 0x409F, 176
    Return

_0498:
    SetVar 0x409F, 175
    Return

_04A0:
    SetVar 0x409F, 177
    Return

_04A8:
    SetVar 0x409F, 178
    Return

_04B0:
    SetVar 0x409F, 179
    Return

_04B8:
    SetVar 0x409F, 180
    Return

_04C0:
    SetVar 0x409F, 181
    Return

_04C8:
    SetVar 0x409F, 182
    Return

_04D0:
    SetVar 0x409F, 183
    Return

_04D8:
    SetVar 0x8000, 0x409B
    ScrCmd_215
    Call _03DC
    CompareVar 0x8000, 0
    GoToIf 1, _04FB
    GoTo _056C
    End

_04FB:
    SetVar 0x8004, 0x409F
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0595
    GoTo _054D
    End

_0524:
    SetVar 0x8004, 0x409F
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _05DD
    GoTo _054D
    End

_054D:
    ScrCmd_04C 0x409A, 0
    ScrCmd_02C 22
    ScrCmd_04D
    ScrCmd_27C 1, 0x8004
    ScrCmd_1E5 51
    ScrCmd_014 0x7E0
    ScrCmd_034
    ScrCmd_061
    End

_056C:
    SetVar 0x8004, 0x409C
    SetVar 0x8005, 1
    ScrCmd_1D3 0x8004, 0x8005, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _0524
    GoTo _05BE
    End

_0595:
    SetVar 0x8004, 0x409C
    SetVar 0x8005, 1
    ScrCmd_1D3 0x8004, 0x8005, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _05DD
    GoTo _05BE
    End

_05BE:
    ScrCmd_04C 0x409A, 0
    ScrCmd_02C 22
    ScrCmd_04D
    ScrCmd_27C 2, 0x8004
    ScrCmd_1E5 51
    ScrCmd_014 0x7DF
    ScrCmd_034
    ScrCmd_061
    End

_05DD:
    ScrCmd_0D6 0, 0x409D
    ScrCmd_04C 0x409A, 0
    CompareVar 0x409A, 0x184
    GoToIf 1, _0719
    CompareVar 0x409A, 0x185
    GoToIf 1, _0719
    CompareVar 0x409A, 0x187
    GoToIf 1, _0719
    CompareVar 0x409A, 0x188
    GoToIf 1, _0719
    CompareVar 0x409A, 0x18A
    GoToIf 1, _0719
    CompareVar 0x409A, 0x18B
    GoToIf 1, _0719
    ScrCmd_1B7 0x800C, 9
    CompareVar 0x800C, 0
    GoToIf 1, _06AC
    CompareVar 0x800C, 1
    GoToIf 1, _06B7
    CompareVar 0x800C, 2
    GoToIf 1, _06C2
    CompareVar 0x800C, 3
    GoToIf 1, _06CD
    CompareVar 0x800C, 4
    GoToIf 1, _06D8
    CompareVar 0x800C, 5
    GoToIf 1, _06E3
    CompareVar 0x800C, 6
    GoToIf 1, _06EE
    CompareVar 0x800C, 7
    GoToIf 1, _06F9
    GoTo _0704
    End

_06AC:
    ScrCmd_02C 13
    GoTo _070F
    End

_06B7:
    ScrCmd_02C 14
    GoTo _070F
    End

_06C2:
    ScrCmd_02C 15
    GoTo _070F
    End

_06CD:
    ScrCmd_02C 16
    GoTo _070F
    End

_06D8:
    ScrCmd_02C 17
    GoTo _070F
    End

_06E3:
    ScrCmd_02C 18
    GoTo _070F
    End

_06EE:
    ScrCmd_02C 19
    GoTo _070F
    End

_06F9:
    ScrCmd_02C 20
    GoTo _070F
    End

_0704:
    ScrCmd_02C 21
    GoTo _070F
    End

_070F:
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0719:
    ScrCmd_1B7 0x800C, 9
    CompareVar 0x800C, 0
    GoToIf 1, _078F
    CompareVar 0x800C, 1
    GoToIf 1, _079A
    CompareVar 0x800C, 2
    GoToIf 1, _07A5
    CompareVar 0x800C, 3
    GoToIf 1, _07B0
    CompareVar 0x800C, 4
    GoToIf 1, _07BB
    CompareVar 0x800C, 5
    GoToIf 1, _07C6
    CompareVar 0x800C, 6
    GoToIf 1, _07D1
    CompareVar 0x800C, 7
    GoToIf 1, _07DC
    GoTo _07E7
    End

_078F:
    ScrCmd_02C 23
    GoTo _070F
    End

_079A:
    ScrCmd_02C 14
    GoTo _070F
    End

_07A5:
    ScrCmd_02C 15
    GoTo _070F
    End

_07B0:
    ScrCmd_02C 24
    GoTo _070F
    End

_07BB:
    ScrCmd_02C 17
    GoTo _070F
    End

_07C6:
    ScrCmd_02C 25
    GoTo _070F
    End

_07D1:
    ScrCmd_02C 26
    GoTo _070F
    End

_07DC:
    ScrCmd_02C 27
    GoTo _070F
    End

_07E7:
    ScrCmd_02C 21
    GoTo _070F
    End

_07F2:
    SetVar 0x400A, 0
    GoTo _080E
    End

_0800:
    SetVar 0x400A, 1
    GoTo _080E
    End

_080E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0D6 0, 0x409D
    ScrCmd_1B7 0x800C, 6
    CompareVar 0x800C, 0
    CallIf 1, _0884
    CompareVar 0x800C, 1
    CallIf 1, _0889
    CompareVar 0x800C, 2
    CallIf 1, _088E
    CompareVar 0x800C, 3
    CallIf 1, _0893
    CompareVar 0x800C, 4
    CallIf 1, _0898
    CompareVar 0x800C, 5
    CallIf 1, _089D
    CompareVar 0x400A, 0
    GoToIf 1, _08A2
    GoTo _08B4
    End

_0884:
    ScrCmd_02C 7
    Return

_0889:
    ScrCmd_02C 8
    Return

_088E:
    ScrCmd_02C 9
    Return

_0893:
    ScrCmd_02C 10
    Return

_0898:
    ScrCmd_02C 11
    Return

_089D:
    ScrCmd_02C 12
    Return

_08A2:
    ScrCmd_031
    ScrCmd_034
    ApplyMovement 0, _08C8
    WaitMovement
    ScrCmd_061
    End

_08B4:
    ScrCmd_031
    ScrCmd_034
    ApplyMovement 1, _08D0
    WaitMovement
    ScrCmd_061
    End

    .balign 4, 0
_08C8:
    MoveAction_003
    EndMovement

    .balign 4, 0
_08D0:
    MoveAction_002
    EndMovement

_08D8:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 28
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_08EB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 0x1A9, 0
    ScrCmd_02C 29
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_090A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_091D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0930:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0943:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 25, 0
    ScrCmd_02C 33
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0962:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0975:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_04B 0x5DC
    ScrCmd_04C 35, 0
    ScrCmd_02C 35
    ScrCmd_04D
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0994:
    ScrCmd_1C0 0x800C, 25
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 35
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 54
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x1A1
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x1A9
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x1AB
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x1B8
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x183
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x184
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x185
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x186
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x187
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x188
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x189
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x18A
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x18B
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    GoTo _0182
    End

_0ACC:
    ScrCmd_1C0 0x800C, 25
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 35
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 54
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x1A1
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x1A9
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x1AB
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x1B8
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 39
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0xFF
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x12C
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x11D
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x183
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x184
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x185
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x186
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x187
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x188
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x189
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x18A
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    ScrCmd_1C0 0x800C, 0x18B
    CompareVar 0x800C, 1
    GoToIf 1, _01B6
    GoTo _01A3
    End

_0C50:
    ScrCmd_198 0x400A, 0x800C
    CompareVar 0x800C, 25
    GoToIf 1, _0D2E
    CompareVar 0x800C, 35
    GoToIf 1, _0D2E
    CompareVar 0x800C, 54
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x1A1
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x1A9
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x1AB
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x1B8
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x183
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x184
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x185
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x186
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x187
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x188
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x189
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x18A
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x18B
    GoToIf 1, _0D2E
    SetVar 0x800C, 0
    Return

_0D2E:
    SetVar 0x800C, 1
    Return

_0D36:
    ScrCmd_198 0x400A, 0x800C
    CompareVar 0x800C, 25
    GoToIf 1, _0D2E
    CompareVar 0x800C, 35
    GoToIf 1, _0D2E
    CompareVar 0x800C, 54
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x1A1
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x1A9
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x1AB
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x1B8
    GoToIf 1, _0D2E
    CompareVar 0x800C, 39
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0xFF
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x12C
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x11D
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x183
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x184
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x185
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x186
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x187
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x188
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x189
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x18A
    GoToIf 1, _0D2E
    CompareVar 0x800C, 0x18B
    GoToIf 1, _0D2E
    SetVar 0x800C, 0
    Return

_0E48:
    SetVar 0x8008, 0x409A
    CompareVar 0x8008, 25
    GoToIf 1, _0F5A
    CompareVar 0x8008, 0xFF
    GoToIf 1, _0F68
    CompareVar 0x8008, 35
    GoToIf 1, _0F76
    CompareVar 0x8008, 54
    GoToIf 1, _0F84
    CompareVar 0x8008, 0x1A1
    GoToIf 1, _0F92
    CompareVar 0x8008, 0x1A9
    GoToIf 1, _0FA0
    CompareVar 0x8008, 0x1AB
    GoToIf 1, _0FAE
    CompareVar 0x8008, 0x1B8
    GoToIf 1, _0FBC
    CompareVar 0x8008, 39
    GoToIf 1, _0FCA
    CompareVar 0x8008, 0x12C
    GoToIf 1, _0FD8
    CompareVar 0x8008, 0x11D
    GoToIf 1, _0FE6
    CompareVar 0x8008, 0x183
    GoToIf 1, _0FF4
    CompareVar 0x8008, 0x184
    GoToIf 1, _1002
    CompareVar 0x8008, 0x185
    GoToIf 1, _1010
    CompareVar 0x8008, 0x186
    GoToIf 1, _101E
    CompareVar 0x8008, 0x187
    GoToIf 1, _102C
    CompareVar 0x8008, 0x188
    GoToIf 1, _103A
    CompareVar 0x8008, 0x189
    GoToIf 1, _1048
    CompareVar 0x8008, 0x18A
    GoToIf 1, _1056
    CompareVar 0x8008, 0x18B
    GoToIf 1, _1064
    GoTo _02BB
    End

_0F5A:
    SetVar 0x4020, 71
    GoTo _1072
    End

_0F68:
    SetVar 0x4020, 78
    GoTo _1072
    End

_0F76:
    SetVar 0x4020, 72
    GoTo _1072
    End

_0F84:
    SetVar 0x4020, 74
    GoTo _1072
    End

_0F92:
    SetVar 0x4020, 204
    GoTo _1072
    End

_0FA0:
    SetVar 0x4020, 185
    GoTo _1072
    End

_0FAE:
    SetVar 0x4020, 206
    GoTo _1072
    End

_0FBC:
    SetVar 0x4020, 207
    GoTo _1072
    End

_0FCA:
    SetVar 0x4020, 73
    GoTo _1072
    End

_0FD8:
    SetVar 0x4020, 79
    GoTo _1072
    End

_0FE6:
    SetVar 0x4020, 205
    GoTo _1072
    End

_0FF4:
    SetVar 0x4020, 220
    GoTo _1072
    End

_1002:
    SetVar 0x4020, 221
    GoTo _1072
    End

_1010:
    SetVar 0x4020, 222
    GoTo _1072
    End

_101E:
    SetVar 0x4020, 223
    GoTo _1072
    End

_102C:
    SetVar 0x4020, 224
    GoTo _1072
    End

_103A:
    SetVar 0x4020, 225
    GoTo _1072
    End

_1048:
    SetVar 0x4020, 226
    GoTo _1072
    End

_1056:
    SetVar 0x4020, 227
    GoTo _1072
    End

_1064:
    SetVar 0x4020, 228
    GoTo _1072
    End

_1072:
    SetVar 0x8002, 5
    ClearFlag 0x2A1
    GoTo _02C9
    End

_1084:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_0D6 0, 0x409D
    ScrCmd_216 0x800C
    CompareVar 0x800C, 200
    GoToIf 4, _04D8
    GoTo _05DD
    End

_10AA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    CheckFlag 0xAB5
    GoToIf 1, _117C
    ScrCmd_02C 36
    ScrCmd_2E1 0x40AB, 0x8004
    ScrCmd_2E0 0x40AB, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _10E1
    GoTo _1136
    End

_10E1:
    ScrCmd_0D1 0, 0x8004
    ScrCmd_02C 37
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _1161
    SetVar 0x8005, 5
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _1172
    ScrCmd_0CD 0
    ScrCmd_33D 1, 0x8004
    ScrCmd_04E 0x486
    ScrCmd_02C 40
    ScrCmd_04F
    ScrCmd_07B 0x8004, 0x8005, 0x800C
    GoTo _117C
    End

_1136:
    ScrCmd_261 0, 0x8004
    ScrCmd_02C 37
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _1161
    SetVar 0x8005, 1
    ScrCmd_014 0x7DF
    GoTo _117C
    End

_1161:
    ScrCmd_02C 38
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_1172:
    ScrCmd_014 0x7E1
    ScrCmd_034
    ScrCmd_061
    End

_117C:
    SetFlag 0xAB5
    ScrCmd_02C 39
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_118B:
    SetVar 0x8003, 1
    GoTo _1305
    End

_1199:
    SetVar 0x8003, 2
    GoTo _1305
    End

_11A7:
    SetVar 0x8003, 3
    GoTo _1305
    End

_11B5:
    SetVar 0x8003, 4
    GoTo _1305
    End

_11C3:
    SetVar 0x8003, 5
    GoTo _1305
    End

_11D1:
    SetVar 0x8003, 6
    GoTo _1305
    End

_11DF:
    SetVar 0x8003, 7
    GoTo _1305
    End

_11ED:
    SetVar 0x8003, 8
    GoTo _1305
    End

_11FB:
    SetVar 0x8003, 9
    GoTo _1305
    End

_1209:
    SetVar 0x8003, 10
    GoTo _1305
    End

_1217:
    SetVar 0x8003, 11
    GoTo _1305
    End

_1225:
    SetVar 0x8003, 12
    GoTo _1305
    End

_1233:
    SetVar 0x8003, 13
    GoTo _1305
    End

_1241:
    SetVar 0x8003, 14
    GoTo _1305
    End

_124F:
    SetVar 0x8003, 15
    GoTo _1305
    End

_125D:
    SetVar 0x8003, 16
    GoTo _1305
    End

_126B:
    SetVar 0x8003, 17
    GoTo _1305
    End

_1279:
    SetVar 0x8003, 18
    GoTo _1305
    End

_1287:
    SetVar 0x8003, 19
    GoTo _1305
    End

_1295:
    SetVar 0x8003, 20
    GoTo _1305
    End

_12A3:
    SetVar 0x8003, 21
    GoTo _1305
    End

_12B1:
    SetVar 0x8003, 22
    GoTo _1305
    End

_12BF:
    SetVar 0x8003, 23
    GoTo _1305
    End

_12CD:
    SetVar 0x8003, 24
    GoTo _1305
    End

_12DB:
    SetVar 0x8003, 25
    GoTo _1305
    End

_12E9:
    SetVar 0x8003, 26
    GoTo _1305
    End

_12F7:
    SetVar 0x8003, 27
    GoTo _1305
    End

_1305:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_060
    ScrCmd_003 1, 0x800C
    ScrCmd_32D
    ScrCmd_338
    ApplyMovement 5, _1758
    WaitMovement
    ScrCmd_049 0x632
    CompareVar 0x8003, 1
    CallIf 1, _14C2
    CompareVar 0x8003, 2
    CallIf 1, _14DA
    CompareVar 0x8003, 3
    CallIf 1, _14F2
    CompareVar 0x8003, 4
    CallIf 1, _150A
    CompareVar 0x8003, 5
    CallIf 1, _1522
    CompareVar 0x8003, 6
    CallIf 1, _153A
    CompareVar 0x8003, 7
    CallIf 1, _1552
    CompareVar 0x8003, 8
    CallIf 1, _156A
    CompareVar 0x8003, 9
    CallIf 1, _1582
    CompareVar 0x8003, 10
    CallIf 1, _159A
    CompareVar 0x8003, 11
    CallIf 1, _15B2
    CompareVar 0x8003, 12
    CallIf 1, _15CA
    CompareVar 0x8003, 13
    CallIf 1, _15E2
    CompareVar 0x8003, 14
    CallIf 1, _15FA
    CompareVar 0x8003, 15
    CallIf 1, _1612
    CompareVar 0x8003, 16
    CallIf 1, _162A
    CompareVar 0x8003, 17
    CallIf 1, _1642
    CompareVar 0x8003, 18
    CallIf 1, _165A
    CompareVar 0x8003, 19
    CallIf 1, _1672
    CompareVar 0x8003, 20
    CallIf 1, _168A
    CompareVar 0x8003, 21
    CallIf 1, _16A2
    CompareVar 0x8003, 22
    CallIf 1, _16BA
    CompareVar 0x8003, 23
    CallIf 1, _16D2
    CompareVar 0x8003, 24
    CallIf 1, _16EA
    CompareVar 0x8003, 25
    CallIf 1, _1702
    CompareVar 0x8003, 26
    CallIf 1, _171A
    CompareVar 0x8003, 27
    CallIf 1, _1732
    ApplyMovement 0xFF, _1764
    WaitMovement
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    ApplyMovement 5, _1764
    WaitMovement
    ScrCmd_061
    ApplyMovement 0xFF, _1770
    WaitMovement
    ScrCmd_32E
    ScrCmd_339
    ScrCmd_003 2, 0x800C
    End

_14C2:
    ApplyMovement 0xFF, _1778
    WaitMovement
    ScrCmd_187 5, 35, 2, 15, 1
    Return

_14DA:
    ApplyMovement 0xFF, _1780
    WaitMovement
    ScrCmd_187 5, 35, 2, 15, 1
    Return

_14F2:
    ApplyMovement 0xFF, _178C
    WaitMovement
    ScrCmd_187 5, 35, 2, 15, 1
    Return

_150A:
    ApplyMovement 0xFF, _1798
    WaitMovement
    ScrCmd_187 5, 17, 2, 16, 1
    Return

_1522:
    ApplyMovement 0xFF, _17A4
    WaitMovement
    ScrCmd_187 5, 17, 2, 16, 1
    Return

_153A:
    ApplyMovement 0xFF, _17B0
    WaitMovement
    ScrCmd_187 5, 17, 2, 16, 1
    Return

_1552:
    ApplyMovement 0xFF, _17BC
    WaitMovement
    ScrCmd_187 5, 47, 4, 8, 1
    Return

_156A:
    ApplyMovement 0xFF, _17C8
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_1582:
    ApplyMovement 0xFF, _17D4
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_159A:
    ApplyMovement 0xFF, _17E0
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_15B2:
    ApplyMovement 0xFF, _17EC
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_15CA:
    ApplyMovement 0xFF, _17F8
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_15E2:
    ApplyMovement 0xFF, _1804
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_15FA:
    ApplyMovement 0xFF, _1810
    WaitMovement
    ScrCmd_187 5, 26, 6, 9, 1
    Return

_1612:
    ApplyMovement 0xFF, _181C
    WaitMovement
    ScrCmd_187 5, 41, 3, 16, 1
    Return

_162A:
    ApplyMovement 0xFF, _1828
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_1642:
    ApplyMovement 0xFF, _1834
    WaitMovement
    ScrCmd_187 5, 41, 3, 16, 1
    Return

_165A:
    ApplyMovement 0xFF, _1840
    WaitMovement
    ScrCmd_187 5, 26, 6, 9, 1
    Return

_1672:
    ApplyMovement 0xFF, _184C
    WaitMovement
    ScrCmd_187 5, 47, 4, 8, 1
    Return

_168A:
    ApplyMovement 0xFF, _1854
    WaitMovement
    ScrCmd_187 5, 47, 2, 34, 1
    Return

_16A2:
    ApplyMovement 0xFF, _1860
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_16BA:
    ApplyMovement 0xFF, _186C
    WaitMovement
    ScrCmd_187 5, 47, 4, 8, 1
    Return

_16D2:
    ApplyMovement 0xFF, _1878
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_16EA:
    ApplyMovement 0xFF, _1884
    WaitMovement
    ScrCmd_187 5, 47, 2, 34, 1
    Return

_1702:
    ApplyMovement 0xFF, _1890
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_171A:
    ApplyMovement 0xFF, _189C
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_1732:
    ApplyMovement 0xFF, _18A8
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_174A:
    ScrCmd_060
    SetVar 0x40AC, 0
    ScrCmd_061
    End

    .balign 4, 0
_1758:
    MoveAction_001
    MoveAction_045
    EndMovement

    .balign 4, 0
_1764:
    MoveAction_001
    MoveAction_046
    EndMovement

    .balign 4, 0
_1770:
    MoveAction_00D
    EndMovement

    .balign 4, 0
_1778:
    MoveAction_017 18
    EndMovement

    .balign 4, 0
_1780:
    MoveAction_017 19
    MoveAction_014
    EndMovement

    .balign 4, 0
_178C:
    MoveAction_017 17
    MoveAction_014
    EndMovement

    .balign 4, 0
_1798:
    MoveAction_016 18
    MoveAction_015 2
    EndMovement

    .balign 4, 0
_17A4:
    MoveAction_016 17
    MoveAction_015
    EndMovement

    .balign 4, 0
_17B0:
    MoveAction_016 19
    MoveAction_015
    EndMovement

    .balign 4, 0
_17BC:
    MoveAction_016 5
    MoveAction_014 16
    EndMovement

    .balign 4, 0
_17C8:
    MoveAction_016 18
    MoveAction_014 18
    EndMovement

    .balign 4, 0
_17D4:
    MoveAction_016 38
    MoveAction_014 15
    EndMovement

    .balign 4, 0
_17E0:
    MoveAction_017 5
    MoveAction_015 18
    EndMovement

    .balign 4, 0
_17EC:
    MoveAction_016 31
    MoveAction_015 2
    EndMovement

    .balign 4, 0
_17F8:
    MoveAction_016 15
    MoveAction_014
    EndMovement

    .balign 4, 0
_1804:
    MoveAction_017 37
    MoveAction_015 16
    EndMovement

    .balign 4, 0
_1810:
    MoveAction_017 12
    MoveAction_014
    EndMovement

    .balign 4, 0
_181C:
    MoveAction_017 25
    MoveAction_015 6
    EndMovement

    .balign 4, 0
_1828:
    MoveAction_017 19
    MoveAction_015 19
    EndMovement

    .balign 4, 0
_1834:
    MoveAction_017 9
    MoveAction_015 9
    EndMovement

    .balign 4, 0
_1840:
    MoveAction_016 8
    MoveAction_015 2
    EndMovement

    .balign 4, 0
_184C:
    MoveAction_017 21
    EndMovement

    .balign 4, 0
_1854:
    MoveAction_017 22
    MoveAction_015 25
    EndMovement

    .balign 4, 0
_1860:
    MoveAction_016 12
    MoveAction_015
    EndMovement

    .balign 4, 0
_186C:
    MoveAction_017 6
    MoveAction_014 7
    EndMovement

    .balign 4, 0
_1878:
    MoveAction_016 7
    MoveAction_014 9
    EndMovement

    .balign 4, 0
_1884:
    MoveAction_017 5
    MoveAction_015 18
    EndMovement

    .balign 4, 0
_1890:
    MoveAction_017 5
    MoveAction_014 8
    EndMovement

    .balign 4, 0
_189C:
    MoveAction_016 31
    MoveAction_014 24
    EndMovement

    .balign 4, 0
_18A8:
    MoveAction_016 15
    MoveAction_014 27
    EndMovement
