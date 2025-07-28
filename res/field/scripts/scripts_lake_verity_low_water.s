#include "macros/scrcmd.inc"
#include "res/text/bank/lake_verity_low_water.h"


    ScriptEntry _001E
    ScriptEntry _004E
    ScriptEntry _006F
    ScriptEntry _0418
    ScriptEntry _044B
    ScriptEntry _048A
    ScriptEntry _048C
    ScriptEntryEnd

_001E:
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _003E
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _0046
    End

_003E:
    SetVar VAR_OBJ_GFX_ID_0, 97
    End

_0046:
    SetVar VAR_OBJ_GFX_ID_0, 0
    End

_004E:
    GoToIfSet FLAG_UNK_0x008E, _005B
    End

_005B:
    SetFlag FLAG_UNK_0x018F
    RemoveObject 3
    RemoveObject 2
    ClearFlag FLAG_UNK_0x008E
    End
    End

_006F:
    LockAll
    ClearHasPartner
    ApplyMovement 5, _0298
    ApplyMovement LOCALID_PLAYER, _0368
    WaitMovement
    BufferRivalName 0
    Message 0
    CloseMessage
    AddFreeCamera 46, 53
    ApplyMovement 241, _01B4
    WaitMovement
    WaitTime 15, VAR_RESULT
    Message 1
    CloseMessage
    WaitTime 30, VAR_RESULT
    ApplyMovement 4, _01E0
    ApplyMovement 241, _01C0
    WaitMovement
    RestoreCamera
    Message 2
    CloseMessage
    ApplyMovement 5, _02A0
    ApplyMovement LOCALID_PLAYER, _0370
    WaitMovement
    ApplyMovement 4, _01F0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 4
    WaitTime 50, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, _0378
    ApplyMovement 5, _02AC
    WaitMovement
    BufferRivalName 0
    Message 3
    CloseMessage
    ApplyMovement 5, _02B8
    ApplyMovement LOCALID_PLAYER, _0380
    WaitMovement
    WaitTime 30, VAR_RESULT
    BufferPlayerName 1
    Message 4
    PlayCry SPECIES_MESPRIT
    Message 5
    WaitCry
    CloseMessage
    ApplyMovement 5, _02C0
    ApplyMovement LOCALID_PLAYER, _0388
    WaitMovement
    WaitTime 15, VAR_RESULT
    ApplyMovement 5, _02F0
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 6
    CloseMessage
    ApplyMovement 5, _02E8
    WaitMovement
    WaitTime 15, VAR_RESULT
    BufferPlayerName 1
    Message 7
    CloseMessage
    ApplyMovement 5, _02F8
    ApplyMovement LOCALID_PLAYER, _039C
    WaitMovement
    SetFlag FLAG_UNK_0x0196
    RemoveObject 5
    PlayFanfare SEQ_SE_DP_KAIDAN2
    GoTo _01A1
    End

_01A1:
    SetVar VAR_FOLLOWER_RIVAL_STATE, 4
    SetVar VAR_UNK_0x4095, 1
    ReleaseAll
    End

    .balign 4, 0
_01B4:
    Delay8
    WalkNormalNorth 9
    EndMovement

    .balign 4, 0
_01C0:
    WalkNormalSouth 9
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01E0:
    WalkNormalSouth 5
    WalkNormalWest
    WalkNormalSouth 4
    EndMovement

    .balign 4, 0
_01F0:
    WalkNormalSouth 3
    SetInvisible
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 4
    .byte 0
    .byte 14
    .byte 0
    .byte 2
    .byte 0
    .byte 13
    .byte 0
    .byte 5
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 5
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 38
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 4
    .byte 0
    .byte 15
    .byte 0
    .byte 2
    .byte 0
    .byte 12
    .byte 0
    .byte 4
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0298:
    WalkFastNorth
    EndMovement

    .balign 4, 0
_02A0:
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_02AC:
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_02B8:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_02C0:
    EmoteExclamationMark
    WalkFastNorth 3
    Delay8 3
    WalkOnSpotFastWest
    Delay8
    WalkOnSpotFastNorth
    Delay8 2
    WalkFastSouth 3
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_02E8:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_02F0:
    WalkOnSpotFastWest 4
    EndMovement

    .balign 4, 0
_02F8:
    WalkFastSouth 2
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 39
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 7
    .byte 0
    .byte 15
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 37
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 3
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 6
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0368:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0370:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0378:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0380:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0388:
    Delay8 4
    WalkOnSpotNormalNorth
    Delay8 9
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_039C:
    WalkOnSpotNormalSouth
    EndMovement

    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 5
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
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
    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 4
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 13
    .byte 0
    .byte 6
    .byte 0
    .byte 69
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 16
    .byte 0
    .byte 6
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 18
    .byte 0
    .byte 7
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0418:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00B8, _043D
    SetFlag FLAG_UNK_0x00B8
    BufferPlayerName 0
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_043D:
    BufferPlayerName 0
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_044B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _046A
    GoTo _0476

_046A:
    BufferPlayerName 0
    Message 10
    GoTo _0482

_0476:
    BufferPlayerName 0
    Message 11
    GoTo _0482

_0482:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_048A:
    End

_048C:
    End

    .byte 0
    .byte 0
