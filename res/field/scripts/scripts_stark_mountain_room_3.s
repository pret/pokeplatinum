#include "macros/scrcmd.inc"
#include "res/text/bank/stark_mountain_room_3.h"

    .data

    ScriptEntry _0016
    ScriptEntry _0089
    ScriptEntry _00D0
    ScriptEntry _00E6
    ScriptEntry _019C
    ScriptEntryEnd

_0016:
    SetVar VAR_MAP_LOCAL_0, VAR_UNK_0x409E
    CallIfGe VAR_UNK_0x409E, 1, _0031
    Call _0037
    End

_0031:
    SetFlag FLAG_UNK_0x01DB
    Return

_0037:
    GoToIfSet FLAG_UNK_0x0120, _0083
    CheckGameCompleted VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0083
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0083
    GoToIfUnset FLAG_MESPRIT_CAUGHT, _0083
    GoToIfNe VAR_UNK_0x409E, 1, _0083
    ClearFlag FLAG_UNK_0x01DD
    Return

_0083:
    SetFlag FLAG_UNK_0x01DD
    Return

_0089:
    GoToIfSet FLAG_UNK_0x008E, _0096
    End

_0096:
    SetFlag FLAG_UNK_0x01DD
    RemoveObject 1
    ClearFlag FLAG_UNK_0x008E
    End

    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 35
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

    .balign 4, 0
_00B4:
    WalkOnSpotNormalNorth
    EndMovement

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
    .byte 13
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_00D0:
    BufferPlayerName 1
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E6:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    WaitFanfare SEQ_SE_CONFIRM
    CallIfUnset FLAG_UNK_0x00D7, _0174
    SetVar VAR_UNK_0x409E, 2
    PlayCry SPECIES_HEATRAN
    Message 15
    CloseMessage
    SetFlag FLAG_UNK_0x008E
    StartLegendaryBattle SPECIES_HEATRAN, 50
    ClearFlag FLAG_UNK_0x008E
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0168
    CheckLostBattle VAR_RESULT
    CallIfEq VAR_RESULT, FALSE, _017A
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _015D
    GoTo _0155
    End

_0155:
    SetFlag FLAG_UNK_0x0120
    ReleaseAll
    End

_015D:
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0168:
    SetVar VAR_UNK_0x409E, 1
    BlackOutFromBattle
    ReleaseAll
    End

_0174:
    SetFlag FLAG_UNK_0x00D7
    Return

