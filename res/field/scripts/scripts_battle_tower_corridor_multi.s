#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0068
    ScriptEntry _008D
    ScriptEntryEnd

_000E:
    GoToIfEq VAR_UNK_0x40DD, 0, _0048
    ScrCmd_207 VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, _004A
    ScrCmd_1DD 55, 0, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    ScrCmd_1DD 55, 1, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
_0048:
    End

_004A:
    ScrCmd_1DD 55, 0, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
    ScrCmd_1DD 55, 1, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    End

_0068:
    CallIfNe VAR_UNK_0x40DD, 0, _007F
    ScrCmd_1B2 2
    ScrCmd_1B2 3
    End

_007F:
    ScrCmd_1B2 0xFF
    ScrCmd_06B 8, 0, 0
    Return

_008D:
    LockAll
    Call _00C9
    Call _012B
    Call _014F
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_MULTI_BATTLE_ROOM, 0, 7, 5, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_00C9:
    ScrCmd_168 0, 0, 3, 2, 77
    ScrCmd_168 0, 0, 14, 2, 78
    ScrCmd_16B 77
    ScrCmd_16B 78
    ScrCmd_169 77
    ScrCmd_169 78
    ApplyMovement 0, _0174
    ApplyMovement 1, _0174
    WaitMovement
    ScrCmd_1B1 2
    ScrCmd_1B1 3
    ApplyMovement 2, _0180
    ApplyMovement 3, _0180
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_16C 78
    ScrCmd_169 77
    ScrCmd_169 78
    ScrCmd_16A 77
    ScrCmd_16A 78
    Return

_012B:
    ApplyMovement 0, _01AC
    ApplyMovement 2, _0188
    ApplyMovement 1, _01CC
    ApplyMovement 3, _0194
    WaitMovement
    Return

_014F:
    ApplyMovement 0, _01EC
    ApplyMovement 1, _01EC
    ApplyMovement 2, _01A0
    ApplyMovement 3, _01A0
    WaitMovement
    Return

    .balign 4, 0
_0174:
    MoveAction_WalkNormalSouth 3
    MoveAction_FaceNorth
    EndMovement

    .balign 4, 0
_0180:
    MoveAction_WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_0188:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalEast 5
    EndMovement

    .balign 4, 0
_0194:
    MoveAction_WalkNormalSouth
    MoveAction_WalkNormalWest 5
    EndMovement

    .balign 4, 0
_01A0:
    MoveAction_WalkNormalNorth 2
    MoveAction_SetInvisible
    EndMovement

    .balign 4, 0
_01AC:
    MoveAction_WalkNormalEast 5
    MoveAction_WalkNormalNorth
    MoveAction_Delay8
    MoveAction_FaceEast
    MoveAction_Delay4
    MoveAction_FaceNorth
    MoveAction_Delay4
    EndMovement

    .balign 4, 0
_01CC:
    MoveAction_WalkNormalWest 5
    MoveAction_WalkNormalNorth
    MoveAction_Delay8
    MoveAction_FaceWest
    MoveAction_Delay4
    MoveAction_FaceNorth
    MoveAction_Delay4
    EndMovement

    .balign 4, 0
_01EC:
    MoveAction_WalkNormalNorth
    MoveAction_SetInvisible
    EndMovement
