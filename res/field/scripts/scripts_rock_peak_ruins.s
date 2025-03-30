#include "macros/scrcmd.inc"
#include "res/text/bank/rock_peak_ruins.h"

    .data

    ScriptEntry _0026
    ScriptEntry _003D
    ScriptEntry _012D
    ScriptEntry _0148
    ScriptEntry _0163
    ScriptEntry _017E
    ScriptEntry _0199
    ScriptEntry _01B4
    ScriptEntry _01CF
    ScriptEntryEnd

_0026:
    GoToIfLt 0x406B, 0x118, _0035
    End

_0035:
    SetVar 0x406B, 0
    End

_003D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq 0x406B, 0x122, _00ED
    GoToIfEq 0x406B, 0x118, _00F8
    GoToIfUnset FLAG_GAME_COMPLETED, _010F
    ScrCmd_32B 0x800C
    GoToIfEq 0x800C, 0, _011A
    GoToIfEq 0x406B, 0x10E, _00AE
    GoToIfLt 0x406B, 0x104, _011A
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    SetVar 0x406B, 0x10E
    Message 1
    GoTo _0125
    End

_00AE:
    PlayCry SPECIES_REGIROCK
    Message 2
    ScrCmd_04D
    CloseMessage
    StartLegendaryBattle SPECIES_REGIROCK, 30
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _0109
    CheckDidNotCapture 0x800C
    GoToIfEq 0x800C, TRUE, _00F8
    SetVar 0x406B, 0x122
    ReleaseAll
    End

_00ED:
    Message 3
    GoTo _0125
    End

_00F8:
    SetVar 0x406B, 0x118
    Message 3
    GoTo _0125
    End

_0109:
    BlackOutFromBattle
    ReleaseAll
    End

_010F:
    Message 4
    GoTo _0125
    End

_011A:
    Message 0
    GoTo _0125
    End

_0125:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012D:
    SetVar 0x4001, 1
    GoToIfGe 0x406B, 0x104, _020D
    GoTo _01EA
    End

_0148:
    SetVar 0x4002, 1
    GoToIfGe 0x406B, 0x104, _020D
    GoTo _01EA
    End

_0163:
    SetVar 0x4003, 1
    GoToIfGe 0x406B, 0x104, _020D
    GoTo _01EA
    End

_017E:
    SetVar 0x4004, 1
    GoToIfGe 0x406B, 0x104, _020D
    GoTo _01EA
    End

_0199:
    SetVar 0x4005, 1
    GoToIfGe 0x406B, 0x104, _020D
    GoTo _01EA
    End

_01B4:
    SetVar 0x4006, 1
    GoToIfGe 0x406B, 0x104, _020D
    GoTo _01EA
    End

_01CF:
    SetVar 0x4007, 1
    GoToIfGe 0x406B, 0x104, _020D
    GoTo _01EA
    End

_01EA:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    ScrCmd_32C 0x406B, 0x250, 0x8004, 0x8005
    GoToIfGe 0x406B, 0x104, _020F
    ReleaseAll
    End

_020D:
    End

_020F:
    GoToIfUnset FLAG_GAME_COMPLETED, _020D
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    SetVar 0x406B, 0x10E
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
