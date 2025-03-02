#include "macros/scrcmd.inc"
#include "res/text/bank/verity_lakefront.h"

    .data

    ScriptEntry _0012
    ScriptEntry _004E
    ScriptEntry _0066
    ScriptEntry _014C
    ScriptEntryEnd

_0012:
    GoToIfUnset FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN, _002A
    GoToIfSet FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN, _003C
    End

_002A:
    SetWarpEventPos 2, 80, 0x348
    SetWarpEventPos 3, 81, 0x348
    End

_003C:
    SetWarpEventPos 1, 80, 0x348
    SetWarpEventPos 0, 81, 0x348
    End

_004E:
    GoToIfUnset FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN, _002A
    GoToIfSet FLAG_DEFEATED_COMMANDER_SATURN_VALOR_CAVERN, _003C
    End

_0066:
    LockAll
    ApplyMovement 242, _0124
    ApplyMovement LOCALID_PLAYER, _0144
    WaitMovement
    BufferRivalName 0
    Message 0
    CloseMessage
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 80, _00D8
    GoToIfEq 0x8004, 81, _00D8
    GoToIfEq 0x8004, 82, _00D8
    GoToIfEq 0x8004, 83, _00D8
    GoToIfEq 0x8004, 84, _00D8
    GoToIfEq 0x8004, 85, _00D8
    End

_00D8:
    ApplyMovement LOCALID_PLAYER, _0138
    ApplyMovement 242, _012C
    WaitMovement
    GoTo _00F0

_00F0:
    SetVar 0x4082, 1
    ReleaseAll
    PlayFanfare SEQ_SE_DP_KAIDAN2
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_LAKE_VERITY_LOW_WATER, 0, 46, 54, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .balign 4, 0
_0124:
    MoveAction_032
    EndMovement

    .balign 4, 0
_012C:
    MoveAction_012 2
    MoveAction_069
    EndMovement

    .balign 4, 0
_0138:
    MoveAction_012
    MoveAction_069
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_033
    EndMovement

_014C:
    ShowScrollingSign 3
    End

    .byte 0
    .byte 0
    .byte 0