_017A:
    SetFlag FLAG_UNLOCKED_VS_SEEKER_LVL_5
    Return

    .byte 12
    .byte 0
    .byte 6
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 13
    .byte 0
    .byte 6
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 63
    .byte 0
    .byte 4
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_019C:
    LockAll
    Message 0
    CloseMessage
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_FW089
    ScrCmd_29F 0
    StopFanfare SEQ_SE_DP_FW089
    ApplyMovement 2, _03A4
    ApplyMovement LOCALID_PLAYER, _0388
    WaitMovement
    ApplyMovement 2, _00B4
    WaitMovement
    Message 1
    CloseMessage
    ApplyMovement 5, _03B0
    WaitMovement
    RemoveObject 3
    Message 2
    Message 3
    PlayCry SPECIES_CROAGUNK
    WaitCry
    CloseMessage
    ClearFlag FLAG_UNK_0x0232
    AddObject 0
    ApplyMovement 0, _0490
    WaitMovement
    ApplyMovement 5, _03C0
    ApplyMovement 9, _0434
    ApplyMovement 10, _043C
    WaitMovement
    Message 4
    CloseMessage
    WaitTime 15, VAR_RESULT
    Message 5
    CloseMessage
    RemoveObject 0
    RemoveObject 6
    ClearFlag FLAG_UNK_0x0231
    AddObject 4
    CallCommonScript 0x807
    Message 6
    CloseMessage
    ApplyMovement 4, _04A8
    ApplyMovement 9, _0408
    ApplyMovement 10, _0418
    WaitMovement
    Message 7
    CloseMessage
    ApplyMovement 9, _0444
    WaitMovement
    Message 8
    ApplyMovement 10, _044C
    WaitMovement
    Message 9
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement 9, _0454
    ApplyMovement 10, _045C
    WaitMovement
    Message 10
    CloseMessage
    ApplyMovement 9, _0464
    ApplyMovement 10, _047C
    ApplyMovement LOCALID_PLAYER, _0390
    WaitMovement
    ApplyMovement 5, _03D8
    WaitMovement
    Message 11
    Message 12
    CloseMessage
    ClearFlag FLAG_UNK_0x0230
    AddObject 7
    ApplyMovement 7, _04C8
    WaitMovement
    AddObject 8
    ApplyMovement 8, _04FC
    WaitMovement
    Message 13
    CloseMessage
    ApplyMovement 5, _03E0
    ApplyMovement 4, _04B4
    WaitMovement
    ApplyMovement 5, _03EC
    ApplyMovement 7, _04E0
    ApplyMovement 8, _0510
    WaitMovement
    RemoveObject 5
    RemoveObject 7
    RemoveObject 8
    BufferPlayerName 0
    Message 14
    CloseMessage
    SetVar VAR_UNK_0x40A0, 2
    SetFlag FLAG_UNK_0x01DB
    SetFlag FLAG_UNK_0x0231
    SetVar VAR_UNK_0x409E, 1
    SetFlag FLAG_ARRESTED_CHARON_STARK_MOUNTAIN
    ClearFlag FLAG_UNK_0x01A3
    ClearFlag FLAG_UNK_0x01D9
    ClearFlag FLAG_UNK_0x01D6
    ClearFlag FLAG_UNK_0x022B
    ClearFlag FLAG_UNK_0x022D
    ClearFlag FLAG_UNK_0x022E
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_STARK_MOUNTAIN_OUTSIDE, 0, 0x2EF, 233, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

    .balign 4, 0
_0388:
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
_0390:
    Delay8 2
    WalkOnSpotNormalEast
    Delay8 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_03A4:
    Delay8
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_03B0:
    WalkNormalNorth 2
    Delay8 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_03C0:
    WalkOnSpotFastWest
    Delay8
    WalkOnSpotFastEast
    Delay8
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
_03D8:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_03E0:
    Delay8 2
    WalkNormalSouth 3
    EndMovement

    .balign 4, 0
_03EC:
    WalkNormalSouth
    WalkNormalEast
    WalkNormalSouth 3
    WalkNormalWest
    WalkNormalSouth
    SetInvisible
    EndMovement

    .balign 4, 0
_0408:
    Delay8 3
    Delay4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0418:
    Delay8
    WalkOnSpotNormalSouth
    Delay8
    WalkOnSpotNormalWest
    Delay4
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0434:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_043C:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0444:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_044C:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0454:
    WalkOnSpotFastEast 3
    EndMovement

    .balign 4, 0
_045C:
    WalkOnSpotFastWest 3
    EndMovement

    .balign 4, 0
_0464:
    WalkFastEast 2
    WalkFastSouth 5
    WalkFastWest
    WalkFastSouth
    SetInvisible
    EndMovement

    .balign 4, 0
_047C:
    WalkFastSouth 5
    WalkFastWest
    WalkFastSouth
    SetInvisible
    EndMovement

    .balign 4, 0
_0490:
    WalkFastWest 2
    WalkFastNorth 3
    WalkOnSpotNormalNorth
    WalkFastSouth 3
    WalkFastEast 2
    EndMovement

    .balign 4, 0
_04A8:
    WalkNormalWest 3
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
_04B4:
    WalkNormalWest
    WalkNormalNorth
    WalkNormalEast
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_04C8:
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth 3
    WalkNormalWest 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_04E0:
    WalkNormalEast
    WalkNormalSouth
    WalkNormalEast
    WalkNormalSouth 3
    WalkNormalWest
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_04FC:
    WalkNormalEast
    WalkNormalNorth 4
    WalkNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0510:
    WalkNormalEast
    WalkNormalSouth 3
    WalkNormalWest
    WalkNormalSouth 2
    SetInvisible
    EndMovement
