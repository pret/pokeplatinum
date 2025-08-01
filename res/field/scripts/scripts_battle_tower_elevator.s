#include "macros/scrcmd.inc"


    ScriptEntry _0012
    ScriptEntry _0146
    ScriptEntry _015C
    ScriptEntry _0172
    ScriptEntryEnd

_0012:
    CallIfNe VAR_UNK_0x40DB, 0, _008A
    ScrCmd_1DD 43, 0, VAR_MAP_LOCAL_A
    Call _008E
    CallIfEq VAR_MAP_LOCAL_A, 2, _009E
    CallIfEq VAR_MAP_LOCAL_A, 3, _009E
    CallIfEq VAR_MAP_LOCAL_A, 0, _008E
    CallIfEq VAR_MAP_LOCAL_A, 1, _008E
    CallIfEq VAR_MAP_LOCAL_A, 4, _0096
    CallIfEq VAR_MAP_LOCAL_A, 5, _0096
    CallIfEq VAR_MAP_LOCAL_A, 6, _0096
    End

_008A:
    HidePoketch
    Return

_008E:
    SetVar VAR_OBJ_GFX_ID_A, 231
    Return

_0096:
    SetVar VAR_OBJ_GFX_ID_A, 235
    Return

_009E:
    SetVar VAR_OBJ_GFX_ID_A, 232
    Return

_00A6:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1DD 43, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 4, _01F8
    GoToIfEq VAR_RESULT, 5, _01F8
    ScrCmd_1F8
    ScrCmd_2C4 5
    ReturnToField
    Warp MAP_HEADER_BATTLE_TOWER, 0, 15, 6, 0
    End

_00E9:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1F8
    ScrCmd_2C4 6
    ReturnToField
    Warp MAP_HEADER_BATTLE_TOWER, 0, 11, 6, 0
    End

_010A:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_BATTLE_SALON, 0, 8, 2, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0132:
    Call _0188
    ScrCmd_23C VAR_MAP_LOCAL_0, 3
    Call _0194
    Return

_0146:
    LockAll
    SetVar VAR_MAP_LOCAL_0, 0
    Call _0132
    GoTo _00A6
    End

_015C:
    LockAll
    SetVar VAR_MAP_LOCAL_0, 0
    Call _0132
    GoTo _00E9
    End

_0172:
    LockAll
    SetVar VAR_MAP_LOCAL_0, 1
    Call _0132
    GoTo _010A
    End

_0188:
    ApplyMovement LOCALID_PLAYER, _01BC
    WaitMovement
    Return

_0194:
    ApplyMovement 0, _01C8
    ApplyMovement LOCALID_PLAYER, _01E4
    WaitMovement
    Return

BattleTowerElevator_UnusedMovement:
    WalkNormalNorth 2
    FaceEast
    WalkNormalEast
    FaceSouth
    EndMovement

    .balign 4, 0
_01BC:
    WalkNormalNorth 2
    FaceSouth
    EndMovement

    .balign 4, 0
_01C8:
    WalkNormalSouth
    FaceWest
    WalkNormalWest
    FaceSouth
    WalkNormalSouth
    SetInvisible
    EndMovement

    .balign 4, 0
_01E4:
    Delay8 2
    Delay2
    WalkNormalSouth 2
    SetInvisible
    EndMovement

_01F8:
    ScrCmd_1F8
    ScrCmd_2C4 5
    ReturnToField
    Warp MAP_HEADER_BATTLE_TOWER, 0, 19, 6, 0
    End

    .balign 4, 0
