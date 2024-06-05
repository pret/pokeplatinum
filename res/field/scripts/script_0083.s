    .include "macros/scrcmd.inc"

    .data

    .long _00ED-.-4
    .long _0101-.-4
    .long _0115-.-4
    .long _0129-.-4
    .long _013D-.-4
    .long _07AA-.-4
    .long _0030-.-4
    .long _002E-.-4
    .long _07BB-.-4
    .long _0908-.-4
    .long _081E-.-4
    .short 0xFD13

_002E:
    End

_0030:
    SetFlag 0x2BB
    SetFlag 0x2BC
    SetFlag 0x2BD
    SetFlag 0x2BE
    SetFlag 0x2BF
    ScrCmd_28B 3, 0x4000
    CompareVar 0x4000, 0
    GoToIf 1, _00A5
    ScrCmd_302 0x4000, 0x4001, 0x4002, 0x4003, 0x4004
    CompareVar 0x4000, 0
    CallIf 1, _00CF
    CompareVar 0x4001, 0
    CallIf 1, _00D5
    CompareVar 0x4002, 0
    CallIf 1, _00DB
    CompareVar 0x4003, 0
    CallIf 1, _00E1
    CompareVar 0x4004, 0
    CallIf 1, _00E7
    End

_00A5:
    ScrCmd_18B 0, 4, 1
    ScrCmd_18B 1, 4, 1
    ScrCmd_18B 2, 4, 1
    ScrCmd_18B 3, 4, 1
    ScrCmd_18B 4, 4, 1
    End

_00CF:
    ClearFlag 0x2BB
    Return

_00D5:
    ClearFlag 0x2BC
    Return

_00DB:
    ClearFlag 0x2BD
    Return

_00E1:
    ClearFlag 0x2BE
    Return

_00E7:
    ClearFlag 0x2BF
    Return

_00ED:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8004, 1
    GoTo _0151
    End

_0101:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8004, 3
    GoTo _0151
    End

_0115:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8004, 2
    GoTo _0151
    End

_0129:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8004, 4
    GoTo _0151
    End

_013D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8004, 5
    GoTo _0151
    End

_0151:
    ScrCmd_1C0 0x800C, 0x1DF
    CompareVar 0x800C, 0
    GoToIf 1, _06DE
    ScrCmd_07E 0x1D3, 1, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _06DE
    ScrCmd_28B 3, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _06DE
    CompareVar 0x8004, 1
    CallIf 1, _06C5
    CompareVar 0x8004, 3
    CallIf 1, _06CA
    CompareVar 0x8004, 2
    CallIf 1, _06CF
    CompareVar 0x8004, 4
    CallIf 1, _06D4
    CompareVar 0x8004, 5
    CallIf 1, _06D9
    ScrCmd_303 0x8003, 0x800C
    CompareVar 0x8003, 1
    GoToIf 4, _0254
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _0740
    GoTo _01F8
    End

_01F8:
    CompareVar 0x8004, 1
    CallIf 1, _069D
    CompareVar 0x8004, 3
    CallIf 1, _06A5
    CompareVar 0x8004, 2
    CallIf 1, _06AD
    CompareVar 0x8004, 4
    CallIf 1, _06B5
    CompareVar 0x8004, 5
    CallIf 1, _06BD
    ScrCmd_2CB 0x800C, 0x1DF
    CompareVar 0x800C, 1
    GoToIf 1, _03F5
    GoTo _0403
    End

_0254:
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 15, 0
    ScrCmd_042 16, 1
    ScrCmd_042 14, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 0
    GoToIf 1, _01F8
    CompareVar 0x8008, 2
    GoToIf 1, _0295
    GoTo _0740
    End

_0295:
    ScrCmd_303 0x8003, 0x800C
    SetVar 0x8000, 0x800C
    CompareVar 0x8003, 2
    GoToIf 4, _037B
    GoTo _02B6
    End

_02B6:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 11
    ScrCmd_304 0x8000, 0, 0, 0
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_305 0x8000, 0x8004
    CompareVar 0x8004, 1
    CallIf 1, _0349
    CompareVar 0x8004, 4
    CallIf 1, _0367
    CompareVar 0x8004, 3
    CallIf 1, _0353
    CompareVar 0x8004, 2
    CallIf 1, _035D
    CompareVar 0x8004, 5
    CallIf 1, _0371
    GoTo _0325
    End

_0325:
    ScrCmd_069 0x8006, 0x8007
    ScrCmd_1BD 0x800C
    ScrCmd_0BE 0x23B, 0, 0x8006, 0x8007, 0x800C
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    End

