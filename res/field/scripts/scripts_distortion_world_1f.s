#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_1f.h"


    ScriptEntry _0016
    ScriptEntry _001A
    ScriptEntry _0070
    ScriptEntry _011D
    ScriptEntry _012A
    ScriptEntryEnd

_0016:
    InitPersistedMapFeaturesForDistortionWorld
    End

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 7
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _003A
    CloseMessage
    ReleaseAll
    End

_003A:
    BufferPlayerName 0
    Message 8
    CloseMessage
    PlayFanfare SEQ_SE_PL_SYUWA
    SetPartyGiratinaForm GIRATINA_FORM_ALTERED
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_SPEAR_PILLAR_DISTORTED, 0, 31, 33, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0070:
    LockAll
    ApplyMovement LOCALID_PLAYER, _0140
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _014C
    WaitMovement
    ScrCmd_311 128
    ApplyMovement 128, _017C
    WaitMovement
    Message 0
    ScrCmd_035
    ApplyMovement 128, _0198
    WaitMovement
    Message 1
    ScrCmd_035
    ApplyMovement 128, _01A4
    WaitMovement
    Message 2
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0154
    ApplyMovement 128, _01AC
    WaitMovement
    ScrCmd_321 0
    ApplyMovement LOCALID_PLAYER, _0160
    ApplyMovement 128, _01B4
    WaitMovement
    WaitTime 30, VAR_RESULT
    ScrCmd_322
    Message 3
    WaitABXPadPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0174
    ApplyMovement 128, _01C4
    WaitMovement
    Message 4
    CloseMessage
    ApplyMovement 128, _01CC
    WaitMovement
    ScrCmd_312 128
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 1
    ReleaseAll
    End

_011D:
    LockAll
    Message 5
    WaitABPadPress
    CloseMessage
    ReleaseAll
    End

_012A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0140:
    WalkNormalWest
    Delay8
    EndMovement

    .balign 4, 0
_014C:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0154:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0160:
    Delay4
    FaceWest
    EmoteExclamationMark
    FaceEast
    EndMovement

    .balign 4, 0
_0174:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_017C:
    WalkOnSpotNormalSouth
    Delay16 2
    WalkOnSpotNormalEast
    Delay8
    WalkOnSpotNormalNorth
    Delay8
    EndMovement

    .balign 4, 0
_0198:
    WalkOnSpotNormalSouth
    Delay8
    EndMovement

    .balign 4, 0
_01A4:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_01AC:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_01B4:
    FaceWest
    EmoteExclamationMark
    FaceEast
    EndMovement

    .balign 4, 0
_01C4:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_01CC:
    WalkNormalWest 3
    WalkNormalSouth 3
    WalkNormalWest 2
    WalkNormalSouth
    WalkNormalWest 6
    EndMovement
