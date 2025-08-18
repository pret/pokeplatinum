#include "macros/scrcmd.inc"


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
    HideObject 2
    HideObject 3
    End

_007F:
    HideObject LOCALID_PLAYER
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
    ShowObject 2
    ShowObject 3
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
    WalkNormalSouth 3
    FaceNorth
    EndMovement

    .balign 4, 0
_0180:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_0188:
    WalkNormalSouth
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
_0194:
    WalkNormalSouth
    WalkNormalWest 5
    EndMovement

    .balign 4, 0
_01A0:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_01AC:
    WalkNormalEast 5
    WalkNormalNorth
    Delay8
    FaceEast
    Delay4
    FaceNorth
    Delay4
    EndMovement

    .balign 4, 0
_01CC:
    WalkNormalWest 5
    WalkNormalNorth
    Delay8
    FaceWest
    Delay4
    FaceNorth
    Delay4
    EndMovement

    .balign 4, 0
_01EC:
    WalkNormalNorth
    SetInvisible
    EndMovement
