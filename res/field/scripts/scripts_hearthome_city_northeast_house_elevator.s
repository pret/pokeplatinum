#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    LockAll
    ApplyMovement LOCALID_PLAYER, _00B8
    WaitMovement
    GetFloorsAbove VAR_UNK_0x40CE
    SetVar VAR_0x8008, VAR_UNK_0x40CE
    GoToIfEq VAR_0x8008, 1, _0038
    GoToIfEq VAR_0x8008, 0, _006A
    End

_0038:
    SetVar VAR_0x8004, 0
    Call _009C
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_HEARTHOME_CITY_NORTHEAST_HOUSE_2F, 0, 18, 3, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_006A:
    SetVar VAR_0x8004, 1
    Call _009C
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_HEARTHOME_CITY_NORTHEAST_HOUSE_1F, 0, 18, 3, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_009C:
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_23C VAR_0x8004, 4
    ApplyMovement LOCALID_PLAYER, _00C4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    Return

    .balign 4, 0
_00B8:
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_00C4:
    WalkNormalSouth 2
    WalkOnSpotNormalSouth
    EndMovement
