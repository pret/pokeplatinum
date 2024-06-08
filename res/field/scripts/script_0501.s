    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0124
    .short 0xFD13

_000A:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_16D
    ScrCmd_16E 0x800C
    GoToIfEq 0x800C, 1, _004A
    GoToIfEq 0x800C, 2, _00BE
    GoToIfEq 0x800C, 3, _00CB
    ScrCmd_02C 0
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_004A:
    ScrCmd_02C 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0083
    ScrCmd_02C 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0083
    ScrCmd_02C 3
    ScrCmd_031
    ScrCmd_034
    ClearFlag 115
    ScrCmd_1A8
    ScrCmd_061
    End

_0083:
    ScrCmd_177 0x800C
    GoToIfNe 0x800C, 6, _009F
    ScrCmd_02C 4
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_009F:
    ScrCmd_0CD 0
    ScrCmd_02C 5
    ScrCmd_04E 0x486
    ScrCmd_04F
    ScrCmd_030
    ScrCmd_02C 6
    ScrCmd_031
    ScrCmd_034
    ScrCmd_1A9
    ClearFlag 115
    ScrCmd_061
    End

_00BE:
    ScrCmd_16D
    ScrCmd_02C 2
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_00CB:
    ScrCmd_16D
    ScrCmd_02C 9
    ScrCmd_1BE 0x800C
    CallIfEq 0x800C, 0, _0110
    CallIfEq 0x800C, 1, _0115
    CallIfEq 0x800C, 2, _011A
    CallIfEq 0x800C, 3, _011F
    ScrCmd_031
    ScrCmd_034
    ScrCmd_061
    End

_0110:
    ScrCmd_02C 11
    Return

_0115:
    ScrCmd_02C 12
    Return

_011A:
    ScrCmd_02C 13
    Return

_011F:
    ScrCmd_02C 14
    Return

_0124:
    ScrCmd_049 0x5DC
    ScrCmd_060
    ScrCmd_068
    ScrCmd_072 20, 2
    ScrCmd_16E 0x800C
    GoToIfEq 0x800C, 1, _02E2
    GoToIfEq 0x800C, 2, _0309
    GoToIfEq 0x800C, 3, _04A0
    ScrCmd_02C 15
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _017E
    ScrCmd_02C 20
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_017E:
    ScrCmd_19A 0x800C
    GoToIfEq 0x800C, 1, _02BB
    ScrCmd_19C 0x800C
    GoToIfEq 0x800C, 2, _02D5
    ScrCmd_02C 16
    ScrCmd_034
    ScrCmd_073
    ScrCmd_0BC 6, 1, 0, 0
    ScrCmd_0BD
    SetVar 0x800C, 0
_01B9:
    ScrCmd_290 0x800C
    ScrCmd_291 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _01DE
    ScrCmd_196 0x8000
    ScrCmd_197 0x800C
    GoTo _01B9

_01DE:
    ScrCmd_0A1
    ScrCmd_072 20, 2
    ScrCmd_0BC 6, 1, 1, 0
    ScrCmd_0BD
    GoToIfEq 0x8000, 0xFF, _0292
    ScrCmd_31E 0x8000, 0x800C
    GoToIfEq 0x800C, 0xFF, _04EF
    ScrCmd_198 0x8000, 0x800C
    GoToIfEq 0x800C, 0, _0285
    ScrCmd_19B 0x800C, 0x8000
    GoToIfEq 0x800C, 0, _02C8
    ScrCmd_1AF 0, 0x8000, 0x8001
    ScrCmd_1B0 0x8000
    SetFlag 254
    ScrCmd_16E 0x800C
    GoToIfEq 0x800C, 2, _025F
    GoTo _0270

_025F:
    ScrCmd_04C 0x8001, 0
    ScrCmd_02C 17
    ScrCmd_04D
    GoTo _029F

_0270:
    ScrCmd_04C 0x8001, 0
    ScrCmd_02C 36
    ScrCmd_031
    ScrCmd_034
    ScrCmd_04D
    ScrCmd_073
    ScrCmd_061
    End

_0285:
    ScrCmd_02C 35
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_0292:
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_029F:
    ScrCmd_02C 18
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _017E
    GoTo _0292
    End

_02BB:
    ScrCmd_02C 31
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_02C8:
    ScrCmd_02C 33
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_02D5:
    ScrCmd_02C 34
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_02E2:
    ScrCmd_02C 19
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_02EF:
    ScrCmd_02C 25
    Return

_02F4:
    ScrCmd_1AE 0x800C, 0x8000
    CallIfNe 0x800C, 0, _02EF
    Return

_0309:
    ScrCmd_02C 24
    SetVar 0x8000, 0
    Call _02F4
    ScrCmd_02C 18
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _017E
    ScrCmd_02C 32
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0346
    GoTo _0292

_0346:
    ScrCmd_177 0x800C
    GoToIfEq 0x800C, 6, _045E
    ScrCmd_16E 0x800C
    SetVar 0x8001, 0
    GoToIfEq 0x800C, 2, _03BE
    ScrCmd_040 1, 1, 0, 1, 0x8001
    ScrCmd_1BC 0, 1, 2, 0
    ScrCmd_042 134, 0
    ScrCmd_1BC 0, 1, 2, 1
    ScrCmd_042 135, 1
    ScrCmd_042 136, 2
    ScrCmd_043
    SetVar 0x8008, 0x8001
    GoToIfEq 0x8008, 0, _03BE
    GoToIfEq 0x8008, 1, _03BE
    GoTo _0292

_03BE:
    ScrCmd_1AA 0x8004, 0x8001
    ScrCmd_02C 28
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _03DE
    GoTo _0292

_03DE:
    ScrCmd_1AB 0x800C, 0x8004
    GoToIfEq 0x800C, 1, _03FE
    ScrCmd_02C 21
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

_03FE:
    ApplyMovement 0, _046C
    WaitMovement
    ScrCmd_1A4 0x8002, 0x8001
    ScrCmd_1A3 0x8004
    ScrCmd_074
    ScrCmd_049 0x644
    ScrCmd_04B 0x644
    ScrCmd_02C 29
    ScrCmd_04C 0x8002, 0
    ScrCmd_0CD 1
    ScrCmd_02C 30
    ScrCmd_04D
    ScrCmd_16E 0x800C
    GoToIfEq 0x800C, 2, _0444
    GoTo _0292

_0444:
    ScrCmd_02C 22
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0346
    GoTo _0292

_045E:
    ScrCmd_02C 26
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

    .balign 4, 0
_046C:
    MoveAction_03E 3
    MoveAction_002
    MoveAction_03E 3
    MoveAction_003
    MoveAction_03E 3
    MoveAction_000
    MoveAction_00C 2
    MoveAction_045
    MoveAction_03F 3
    MoveAction_001
    MoveAction_046
    MoveAction_00D 2
    EndMovement

_04A0:
    ScrCmd_02C 24
    SetVar 0x8000, 0
    Call _02F4
    SetVar 0x8000, 1
    Call _02F4
    ScrCmd_02C 32
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0346
    ScrCmd_02C 23
    ScrCmd_031
    ScrCmd_034
    ScrCmd_073
    ScrCmd_061
    End

    .byte 73
    .byte 0
    .byte 220
    .byte 5
    .byte 96
    .byte 0
    .byte 44
    .byte 0
    .byte 37
    .byte 172
    .byte 1
    .byte 52
    .byte 0
    .byte 115
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_04EF:
    ScrCmd_073
    ScrCmd_014 0x809
    End

    .byte 0
