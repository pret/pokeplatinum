#include "macros/scrcmd.inc"
#include "res/text/bank/lake_verity_low_water.h"

    .data

    ScriptEntry _001E
    ScriptEntry _004E
    ScriptEntry _006F
    ScriptEntry _0418
    ScriptEntry _044B
    ScriptEntry _048A
    ScriptEntry _048C
    ScriptEntryEnd

_001E:
    GetPlayerGender VAR_0x4000
    GoToIfEq VAR_0x4000, GENDER_MALE, _003E
    GoToIfEq VAR_0x4000, GENDER_FEMALE, _0046
    End

_003E:
    SetVar VAR_0x4020, 97
    End

_0046:
    SetVar VAR_0x4020, 0
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
    ScrCmd_066 46, 53
    ApplyMovement 241, _01B4
    WaitMovement
    WaitTime 15, VAR_0x800C
    Message 1
    CloseMessage
    WaitTime 30, VAR_0x800C
    ApplyMovement 4, _01E0
    ApplyMovement 241, _01C0
    WaitMovement
    ScrCmd_067
    Message 2
    CloseMessage
    ApplyMovement 5, _02A0
    ApplyMovement LOCALID_PLAYER, _0370
    WaitMovement
    ApplyMovement 4, _01F0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 4
    WaitTime 50, VAR_0x800C
    ApplyMovement LOCALID_PLAYER, _0378
    ApplyMovement 5, _02AC
    WaitMovement
    BufferRivalName 0
    Message 3
    CloseMessage
    ApplyMovement 5, _02B8
    ApplyMovement LOCALID_PLAYER, _0380
    WaitMovement
    WaitTime 30, VAR_0x800C
    BufferPlayerName 1
    Message 4
    PlayCry SPECIES_MESPRIT
    Message 5
    WaitCry
    CloseMessage
    ApplyMovement 5, _02C0
    ApplyMovement LOCALID_PLAYER, _0388
    WaitMovement
    WaitTime 15, VAR_0x800C
    ApplyMovement 5, _02F0
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 6
    CloseMessage
    ApplyMovement 5, _02E8
    WaitMovement
    WaitTime 15, VAR_0x800C
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
    MoveAction_063
    MoveAction_012 9
    EndMovement

    .balign 4, 0
_01C0:
    MoveAction_013 9
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
    MoveAction_013 5
    MoveAction_014
    MoveAction_013 4
    EndMovement

    .balign 4, 0
_01F0:
    MoveAction_013 3
    MoveAction_069
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
    MoveAction_016
    EndMovement

    .balign 4, 0
_02A0:
    MoveAction_015
    MoveAction_034
    EndMovement

    .balign 4, 0
_02AC:
    MoveAction_014
    MoveAction_033
    EndMovement

    .balign 4, 0
_02B8:
    MoveAction_038
    EndMovement

    .balign 4, 0
_02C0:
    MoveAction_075
    MoveAction_016 3
    MoveAction_063 3
    MoveAction_038
    MoveAction_063
    MoveAction_036
    MoveAction_063 2
    MoveAction_017 3
    MoveAction_038
    EndMovement

    .balign 4, 0
_02E8:
    MoveAction_075
    EndMovement

    .balign 4, 0
_02F0:
    MoveAction_038 4
    EndMovement

    .balign 4, 0
_02F8:
    MoveAction_017 2
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
    MoveAction_012
    EndMovement

    .balign 4, 0
_0370:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0378:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0380:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0388:
    MoveAction_063 4
    MoveAction_032
    MoveAction_063 9
    MoveAction_035
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_033
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
    GetPlayerGender VAR_0x800C
    GoToIfEq VAR_0x800C, GENDER_MALE, _046A
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
