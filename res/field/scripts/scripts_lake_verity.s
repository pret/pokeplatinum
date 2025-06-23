#include "macros/scrcmd.inc"
#include "res/text/bank/lake_verity.h"

    .data

    ScriptEntry _001E
    ScriptEntry _00C7
    ScriptEntry _00CB
    ScriptEntry _013B
    ScriptEntry _01D0
    ScriptEntry _0230
    ScriptEntry _030C
    ScriptEntryEnd

_001E:
    CallIfSet FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, _009D
    CallIfUnset FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, _0087
    CallIfEq VAR_UNK_0x4097, 0, _0071
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _0061
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _0069
    End

_0061:
    SetVar VAR_OBJ_GFX_ID_0, 97
    End

_0069:
    SetVar VAR_OBJ_GFX_ID_0, 0
    End

_0071:
    SetObjectEventPos 5, 46, 50
    SetObjectEventMovType 5, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 5, DIR_NORTH
    Return

_0087:
    SetObjectEventPos 5, 46, 51
    SetObjectEventMovType 5, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectEventDir 5, DIR_SOUTH
    Return

_009D:
    SetObjectEventPos 5, 50, 37
    SetObjectEventMovType 5, MOVEMENT_TYPE_LOOK_LEFT
    SetObjectEventDir 5, DIR_WEST
    SetObjectEventPos 6, 50, 39
    SetObjectEventMovType 6, MOVEMENT_TYPE_LOOK_LEFT
    SetObjectEventDir 6, DIR_WEST
    Return

_00C7:
    End
    End

_00CB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, _0128
    ApplyMovement 5, _01C8
    WaitMovement
    Message 2
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0104
    GoTo _0112
    End

_0104:
    BufferPlayerName 0
    Message 3
    GoTo _0120
    End

_0112:
    BufferPlayerName 0
    Message 5
    GoTo _0120
    End

_0120:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0128:
    FacePlayer
    BufferPlayerName 0
    BufferRivalName 1
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_013B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY, _018B
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0167
    GoTo _0175
    End

_0167:
    BufferPlayerName 0
    Message 7
    GoTo _0183
    End

_0175:
    BufferPlayerName 0
    Message 8
    GoTo _0183
    End

_0183:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_018B:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _01A4
    GoTo _01B2
    End

_01A4:
    BufferPlayerName 0
    Message 15
    GoTo _01C0
    End

_01B2:
    BufferPlayerName 0
    Message 16
    GoTo _01C0
    End

_01C0:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_01C8:
    WalkOnSpotNormalEast
    EndMovement

_01D0:
    LockAll
    ApplyMovement 5, _0220
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _01F5
    GoTo _0203
    End

_01F5:
    BufferPlayerName 0
    Message 0
    GoTo _0211
    End

_0203:
    BufferPlayerName 0
    Message 1
    GoTo _0211
    End

_0211:
    SetVar VAR_UNK_0x4097, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0220:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    WalkNormalSouth
    EndMovement

_0230:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 6, _02F4
    WaitMovement
    Message 9
    CloseMessage
    StartTrainerBattle TRAINER_COMMANDER_MARS_LAKE_VERITY
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _02DB
    Message 10
    Message 11
    Message 12
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 7
    RemoveObject 8
    RemoveObject 0
    RemoveObject 1
    RemoveObject 2
    RemoveObject 3
    SetFlag FLAG_ALT_MUSIC_LAKE_VERITY
    ApplyMovement 6, _02FC
    ApplyMovement LOCALID_PLAYER, _0304
    WaitMovement
    ScrCmd_187 5, 53, 1, 39, 3
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetFlag FLAG_UNK_0x029A
    SetFlag FLAG_TEAM_GALACTIC_LEFT_LAKE_VERITY
    ClearFlag FLAG_UNK_0x01BA
    SetVar VAR_UNK_0x40D3, 1
    BufferRivalName 0
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02DB:
    BlackOutFromBattle
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 3
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_02F4:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_02FC:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0304:
    WalkOnSpotNormalWest
    EndMovement

_030C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