_0349:
    ClearFlag 0x2BB
    ScrCmd_064 0
    Return

_0353:
    ClearFlag 0x2BD
    ScrCmd_064 2
    Return

_035D:
    ClearFlag 0x2BC
    ScrCmd_064 3
    Return

_0367:
    ClearFlag 0x2BE
    ScrCmd_064 1
    Return

_0371:
    ClearFlag 0x2BF
    ScrCmd_064 4
    Return

_037B:
    ScrCmd_02C 7
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVar 0x8000, 0xFF
    GoToIf 1, _03F3
    ScrCmd_198 0x8000, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _045D
    CompareVar 0x800C, 0x1DF
    GoToIf 5, _0468
    ScrCmd_305 0x8000, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _03E8
    GoTo _02B6
    End

_03E8:
    ScrCmd_02C 17
    GoTo _07A2
    End

_03F3:
    End

_03F5:
    ScrCmd_2DD 0x8000, 0x1DF
    GoTo _0473
    End

_0403:
    ScrCmd_02C 7
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVar 0x8000, 0xFF
    GoToIf 1, _0740
    ScrCmd_198 0x8000, 0x800C
    CompareVar 0x800C, 0
    GoToIf 1, _045D
    CompareVar 0x800C, 0x1DF
    GoToIf 5, _0468
    GoTo _0473
    End

_045D:
    ScrCmd_02C 8
    GoTo _07A2
    End

_0468:
    ScrCmd_02C 9
    GoTo _07A2
    End

_0473:
    ScrCmd_099 0x800C, 0x13B, 0x8000
    CompareVar 0x800C, 1
    GoToIf 1, _04FD
    ScrCmd_099 0x800C, 59, 0x8000
    CompareVar 0x800C, 1
    GoToIf 1, _04FD
    ScrCmd_099 0x800C, 56, 0x8000
    CompareVar 0x800C, 1
    GoToIf 1, _04FD
    ScrCmd_099 0x800C, 0x193, 0x8000
    CompareVar 0x800C, 1
    GoToIf 1, _04FD
    ScrCmd_099 0x800C, 0x1B5, 0x8000
    CompareVar 0x800C, 1
    GoToIf 1, _04FD
    ScrCmd_1C8 0x800C, 0x8000
    SetVar 0x8002, 0x800C
    CompareVar 0x800C, 4
    GoToIf 1, _051B
    GoTo _050B
    End

_04FD:
    SetVar 0x8002, 0
    GoTo _050B
    End

_050B:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 10
    GoTo _0613
    End

_051B:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8001
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _05FE
    GoTo _0541
    End

_0541:
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_2E7 0x8000, 0x8001
    ScrCmd_2E8 0x8002
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    CompareVar 0x8002, 4
    GoToIf 1, _05DD
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _05FE
    ScrCmd_0D6 0, 0x8000
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    ScrCmd_02C 4
    ScrCmd_049 0x5E6
    ScrCmd_04B 0x5E6
    ScrCmd_003 30, 0x800C
    ScrCmd_02C 5
    ScrCmd_003 32, 0x800C
    ScrCmd_04E 0x483
    ScrCmd_0D4 1, 0x8001
    ScrCmd_02C 6
    ScrCmd_04F
    ScrCmd_003 16, 0x800C
    GoTo _0613
    End

_05DD:
    ScrCmd_0D4 1, 0x8001
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _0541
    GoTo _05FE
    End

_05FE:
    ScrCmd_0D6 0, 0x8000
    ScrCmd_0D4 1, 0x8001
    ScrCmd_02C 2
    GoTo _07A2
    End

_0613:
    ScrCmd_304 0x8000, 0x8002, 0x8001, 0x8004
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    CompareVar 0x8004, 1
    CallIf 1, _067F
    CompareVar 0x8004, 4
    CallIf 1, _0691
    CompareVar 0x8004, 3
    CallIf 1, _0685
    CompareVar 0x8004, 2
    CallIf 1, _068B
    CompareVar 0x8004, 5
    CallIf 1, _0697
    CheckFlag 119
    GoToIf 0, _080C
    GoTo _0325
    End

_067F:
    ScrCmd_065 0
    Return

_0685:
    ScrCmd_065 2
    Return

_068B:
    ScrCmd_065 3
    Return

_0691:
    ScrCmd_065 1
    Return

_0697:
    ScrCmd_065 4
    Return

_069D:
    SetVar 0x8001, 0x13B
    Return

_06A5:
    SetVar 0x8001, 59
    Return

