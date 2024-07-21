#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0124
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_16D
    ScrCmd_16E 0x800C
    GoToIfEq 0x800C, 1, _004A
    GoToIfEq 0x800C, 2, _00BE
    GoToIfEq 0x800C, 3, _00CB
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_004A:
    Message 1
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0083
    Message 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0083
    Message 3
    WaitABXPadPress
    CloseMessage
    ClearFlag 115
    ScrCmd_1A8
    ReleaseAll
    End

_0083:
    ScrCmd_177 0x800C
    GoToIfNe 0x800C, 6, _009F
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009F:
    BufferPlayerName 0
    Message 5
    PlaySound SEQ_FANFA4
    WaitSound
    WaitABPress
    Message 6
    WaitABXPadPress
    CloseMessage
    ScrCmd_1A9
    ClearFlag 115
    ReleaseAll
    End

_00BE:
    ScrCmd_16D
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CB:
    ScrCmd_16D
    Message 9
    ScrCmd_1BE 0x800C
    CallIfEq 0x800C, 0, _0110
    CallIfEq 0x800C, 1, _0115
    CallIfEq 0x800C, 2, _011A
    CallIfEq 0x800C, 3, _011F
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0110:
    Message 11
    Return

_0115:
    Message 12
    Return

_011A:
    Message 13
    Return

_011F:
    Message 14
    Return

_0124:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_072 20, 2
    ScrCmd_16E 0x800C
    GoToIfEq 0x800C, 1, _02E2
    GoToIfEq 0x800C, 2, _0309
    GoToIfEq 0x800C, 3, _04A0
    Message 15
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _017E
    Message 20
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_017E:
    ScrCmd_19A 0x800C
    GoToIfEq 0x800C, 1, _02BB
    ScrCmd_19C 0x800C
    GoToIfEq 0x800C, 2, _02D5
    Message 16
    CloseMessage
    ScrCmd_073
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
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
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
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
    Message 17
    ScrCmd_04D
    GoTo _029F

_0270:
    ScrCmd_04C 0x8001, 0
    Message 36
    WaitABXPadPress
    CloseMessage
    ScrCmd_04D
    ScrCmd_073
    ReleaseAll
    End

_0285:
    Message 35
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_0292:
    Message 23
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_029F:
    Message 18
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _017E
    GoTo _0292
    End

_02BB:
    Message 31
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_02C8:
    Message 33
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_02D5:
    Message 34
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_02E2:
    Message 19
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_02EF:
    Message 25
    Return

_02F4:
    ScrCmd_1AE 0x800C, 0x8000
    CallIfNe 0x800C, 0, _02EF
    Return

_0309:
    Message 24
    SetVar 0x8000, 0
    Call _02F4
    Message 18
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _017E
    Message 32
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
    Message 28
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _03DE
    GoTo _0292

_03DE:
    ScrCmd_1AB 0x800C, 0x8004
    GoToIfEq 0x800C, 1, _03FE
    Message 21
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_03FE:
    ApplyMovement 0, _046C
    WaitMovement
    ScrCmd_1A4 0x8002, 0x8001
    ScrCmd_1A3 0x8004
    ScrCmd_074
    PlayFanfare SEQ_SE_DP_REGI
    WaitFanfare SEQ_SE_DP_REGI
    Message 29
    ScrCmd_04C 0x8002, 0
    BufferPlayerName 1
    Message 30
    ScrCmd_04D
    ScrCmd_16E 0x800C
    GoToIfEq 0x800C, 2, _0444
    GoTo _0292

_0444:
    Message 22
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0346
    GoTo _0292

_045E:
    Message 26
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
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
    Message 24
    SetVar 0x8000, 0
    Call _02F4
    SetVar 0x8000, 1
    Call _02F4
    Message 32
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0346
    Message 23
    WaitABXPadPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
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
    CallCommonScript 0x809
    End

    .byte 0
