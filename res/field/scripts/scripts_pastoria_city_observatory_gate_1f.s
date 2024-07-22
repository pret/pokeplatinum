#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0020
    ScriptEntry _0022
    ScriptEntry _01CC
    ScriptEntry _0298
    ScriptEntry _02BF
    ScriptEntry _0300
    ScriptEntry _001E
    .short 0xFD13

_001E:
    End

_0020:
    End

_0022:
    LockAll
    ApplyMovement 0xFF, _0194
    WaitMovement
    GetPlayerMapPos 0x4000, 0x4001
    CallIfEq 0x4000, 5, _017D
    ScrCmd_072 20, 2
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _006A
    GoToIfEq 0x800C, 1, _0156
    End

_006A:
    ScrCmd_252 0x800C
    GoToIfNe 0x800C, 0, _008C
    ScrCmd_177 0x800C
    GoToIfEq 0x800C, 6, _0168
_008C:
    Message 1
    ScrCmd_071 0x800C, 0x1F4
    GoToIfEq 0x800C, 0, _0141
    PlayFanfare SEQ_SE_DP_REGI
    ScrCmd_070 0x1F4
    ScrCmd_074
    Message 2
    BufferPlayerName 0
    Message 3
    Message 4
    CloseMessage
    ScrCmd_073
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 4, _00E2
    GoToIfEq 0x8004, 5, _00F2
    End

_00E2:
    ApplyMovement 0xFF, _019C
    WaitMovement
    GoTo _0102

_00F2:
    ApplyMovement 0xFF, _01B4
    WaitMovement
    GoTo _0102

_0102:
    SetVar 0x40DA, 1
    ScrCmd_202 0
    ScrCmd_11B 125, 2, 5, 2, 1
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_GREAT_MARSH_6, 0, 68, 116, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0141:
    Message 6
    CloseMessage
    ScrCmd_073
    ApplyMovement 0xFF, _01C4
    WaitMovement
    ReleaseAll
    End

_0156:
    CloseMessage
    ScrCmd_073
    ApplyMovement 0xFF, _01C4
    WaitMovement
    ReleaseAll
    End

_0168:
    ScrCmd_073
    Message 7
    CloseMessage
    ApplyMovement 0xFF, _01C4
    WaitMovement
    ReleaseAll
    End

_017D:
    ApplyMovement 0xFF, _018C
    WaitMovement
    Return

    .balign 4, 0
_018C:
    MoveAction_00E
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_022
    EndMovement

    .balign 4, 0
_019C:
    MoveAction_020
    MoveAction_00C 3
    MoveAction_00F
    MoveAction_00C
    MoveAction_045
    EndMovement

    .balign 4, 0
_01B4:
    MoveAction_020
    MoveAction_00C 4
    MoveAction_045
    EndMovement

    .balign 4, 0
_01C4:
    MoveAction_00D
    EndMovement

_01CC:
    LockAll
    Message 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _01F1
    GoToIfEq 0x800C, 1, _024E
    End

_01F1:
    Message 10
    CloseMessage
    ApplyMovement 0xFF, _0280
    WaitMovement
    SetVar 0x40DA, 0
    ScrCmd_202 1
    ScrCmd_31B 0x4002
    GoToIfGe 0x4002, 5, _021E
    ReleaseAll
    End

_021E:
    GoToIfSet 163, _024A
    ApplyMovement 2, _0334
    WaitMovement
    Message 18
    SetVar 0x8004, 22
    CallCommonScript 0x7D9
    SetFlag 163
    CloseMessage
    ReleaseAll
    End

_024A:
    ReleaseAll
    End

_024E:
    CloseMessage
    ApplyMovement 0xFF, _0288
    WaitMovement
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_GREAT_MARSH_6, 0, 68, 116, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .balign 4, 0
_0280:
    MoveAction_00D 5
    EndMovement

    .balign 4, 0
_0288:
    MoveAction_000
    MoveAction_00C
    MoveAction_045
    EndMovement

_0298:
    LockAll
    ApplyMovement 0xFF, _0280
    WaitMovement
    SetVar 0x40DA, 0
    ScrCmd_31B 0x4002
    GoToIfGe 0x4002, 5, _021E
    ReleaseAll
    End

_02BF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 12
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _02EA
    GoToIfEq 0x800C, 1, _02F5
    End

_02EA:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02F5:
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0300:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 163, _031E
    Message 15
    GoTo _0329
    End

_031E:
    Message 19
    GoTo _0329
    End

_0329:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0334:
    MoveAction_00F 4
    MoveAction_020
    EndMovement

    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
