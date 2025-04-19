#include "macros/scrcmd.inc"
#include "res/text/bank/wifi_plaza_entrance.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    LockAll
    GetRandom VAR_0x8000, 5
    SetVar VAR_0x8008, VAR_0x8000
    GoToIfEq VAR_0x8008, 0, _0057
    GoToIfEq VAR_0x8008, 1, _0071
    GoToIfEq VAR_0x8008, 2, _008B
    GoToIfEq VAR_0x8008, 3, _00A5
    GoToIfEq VAR_0x8008, 4, _00BF
    End

_0057:
    ApplyMovement LOCALID_PLAYER, _0148
    ApplyMovement 0, _01F0
    WaitMovement
    GoTo _00D9
    End

_0071:
    ApplyMovement LOCALID_PLAYER, _0154
    ApplyMovement 0, _0200
    WaitMovement
    GoTo _00D9
    End

_008B:
    ApplyMovement LOCALID_PLAYER, _0160
    ApplyMovement 0, _0210
    WaitMovement
    GoTo _00D9
    End

_00A5:
    ApplyMovement LOCALID_PLAYER, _016C
    ApplyMovement 0, _0220
    WaitMovement
    GoTo _00D9
    End

_00BF:
    ApplyMovement LOCALID_PLAYER, _0178
    ApplyMovement 0, _0230
    WaitMovement
    GoTo _00D9
    End

_00D9:
    Message 0
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0184
    ApplyMovement 0, _0240
    WaitMovement
    PlayFanfare SEQ_SE_DP_TELE2
    ApplyMovement LOCALID_PLAYER, _01E8
    WaitMovement
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    SetVar VAR_0x4003, 1
    Warp 0x405C, 0, 5, 2, 1
    ScrCmd_1F8
    ScrCmd_0B3 VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    ScrCmd_2F7 VAR_0x8004
    ReturnToField
    SetVar VAR_UNK_0x4080, 1
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
