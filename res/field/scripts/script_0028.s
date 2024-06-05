    .include "macros/scrcmd.inc"

    .data

    .long _00F0-.-4
    .long _00F2-.-4
    .long _00F4-.-4
    .long _0374-.-4
    .long _0387-.-4
    .long _039A-.-4
    .long _03AD-.-4
    .long _03C0-.-4
    .long _03D3-.-4
    .long _03E6-.-4
    .long _03F9-.-4
    .long _006B-.-4
    .long _0056-.-4
    .long _040C-.-4
    .long _0496-.-4
    .long _0520-.-4
    .long _0533-.-4
    .long _0546-.-4
    .long _0601-.-4
    .long _0652-.-4
    .long _074C-.-4
    .short 0xFD13

_0056:
    CompareVar 0x40D5, 6
    CallIf 1, _0065
    End

_0065:
    ScrCmd_1B2 0xFF
    Return

_006B:
    ScrCmd_060
    Call _0077
    ScrCmd_061
    End

_0077:
    ScrCmd_168 0, 0, 8, 2, 77
    Call _00C5
    ScrCmd_1B1 0xFF
    ApplyMovement 0xFF, _00D8
    WaitMovement
    Call _00CD
    ScrCmd_168 0, 0, 8, 4, 77
    Call _00C5
    ApplyMovement 0xFF, _00E8
    WaitMovement
    Call _00CD
    SetVar 0x40D5, 0
    Return

_00C5:
    ScrCmd_16B 77
    ScrCmd_169 77
    Return

_00CD:
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

    .balign 4, 0
_00D8:
    MoveAction_00D
    EndMovement

    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00E8:
    MoveAction_00D 2
    EndMovement

_00F0:
    End

_00F2:
    End

_00F4:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_2B7 0x800C
    GoToIfEq 0x800C, 1, _0368
    GoToIfSet 195, _02FB
    SetFlag 195
    ScrCmd_02C 0
    GoTo _0127
    End

_0127:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 129, 0
    ScrCmd_042 128, 1
    ScrCmd_042 130, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01E9
    GoToIfEq 0x8008, 1, _0172
    GoToIfEq 0x8008, 2, _02EA
    GoTo _02EA
    End

_0172:
    ScrCmd_02C 2
    GoTo _017D
    End

_017D:
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 131, 0
    ScrCmd_042 132, 1
    ScrCmd_042 133, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01C8
    GoToIfEq 0x8008, 1, _01D3
    GoToIfEq 0x8008, 2, _01DE
    GoTo _01DE
    End

_01C8:
    ScrCmd_02C 3
    GoTo _017D
    End

_01D3:
    ScrCmd_02C 4
    GoTo _017D
    End

_01DE:
    ScrCmd_02C 5
    GoTo _0127
    End

_01E9:
    ScrCmd_19A 0x800C
    GoToIfLt 0x800C, 2, _0202
    GoTo _0306
    End

_0202:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_020D:
    ScrCmd_014 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _02EA
    ScrCmd_14E
    SetVar 0x40D5, 6
    ScrCmd_02C 7
    ScrCmd_034
    ApplyMovement 0xFF, _0344
    WaitMovement
    ScrCmd_168 0, 0, 8, 4, 77
    Call _00C5
    ApplyMovement 0xFF, _0358
    WaitMovement
    Call _00CD
    ScrCmd_168 0, 0, 8, 2, 77
    Call _00C5
    ApplyMovement 0xFF, _0350
    WaitMovement
    ScrCmd_1B2 0xFF
    ApplyMovement 0xFF, _0360
    WaitMovement
    Call _00CD
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_2B2
    ScrCmd_0B3 0x800C
    SetVar 0x8004, 0x800C
    ScrCmd_0B2 0x8004, 0x800C
    GoToIfEq 0x800C, 0, _02CE
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    Call _0077
    ScrCmd_061
    End

_02CE:
    ScrCmd_0A1
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    Call _0077
    GoTo _02EA
    End

_02EA:
    SetVar 0x40D5, 0
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_02FB:
    ScrCmd_02C 1
    GoTo _0127
    End

_0306:
    ScrCmd_177 0x800C
    GoToIfEq 0x800C, 6, _031F
    GoTo _020D
    End

_031F:
    ScrCmd_252 0x800C
    GoToIfEq 0x800C, 0, _0338
    GoTo _020D
    End