_06AD:
    SetVar 0x8001, 56
    Return

_06B5:
    SetVar 0x8001, 0x193
    Return

_06BD:
    SetVar 0x8001, 0x1B5
    Return

_06C5:
    ScrCmd_02C 20
    Return

_06CA:
    ScrCmd_02C 23
    Return

_06CF:
    ScrCmd_02C 26
    Return

_06D4:
    ScrCmd_02C 29
    Return

_06D9:
    ScrCmd_02C 32
    Return

_06DE:
    CompareVar 0x8004, 1
    CallIf 1, _0727
    CompareVar 0x8004, 3
    CallIf 1, _072C
    CompareVar 0x8004, 2
    CallIf 1, _0731
    CompareVar 0x8004, 4
    CallIf 1, _0736
    CompareVar 0x8004, 5
    CallIf 1, _073B
    GoTo _07A2
    End

_0727:
    ScrCmd_02C 19
    Return

_072C:
    ScrCmd_02C 22
    Return

_0731:
    ScrCmd_02C 25
    Return

_0736:
    ScrCmd_02C 28
    Return

_073B:
    ScrCmd_02C 31
    Return

_0740:
    CompareVar 0x8004, 1
    CallIf 1, _0789
    CompareVar 0x8004, 3
    CallIf 1, _078E
    CompareVar 0x8004, 2
    CallIf 1, _0793
    CompareVar 0x8004, 4
    CallIf 1, _0798
    CompareVar 0x8004, 5
    CallIf 1, _079D
    GoTo _07A2
    End

_0789:
    ScrCmd_02C 21
    Return

_078E:
    ScrCmd_02C 24
    Return

_0793:
    ScrCmd_02C 27
    Return

_0798:
    ScrCmd_02C 30
    Return

_079D:
    ScrCmd_02C 33
    Return

_07A2:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07AA:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_07BB:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_303 0x8003, 0x800C
    CompareVar 0x8003, 0
    GoToIf 1, _0801
    ScrCmd_02C 13
    ScrCmd_041 31, 15, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 14, 0
    ScrCmd_043
    SetVar 0x8008, 0x800C
    CompareVar 0x8008, 0
    GoToIf 1, _0295
    ScrCmd_034
    ScrCmd_061
    End

_0801:
    ScrCmd_02C 18
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_080C:
    SetFlag 119
    SetVar 0x411B, 1
    GoTo _0325
    End

_081E:
    ScrCmd_060
    ClearFlag 0x2C0
    ScrCmd_049 0x603
    ScrCmd_064 6
    ScrCmd_04B 0x603
    ApplyMovement 0xFF, _08AC
    ApplyMovement 6, _08D4
    WaitMovement
    ScrCmd_0CD 0
    ScrCmd_02C 35
    ScrCmd_034
    ScrCmd_069 0x8006, 0x8007
    CompareVar 0x8006, 10
    CallIf 4, _08A8
    CompareVar 0x8006, 4
    CallIf 3, _08AA
    ApplyMovement 6, _08DC
    WaitMovement
    ScrCmd_02C 36
    ScrCmd_034
    ApplyMovement 6, _08F4
    WaitMovement
    ScrCmd_02C 37
    ScrCmd_034
    ApplyMovement 6, _0900
    WaitMovement
    ScrCmd_049 0x603
    ScrCmd_065 6
    ScrCmd_04B 0x603
    SetVar 0x411B, 2
    ScrCmd_061
    End

_08A8:
    Return

_08AA:
    Return

    .balign 4, 0
_08AC:
    MoveAction_021
    MoveAction_04B
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_08D4:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_08DC:
    MoveAction_00E 2
    MoveAction_020
    MoveAction_03F 2
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .balign 4, 0
_08F4:
    MoveAction_00E 2
    MoveAction_020
    EndMovement

    .balign 4, 0
_0900:
    MoveAction_00D 2
    EndMovement

_0908:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 38
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _09CF
    ScrCmd_02C 39
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _09CF
    ScrCmd_02C 40
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _09CF
    ScrCmd_02C 41
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _09CF
    ScrCmd_02C 42
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _09CF
    ScrCmd_02C 43
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _09CF
    ScrCmd_02C 44
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _09CF
    ScrCmd_02C 45
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _09CF
    ScrCmd_02C 46
    ScrCmd_03E 0x800C
    CompareVar 0x800C, 1
    GoToIf 1, _09CF
    ScrCmd_02C 47
    GoTo _09D5
    End

_09CF:
    ScrCmd_034
    ScrCmd_061
    End

_09D5:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
