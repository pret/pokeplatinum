    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0042
    ScriptEntry _0223
    ScriptEntry _0314
    ScriptEntry _040E
    ScriptEntry _04DD
    ScriptEntry _057D
    ScriptEntry _0679
    ScriptEntry _0730
    ScriptEntry _0103
    ScriptEntry _02CD
    ScriptEntry _03CC
    ScriptEntry _04B9
    ScriptEntry _0551
    ScriptEntry _0704
    ScriptEntry _060C
    ScriptEntry _064C
    .short 0xFD13

_0042:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_09A 0x800C, 15
    GoToIfEq 0x800C, 6, _008E
    ScrCmd_15B 1, 0x800C
    GoToIfEq 0x800C, 0, _008E
    ScrCmd_02C 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00AE
    ScrCmd_034
    GoTo _066D
    End

_008E:
    ScrCmd_02C 2
    ScrCmd_201 0x8004
    CallIfEq 0x8004, 203, _014A
    ScrCmd_031
    ScrCmd_034
    GoTo _066D
    End

_00AE:
    ScrCmd_09A 0x800C, 15
    SetVar 0x8004, 0x800C
    ScrCmd_0D6 0, 0x800C
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_0C5 0x8004
    ScrCmd_29E 0, 0x8005
    ScrCmd_003 7, 0x800C
    ScrCmd_065 0x800D
    ScrCmd_201 0x8004
    ScrCmd_1CD 19, 0x8004, 0, 0, 0
_00E8:
    ScrCmd_003 1, 0x800C
    GoToIfEq 0x8005, 0, _00E8
    GoTo _066D
    End

_0103:
    ScrCmd_060
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 1
    ScrCmd_034
    ScrCmd_0C5 0x8000
    ScrCmd_29E 0, 0x8005
    ScrCmd_003 7, 0x800C
    ScrCmd_065 0x800D
    ScrCmd_201 0x8004
    ScrCmd_1CD 19, 0x8004, 0, 0, 0
_0133:
    ScrCmd_003 1, 0x800C
    GoToIfEq 0x8005, 0, _0133
    ScrCmd_061
    End

_014A:
    GoToIfNe 0x40CD, 0, _0221
    GoToIfNe 0x40B1, 1, _0221
    Call _017F
    GoToIfEq 0x800C, 0, _0221
    SetVar 0x40CD, 1
    Return

_017F:
    SetVar 0x800C, 0
    ScrCmd_069 0x8004, 0x8005
    GoToIfEq 0x8004, 73, _01CE
    GoToIfEq 0x8004, 74, _01DD
    GoToIfEq 0x8004, 75, _01EC
    GoToIfEq 0x8004, 76, _01FB
    GoToIfEq 0x8004, 77, _020A
    Return

_01CE:
    GoToIfEq 0x8005, 33, _0219
    Return

_01DD:
    GoToIfEq 0x8005, 34, _0219
    Return

_01EC:
    GoToIfEq 0x8005, 34, _0219
    Return

_01FB:
    GoToIfEq 0x8005, 33, _0219
    Return

_020A:
    GoToIfEq 0x8005, 34, _0219
    Return

_0219:
    SetVar 0x800C, 1
    Return

_0221:
    Return

_0223:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_09A 0x800C, 249
    SetVar 0x8004, 0x800C
    GoToIfEq 0x800C, 6, _0275
    ScrCmd_15B 0, 0x800C
    GoToIfEq 0x800C, 0, _0275
    ScrCmd_02C 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0284
    ScrCmd_034
    GoTo _066D
    End

_0275:
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    GoTo _066D
    End

_0284:
    ScrCmd_0D6 0, 0x8004
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_0C5 0x8004
    ScrCmd_29E 1, 0x8005
    ScrCmd_003 10, 0x800C
    ScrCmd_065 0x800D
    ScrCmd_201 0x8004
    ScrCmd_1CD 24, 0x8004, 0, 0, 0
_02B2:
    ScrCmd_003 1, 0x800C
    GoToIfEq 0x8005, 0, _02B2
    GoTo _066D
    End

_02CD:
    ScrCmd_060
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 5
    ScrCmd_034
    ScrCmd_0C5 0x8000
    ScrCmd_29E 1, 0x8005
    ScrCmd_003 10, 0x800C
    ScrCmd_065 0x800D
    ScrCmd_201 0x8004
    ScrCmd_1CD 24, 0x8004, 0, 0, 0
_02FD:
    ScrCmd_003 1, 0x800C
    GoToIfEq 0x8005, 0, _02FD
    ScrCmd_061
    End

_0314:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_1CF 2, 0x800C
    GoToIfEq 0x800C, 1, _03BD
    ScrCmd_09A 0x800C, 70
    GoToIfEq 0x800C, 6, _0372
    ScrCmd_15B 5, 0x800C
    GoToIfEq 0x800C, 0, _0372
    ScrCmd_02C 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0381
    ScrCmd_034
    GoTo _066D
    End

_0372:
    ScrCmd_02C 8
    ScrCmd_031
    ScrCmd_034
    GoTo _066D
    End

_0381:
    ScrCmd_1CF 1
    ScrCmd_09A 0x800C, 70
    SetVar 0x8004, 0x800C
    ScrCmd_0D6 0, 0x800C
    ScrCmd_02C 10
    ScrCmd_0C5 0x8004
    ScrCmd_034
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_201 0x8004
    ScrCmd_1CD 22, 0x8004, 0, 0, 0
    GoTo _066D
    End

_03BD:
    ScrCmd_02C 9
    ScrCmd_031
    ScrCmd_034
    GoTo _066D
    End

