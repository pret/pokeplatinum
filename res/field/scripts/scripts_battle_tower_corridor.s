#include "macros/scrcmd.inc"


    ScriptEntry _000E
    ScriptEntry _0010
    ScriptEntry _0025
    ScriptEntryEnd

_000E:
    End

_0010:
    CallIfNe VAR_UNK_0x40DC, 0, _001F
    End

_001F:
    HideObject 0xFF
    Return

_0025:
    LockAll
    Call _008E
    GetRandom VAR_RESULT, 4
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, _00F0
    GoToIfEq VAR_0x8008, 2, _010A
    GoToIfEq VAR_0x8008, 3, _0124
    GoTo _00D6

_0066:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER_BATTLE_ROOM, 0, 7, 6, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_008E:
    ScrCmd_168 0, 0, 2, 2, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 0, _0140
    WaitMovement
    ShowObject 0xFF
    ApplyMovement LOCALID_PLAYER, _014C
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    Return

BattleTowerCorridor_Unused:
    ApplyMovement 0, BattleTowerCorridor_UnusedMovement
    ApplyMovement LOCALID_PLAYER, BattleTowerCorridor_UnusedMovement2
    WaitMovement
    Return

_00D6:
    ApplyMovement 0, _0178
    ApplyMovement LOCALID_PLAYER, _0188
    WaitMovement
    GoTo _0066
    End

_00F0:
    ApplyMovement 0, _019C
    ApplyMovement LOCALID_PLAYER, _01AC
    WaitMovement
    GoTo _0066
    End

_010A:
    ApplyMovement 0, _01C0
    ApplyMovement LOCALID_PLAYER, _01D0
    WaitMovement
    GoTo _0066
    End

_0124:
    ApplyMovement 0, _01E4
    ApplyMovement LOCALID_PLAYER, _01F4
    WaitMovement
    GoTo _0066
    End

    .balign 4, 0
_0140:
    WalkNormalSouth 3
    FaceNorth
    EndMovement

    .balign 4, 0
_014C:
    WalkNormalSouth 2
    EndMovement

BattleTowerCorridor_UnusedMovement:
    FaceNorth
    WalkNormalNorth 2
    SetInvisible
    EndMovement

BattleTowerCorridor_UnusedMovement2:
    WalkNormalEast
    FaceNorth
    WalkFasterNorth
    SetInvisible
    EndMovement

    .balign 4, 0
_0178:
    WalkNormalEast 4
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_0188:
    WalkNormalSouth
    WalkNormalEast 4
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_019C:
    WalkNormalEast 8
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_01AC:
    WalkNormalSouth
    WalkNormalEast 8
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_01C0:
    WalkNormalEast 12
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_01D0:
    WalkNormalSouth
    WalkNormalEast 12
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_01E4:
    WalkNormalEast 16
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_01F4:
    WalkNormalSouth
    WalkNormalEast 16
    WalkNormalNorth 2
    SetInvisible
    EndMovement
