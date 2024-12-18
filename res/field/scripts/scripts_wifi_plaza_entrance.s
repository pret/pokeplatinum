#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    LockAll
    ScrCmd_1B7 0x8000, 5
    SetVar 0x8008, 0x8000
    GoToIfEq 0x8008, 0, _0057
    GoToIfEq 0x8008, 1, _0071
    GoToIfEq 0x8008, 2, _008B
    GoToIfEq 0x8008, 3, _00A5
    GoToIfEq 0x8008, 4, _00BF
    End

_0057:
    ApplyMovement 0xFF, _0148
    ApplyMovement 0, _01F0
    WaitMovement
    GoTo _00D9
    End

_0071:
    ApplyMovement 0xFF, _0154
    ApplyMovement 0, _0200
    WaitMovement
    GoTo _00D9
    End

_008B:
    ApplyMovement 0xFF, _0160
    ApplyMovement 0, _0210
    WaitMovement
    GoTo _00D9
    End

_00A5:
    ApplyMovement 0xFF, _016C
    ApplyMovement 0, _0220
    WaitMovement
    GoTo _00D9
    End

_00BF:
    ApplyMovement 0xFF, _0178
    ApplyMovement 0, _0230
    WaitMovement
    GoTo _00D9
    End

_00D9:
    Message 0
    WaitABPress
    CloseMessage
    ApplyMovement 0xFF, _0184
    ApplyMovement 0, _0240
    WaitMovement
    PlayFanfare SEQ_SE_DP_TELE2
    ApplyMovement 0xFF, _01E8
    WaitMovement
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    SetVar 0x4003, 1
    Warp 0x405C, 0, 5, 2, 1
    ScrCmd_1F8
    ScrCmd_0B3 0x800C
    SetVar 0x8004, 0x800C
    ScrCmd_2F7 0x8004
    ScrCmd_0A1
    SetVar 0x4080, 1
    ScrCmd_1B2 0xFF
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .balign 4, 0
_0148:
    MoveAction_012 7
    MoveAction_014 11
    EndMovement

    .balign 4, 0
_0154:
    MoveAction_012 7
    MoveAction_014 9
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_012 7
    MoveAction_014 7
    EndMovement

    .balign 4, 0
_016C:
    MoveAction_012 7
    MoveAction_014 5
    EndMovement

    .balign 4, 0
_0178:
    MoveAction_012 7
    MoveAction_014 3
    EndMovement

    .balign 4, 0
_0184:
    MoveAction_012
    MoveAction_002
    MoveAction_061
    MoveAction_001
    MoveAction_061
    MoveAction_003
    MoveAction_061
    MoveAction_000
    MoveAction_061
    MoveAction_002
    MoveAction_061
    MoveAction_001
    MoveAction_061
    MoveAction_003
    MoveAction_061
    MoveAction_000
    MoveAction_061
    MoveAction_002
    MoveAction_061
    MoveAction_001
    MoveAction_061
    MoveAction_003
    MoveAction_061
    MoveAction_000
    EndMovement

    .balign 4, 0
_01E8:
    MoveAction_067
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_012 6
    MoveAction_014 12
    MoveAction_035
    EndMovement

    .balign 4, 0
_0200:
    MoveAction_012 6
    MoveAction_014 10
    MoveAction_035
    EndMovement

    .balign 4, 0
_0210:
    MoveAction_012 6
    MoveAction_014 8
    MoveAction_035
    EndMovement

    .balign 4, 0
_0220:
    MoveAction_012 6
    MoveAction_014 6
    MoveAction_035
    EndMovement

    .balign 4, 0
_0230:
    MoveAction_012 6
    MoveAction_014 4
    MoveAction_035
    EndMovement

    .balign 4, 0
_0240:
    MoveAction_032
    EndMovement