_0338:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .balign 4, 0
_0344:
    MoveAction_00F
    MoveAction_020
    EndMovement

    .balign 4, 0
_0350:
    MoveAction_00C
    EndMovement

    .balign 4, 0
_0358:
    MoveAction_00C 2
    EndMovement

    .balign 4, 0
_0360:
    MoveAction_001
    EndMovement

_0368:
    ScrCmd_014 0x2338
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0374:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 10
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0387:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_039A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 12
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03AD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 13
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03C0:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03D3:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 15
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03E6:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 16
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_03F9:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_040C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8005, 3
    GoTo _0420
    End

_0420:
    ScrCmd_02C 36
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 38, 0
    ScrCmd_042 39, 1
    ScrCmd_042 40, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _046A
    GoToIfEq 0x8008, 1, _048B
    GoTo _0464
    End

_0464:
    ScrCmd_034
    ScrCmd_061
    End

_046A:
    ScrCmd_014 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _0464
    ScrCmd_034
    ScrCmd_014 0x802
    ScrCmd_061
    End

_048B:
    ScrCmd_02C 37
    GoTo _0420
    End

_0496:
    ScrCmd_049 0x5DC
    ScrCmd_060
    SetVar 0x8005, 4
    GoTo _04AA
    End

_04AA:
    ScrCmd_02C 34
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 38, 0
    ScrCmd_042 39, 1
    ScrCmd_042 40, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _04F4
    GoToIfEq 0x8008, 1, _0515
    GoTo _04EE
    End

_04EE:
    ScrCmd_034
    ScrCmd_061
    End

_04F4:
    ScrCmd_014 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _04EE
    ScrCmd_034
    ScrCmd_014 0x802
    ScrCmd_061
    End

_0515:
    ScrCmd_02C 35
    GoTo _04AA
    End

_0520:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 32
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0533:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0546:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_2B7 0x800C
    GoToIfEq 0x800C, 1, _05A0
    SetVar 0x8000, 0
    ScrCmd_198 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _05CB
    ScrCmd_0D0 0, 0
    ScrCmd_02C 18
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _05AB
    GoToIfEq 0x800C, 1, _05B8
    End

_05A0:
    ScrCmd_02C 23
    GoTo _05F9
    End

_05AB:
    ScrCmd_300
    ScrCmd_02C 20
    GoTo _05F9
    End

_05B8:
    ScrCmd_0D0 0, 0
    ScrCmd_02C 21
    GoTo _05F9

    .byte 2
    .byte 0
    .byte 44
    .byte 0
    .byte 18

_05CB:
    ScrCmd_02C 19
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _05AB
    GoToIfEq 0x800C, 1, _05EE
    End

_05EE:
    ScrCmd_02C 22
    GoTo _05F9
    End

_05F9:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0601:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_02C 29
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0647
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    ScrCmd_034
    ScrCmd_30E 0x8004
    GoToIfEq 0x8004, 0, _0647
    ScrCmd_02C 30
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0647:
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0652:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_07E 0x1B3, 1, 0x800C
    GoToIfEq 0x800C, 0, _0696
    GoToIfSet 0xAC3, _06FD
    GoToIfSet 207, _06F2
    ScrCmd_02C 24
    SetVar 0x8004, 1
    GoTo _06A1
    End

_0696:
    ScrCmd_02C 42
    GoTo _0708
    End

_06A1:
    ScrCmd_1D6 0x8004, 0x800C
    GoToIfEq 0x800C, 0, _06D3
    AddVar 0x8004, 1
    GoToIfLe 0x8004, 13, _06A1
    SetFlag 207
    GoTo _06F2
    End

_06D3:
    SetVar 0x8005, 1
    ScrCmd_014 0x7FD
    ScrCmd_02C 28
    Call _0710
    SetFlag 0xAC3
    GoTo _0708
    End

_06F2:
    ScrCmd_02C 27
    GoTo _0708
    End

_06FD:
    ScrCmd_02C 26
    GoTo _0708
    End

_0708:
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0710:
    SetVar 0x8004, 1
    GoTo _071E
    End

_071E:
    ScrCmd_1D6 0x8004, 0x800C
    GoToIfEq 0x800C, 0, _074A
    AddVar 0x8004, 1
    GoToIfLe 0x8004, 13, _071E
    SetFlag 207
    Return

_074A:
    Return

_074C:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_02C 41
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

    .byte 0
    .byte 0
    .byte 0
