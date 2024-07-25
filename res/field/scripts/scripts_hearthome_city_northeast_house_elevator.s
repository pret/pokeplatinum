#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    LockAll
    ApplyMovement 0xFF, _00B8
    WaitMovement
    ScrCmd_11C 0x40CE
    SetVar 0x8008, 0x40CE
    GoToIfEq 0x8008, 1, _0038
    GoToIfEq 0x8008, 0, _006A
    End

_0038:
    SetVar 0x8004, 0
    Call _009C
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_HEARTHOME_CITY_NORTHEAST_HOUSE_2F, 0, 18, 3, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_006A:
    SetVar 0x8004, 1
    Call _009C
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_HEARTHOME_CITY_NORTHEAST_HOUSE_1F, 0, 18, 3, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_009C:
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_23C 0x8004, 4
    ApplyMovement 0xFF, _00C4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    Return

    .balign 4, 0
_00B8:
    MoveAction_00C 2
    MoveAction_021
    EndMovement

    .balign 4, 0
_00C4:
    MoveAction_00D 2
    MoveAction_021
    EndMovement
