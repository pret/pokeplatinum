#include "macros/scrcmd.inc"
#include "generated/hidden_locations.h"
#include "res/text/bank/distortion_world_giratina_room.h"

    .data

    ScriptEntry _0022
    ScriptEntry _0026
    ScriptEntry _0041
    ScriptEntry _009E
    ScriptEntry _00C4
    ScriptEntry _020A
    ScriptEntry _021D
    ScriptEntry _0232
    ScriptEntryEnd

_0022:
    InitPersistedMapFeaturesForDistortionWorld
    End

_0026:
    GoToIfSet FLAG_UNK_0x008E, _0033
    End

_0033:
    ResetDistortionWorldPersistedCameraAngles
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 14
    RemoveObject 128
    End

_0041:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 13
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0061
    CloseMessage
    ReleaseAll
    End

_0061:
    BufferPlayerName 0
    Message 14
    CloseMessage
    EnableHiddenLocation HIDDEN_LOCATION_SPRING_PATH
    SetVar VAR_UNK_0x40AA, 1
    PlayFanfare SEQ_SE_PL_SYUWA
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_SENDOFF_SPRING, 0, 32, 17, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_009E:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_DISTORTION_WORLD_B7F, 0, 89, 57, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_00C4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    PlayCry SPECIES_GIRATINA
    Message 2
    WaitCry
    CloseMessage
    SetFlag FLAG_UNK_0x008E
    StartGiratinaOriginBattle SPECIES_GIRATINA, 47
    ClearFlag FLAG_UNK_0x008E
    CheckWonBattle VAR_RESULT
    ScrCmd_314 VAR_RESULT
    GoToIfEq VAR_RESULT, 2, _0204
    GoToIfEq VAR_RESULT, 3, _0204
    GoToIfEq VAR_RESULT, 5, _014E
    GoToIfEq VAR_RESULT, 6, _014E
    GoToIfEq VAR_RESULT, 4, _016E
    ScrCmd_311 130
    ScrCmd_311 129
    ApplyMovement 129, _0250
    WaitMovement
    Message 3
    CloseMessage
    Message 4
    GoTo _0194

_014E:
    ScrCmd_311 130
    ScrCmd_311 129
    ApplyMovement 129, _0250
    WaitMovement
    Message 3
    CloseMessage
    Message 6
    GoTo _0194

_016E:
    SetFlag FLAG_UNK_0x0121
    SetFlag FLAG_UNK_0x0250
    ClearFlag FLAG_UNK_0x0278
    ScrCmd_311 130
    ScrCmd_311 129
    ApplyMovement 129, _0250
    WaitMovement
    Message 3
    CloseMessage
    Message 5
_0194:
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ScrCmd_066 VAR_0x8004, VAR_0x8005
    ApplyMovement 241, _0280
    ApplyMovement 130, _026C
    ApplyMovement 129, _0258
    ApplyMovement LOCALID_PLAYER, _0244
    WaitMovement
    Message 7
    Message 8
    Message 9
    Message 10
    CloseMessage
    ApplyMovement 130, _0274
    WaitMovement
    ScrCmd_312 130
    ApplyMovement 241, _0288
    WaitMovement
    ScrCmd_067
    Message 11
    ApplyMovement 129, _0264
    WaitMovement
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0204:
    BlackOutFromBattle
    ReleaseAll
    End

_020A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_021D:
    LockAll
    PlayCry SPECIES_GIRATINA
    Message 0
    WaitCry
    WaitABPadPress
    CloseMessage
    ReleaseAll
    End

_0232:
    LockAll
    BufferPlayerName 0
    Message 1
    WaitABPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0244:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0250:
    MoveAction_117 2
    EndMovement

    .balign 4, 0
_0258:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0264:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_026C:
    MoveAction_117
    EndMovement

    .balign 4, 0
_0274:
    MoveAction_118
    WalkNormalSouth 5
    EndMovement

    .balign 4, 0
_0280:
    WalkNormalSouth 5
    EndMovement

    .balign 4, 0
_0288:
    WalkNormalNorth 5
    EndMovement