_03CC:
    ScrCmd_060
    ScrCmd_1CF 2, 0x800C
    GoToIfEq 0x800C, 1, _03BD
    ScrCmd_1CF 1
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 10
    ScrCmd_034
    ScrCmd_0C5 0x8000
    ScrCmd_02C 11
    ScrCmd_031
    ScrCmd_034
    ScrCmd_201 0x8004
    ScrCmd_1CD 22, 0x8004, 0, 0, 0
    GoTo _0675

_040E:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_09A 0x800C, 0x1AF
    GoToIfEq 0x800C, 6, _0469
    ScrCmd_15B 6, 0x800C
    GoToIfEq 0x800C, 0, _0469
    ScrCmd_160 0x800C
    GoToIfEq 0x800C, 1, _0478
    ScrCmd_02C 18
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0487
    ScrCmd_034
    GoTo _0671
    End

_0469:
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    GoTo _0671
    End

_0478:
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    GoTo _0671
    End

_0487:
    ScrCmd_09A 0x800C, 0x1AF
    SetVar 0x8004, 0x800C
    ScrCmd_0D6 0, 0x800C
    ScrCmd_02C 19
    ScrCmd_034
    ScrCmd_0BF 0x8004
    ScrCmd_201 0x8004
    ScrCmd_1CD 26, 0x8004, 0, 0, 0
    GoTo _0671
    End

_04B9:
    ScrCmd_060
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 19
    ScrCmd_034
    ScrCmd_0BF 0x8000
    ScrCmd_201 0x8004
    ScrCmd_1CD 26, 0x8004, 0, 0, 0
    ScrCmd_061
    End

_04DD:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_160 0x800C
    GoToIfEq 0x800C, 1, _0512
    ScrCmd_02C 12
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _051F
    ScrCmd_034
    GoTo _0671
    End

_0512:
    ScrCmd_02C 14
    ScrCmd_031
    ScrCmd_034
    GoTo _0671

_051F:
    ScrCmd_09A 0x800C, 57
    SetVar 0x8004, 0x800C
    ScrCmd_0D6 0, 0x800C
    ScrCmd_02C 13
    ScrCmd_034
    ScrCmd_0C0 0x8004
    ScrCmd_201 0x8004
    ScrCmd_1CD 21, 0x8004, 0, 0, 0
    GoTo _0671
    End

_0551:
    ScrCmd_060
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 13
    ScrCmd_034
    ScrCmd_063 0xFF
    ScrCmd_0C0 0x8000
    ScrCmd_062 0xFF
    ScrCmd_201 0x8004
    ScrCmd_1CD 21, 0x8004, 0, 0, 0
    ScrCmd_061
    End

_057D:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_09A 0x800C, 0x1B0
    GoToIfEq 0x800C, 6, _05B4
    ScrCmd_02C 15
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _05C3
    ScrCmd_034
    GoTo _0671
    End

_05B4:
    ScrCmd_02C 17
    ScrCmd_031
    ScrCmd_034
    GoTo _0671
    End

_05C3:
    ScrCmd_09A 0x800C, 0x1B0
    SetVar 0x8004, 0x800C
    ScrCmd_0D6 0, 0x800C
    ScrCmd_02C 16
    ScrCmd_034
    ScrCmd_0C5 0x8004
    ScrCmd_201 0x8004
    ScrCmd_1CD 23, 0x8004, 0, 0, 0
    ScrCmd_201 0x8004
    CallIfEq 0x8004, 0x169, _0606
    GoTo _0671
    End

_0606:
    SetFlag 123
    Return

_060C:
    ScrCmd_060
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 16
    ScrCmd_034
    ScrCmd_0C5 0x8000
    ScrCmd_1D1 1
    ScrCmd_049 0x64C
    ScrCmd_0C4
    ScrCmd_201 0x8004
    ScrCmd_1CD 23, 0x8004, 0, 0, 0
    ScrCmd_201 0x8004
    CallIfEq 0x8004, 0x169, _0606
    GoTo _0675

_064C:
    ScrCmd_060
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 26
    ScrCmd_034
    ScrCmd_0C5 0x8000
    ScrCmd_1D0 1
    ScrCmd_0C3
    ScrCmd_003 42, 0x800C
    GoTo _0675

_066D:
    ScrCmd_061
    End

_0671:
    ScrCmd_061
    End

_0675:
    ScrCmd_061
    End

_0679:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_09A 0x800C, 127
    GoToIfEq 0x800C, 6, _06C3
    ScrCmd_15B 7, 0x800C
    GoToIfEq 0x800C, 0, _06C3
    ScrCmd_02C 22
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _06D2
    ScrCmd_034
    GoTo _0671
    End

_06C3:
    ScrCmd_02C 24
    ScrCmd_031
    ScrCmd_034
    GoTo _0671
    End

_06D2:
    ScrCmd_09A 0x800C, 127
    SetVar 0x8004, 0x800C
    ScrCmd_0D6 0, 0x800C
    ScrCmd_02C 23
    ScrCmd_034
    ScrCmd_0C1 0x8004
    ScrCmd_201 0x8004
    ScrCmd_1CD 25, 0x8004, 0, 0, 0
    GoTo _0671
    End

_0704:
    ScrCmd_060
    ScrCmd_0D6 0, 0x8000
    ScrCmd_02C 23
    ScrCmd_034
    ScrCmd_063 0xFF
    ScrCmd_0C1 0x8000
    ScrCmd_062 0xFF
    ScrCmd_201 0x8004
    ScrCmd_1CD 25, 0x8004, 0, 0, 0
    ScrCmd_061
    End

_0730:
    End

    .byte 0
    .byte 0
