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
    SetVar VAR_0x4000, 0x409E
    CallIfGe VAR_UNK_0x409E, 1, _0031
    Call _0037
    End

_0031:
    SetFlag FLAG_UNK_0x01DB
    Return

_0037:
    GoToIfSet FLAG_UNK_0x0120, _0083
    CheckGameCompleted VAR_0x4000
    GoToIfEq VAR_0x4000, 0, _0083
    ScrCmd_22D 2, VAR_0x4000
    GoToIfEq VAR_0x4000, 0, _0083
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
    MoveAction_032
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
    CheckWonBattle VAR_0x800C
    GoToIfEq VAR_0x800C, FALSE, _0168
    CheckLostBattle VAR_0x800C
    CallIfEq VAR_0x800C, FALSE, _017A
    CheckDidNotCapture VAR_0x800C
    GoToIfEq VAR_0x800C, TRUE, _015D
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
    ScrCmd_04A 0x65C
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
    WaitTime 15, VAR_0x800C
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
    WaitTime 15, VAR_0x800C
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
    MoveAction_012 3
    EndMovement

    .balign 4, 0
_0390:
    MoveAction_063 2
    MoveAction_035
    MoveAction_063 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_063
    MoveAction_012 2
    EndMovement

    .balign 4, 0
_03B0:
    MoveAction_012 2
    MoveAction_063 2
    MoveAction_033
    EndMovement

    .balign 4, 0
_03C0:
    MoveAction_038
    MoveAction_063
    MoveAction_039
    MoveAction_063
    MoveAction_037
    EndMovement

    .balign 4, 0
_03D8:
    MoveAction_033
    EndMovement

    .balign 4, 0
_03E0:
    MoveAction_063 2
    MoveAction_013 3
    EndMovement

    .balign 4, 0
_03EC:
    MoveAction_013
    MoveAction_015
    MoveAction_013 3
    MoveAction_014
    MoveAction_013
    MoveAction_069
    EndMovement

    .balign 4, 0
_0408:
    MoveAction_063 3
    MoveAction_062
    MoveAction_032
    EndMovement

    .balign 4, 0
_0418:
    MoveAction_063
    MoveAction_033
    MoveAction_063
    MoveAction_034
    MoveAction_062
    MoveAction_032
    EndMovement

    .balign 4, 0
_0434:
    MoveAction_035
    EndMovement

    .balign 4, 0
_043C:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0444:
    MoveAction_035
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0454:
    MoveAction_039 3
    EndMovement

    .balign 4, 0
_045C:
    MoveAction_038 3
    EndMovement

    .balign 4, 0
_0464:
    MoveAction_019 2
    MoveAction_017 5
    MoveAction_018
    MoveAction_017
    MoveAction_069
    EndMovement

    .balign 4, 0
_047C:
    MoveAction_017 5
    MoveAction_018
    MoveAction_017
    MoveAction_069
    EndMovement

    .balign 4, 0
_0490:
    MoveAction_018 2
    MoveAction_016 3
    MoveAction_032
    MoveAction_017 3
    MoveAction_019 2
    EndMovement

    .balign 4, 0
_04A8:
    MoveAction_014 3
    MoveAction_012 3
    EndMovement

    .balign 4, 0
_04B4:
    MoveAction_014
    MoveAction_012
    MoveAction_015
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_04C8:
    MoveAction_012 2
    MoveAction_015
    MoveAction_012 3
    MoveAction_014 2
    MoveAction_032
    EndMovement

    .balign 4, 0
_04E0:
    MoveAction_015
    MoveAction_013
    MoveAction_015
    MoveAction_013 3
    MoveAction_014
    MoveAction_013 2
    EndMovement

    .balign 4, 0
_04FC:
    MoveAction_015
    MoveAction_012 4
    MoveAction_014
    MoveAction_032
    EndMovement

    .balign 4, 0
_0510:
    MoveAction_015
    MoveAction_013 3
    MoveAction_014
    MoveAction_013 2
    MoveAction_069
    EndMovement
