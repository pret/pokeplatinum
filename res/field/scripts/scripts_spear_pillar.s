#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/spear_pillar.h"

    .data

    ScriptEntry _0022
    ScriptEntry _0107
    ScriptEntry _0154
    ScriptEntry _0508
    ScriptEntry _0249
    ScriptEntry _0210
    ScriptEntry _0223
    ScriptEntry _0236
    ScriptEntryEnd

_0022:
    SetFlag FLAG_UNK_0x09C7
    Call _00C7
    Call _0062
    GetPlayerGender VAR_0x4000
    GoToIfEq VAR_0x4000, GENDER_MALE, _0052
    GoToIfEq VAR_0x4000, GENDER_FEMALE, _005A
    End

_0052:
    SetVar VAR_0x4020, 97
    End

_005A:
    SetVar VAR_0x4020, 0
    End

_0062:
    CheckGameCompleted VAR_0x4000
    GoToIfEq VAR_0x4000, 0, _00C5
    ScrCmd_22D 2, VAR_0x4000
    GoToIfEq VAR_0x4000, 0, _00C5
    CheckItem ITEM_AZURE_FLUTE, 1, VAR_0x4000
    GoToIfEq VAR_0x4000, FALSE, _00C5
    CheckDistributionEvent DISTRIBUTION_EVENT_ARCEUS, VAR_0x4000
    GoToIfEq VAR_0x4000, FALSE, _00C5
    GoToIfSet FLAG_UNK_0x011E, _00C5
    SetVar 0x4118, 1
    GoTo _00C5
    End

_00C5:
    Return

_00C7:
    Dummy1F9 0x4098
    GoToIfEq VAR_UNK_0x4098, 0, _0101
    GoToIfEq VAR_UNK_0x4098, 1, _0101
    GoToIfEq VAR_UNK_0x4098, 2, _0101
    GoToIfEq VAR_UNK_0x4098, 3, _0101
    Return

_0101:
    SetFlag FLAG_UNK_0x01C5
    Return

_0107:
    End

_0109:
    ScrCmd_246 0x800C
    SetVar 0x8004, 0x8005
    GoToIfEq 0x800C, 10, _0133
    GoToIfEq 0x800C, 12, _0133
    SetVar 0x8004, 0x8006
_0133:
    Return

    .byte 77
    .byte 1
    .byte 12
    .byte 128
    .byte 41
    .byte 0
    .byte 4
    .byte 128
    .byte 5
    .byte 128
    .byte 17
    .byte 0
    .byte 12
    .byte 128
    .byte 1
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 6
    .byte 0
    .byte 0
    .byte 0
    .byte 41
    .byte 0
    .byte 4
    .byte 128
    .byte 6
    .byte 128
    .byte 27
    .byte 0

_0154:
    LockAll
    ApplyMovement 0, _01E4
    ApplyMovement 3, _01F4
    WaitMovement
    CheckHasTwoAliveMons 0x800C
    GoToIfNe 0x800C, 0, _01A6
    GoTo _0181
    End

_0181:
    Message 1
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0204
    WaitMovement
    ApplyMovement 0, _01EC
    ApplyMovement 3, _01FC
    WaitMovement
    ReleaseAll
    End

_01A6:
    Call _01CA
    GoToIfEq 0x800C, FALSE, _01DB
    SetVar VAR_UNK_0x4098, 1
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01CA:
    Message 0
    CloseMessage
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_SPEAR_PILLAR_1, TRAINER_GALACTIC_GRUNT_SPEAR_PILLAR_2
    CheckWonBattle 0x800C
    Return

_01DB:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_01E4:
    MoveAction_035
    EndMovement

    .balign 4, 0
_01EC:
    MoveAction_033
    EndMovement

    .balign 4, 0
_01F4:
    MoveAction_034
    EndMovement

    .balign 4, 0
_01FC:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0204:
    MoveAction_062 5
    MoveAction_013
    EndMovement

_0210:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0223:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 44
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0236:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 43
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0249:
    LockAll
    Call _036F
    Message 3
    Message 4
    CloseMessage
    Call _02DC
    BufferRivalName 0
    Message 5
    Message 7
    Message 8
    Message 9
    CloseMessage
    Call SpearPillar_SetRivalPartnerTeam
    StartTagBattle 0x8004, TRAINER_COMMANDER_MARS_SPEAR_PILLAR, TRAINER_COMMANDER_JUPITER_SPEAR_PILLAR
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _02D0
    Call _0456
    BufferRivalName 0
    BufferPlayerName 1
    Message 10
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    Message 11
    Message 12
    CloseMessage
    ScrCmd_18C 0xFF, 1
    ApplyMovement 5, _0500
    WaitMovement
    RemoveObject 5
    SetVar VAR_UNK_0x4098, 2
    GoTo _0508
    End

_02D0:
    SetVar VAR_UNK_0x4098, 1
    BlackOutFromBattle
    ReleaseAll
    End

_02DC:
    ClearFlag FLAG_UNK_0x01C5
    GetPlayerMapPos 0x8004, 0x8005
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 30, _0315
    GoToIfEq 0x8008, 31, _0333
    GoToIfEq 0x8008, 32, _0351
    Return

_0315:
    SetObjectEventPos 5, 31, 40
    AddObject 5
    ApplyMovement 5, _04F4
    WaitMovement
    ScrCmd_18C 5, 3
    Return

_0333:
    SetObjectEventPos 5, 30, 40
    AddObject 5
    ApplyMovement 5, _04F4
    WaitMovement
    ScrCmd_18C 5, 2
    Return

_0351:
    SetObjectEventPos 5, 31, 40
    AddObject 5
    ApplyMovement 5, _04F4
    WaitMovement
    ScrCmd_18C 5, 2
    Return

_036F:
    GetPlayerMapPos 0x8004, 0x8005
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 30, _03A4
    GoToIfEq 0x8008, 31, _03BE
    GoToIfEq 0x8008, 32, _03D8
    Return

_03A4:
    ScrCmd_18C 0xFF, 2
    ApplyMovement 4, _03F4
    ApplyMovement 2, _03FC
    WaitMovement
    Return

_03BE:
    ScrCmd_18C 0xFF, 3
    ApplyMovement 4, _0404
    ApplyMovement 2, _040C
    WaitMovement
    Return

_03D8:
    ScrCmd_18C 0xFF, 3
    ApplyMovement 4, _0414
    ApplyMovement 2, _041C
    WaitMovement
    Return

    .balign 4, 0
_03F4:
    MoveAction_035
    EndMovement

    .balign 4, 0
_03FC:
    MoveAction_014
    EndMovement

    .balign 4, 0
_0404:
    MoveAction_035
    EndMovement

    .balign 4, 0
_040C:
    MoveAction_014
    EndMovement

    .balign 4, 0
_0414:
    MoveAction_015
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_034
    EndMovement

SpearPillar_SetRivalPartnerTeam:
    GetPlayerStarterSpecies 0x800C
    SetVar 0x8004, TRAINER_RIVAL_SPEAR_PILLAR_CHIMCHAR
    GoToIfEq 0x800C, SPECIES_CHIMCHAR, SpearPillar_Return
    SetVar 0x8004, TRAINER_RIVAL_SPEAR_PILLAR_TURTWIG
    GoToIfEq 0x800C, SPECIES_TURTWIG, SpearPillar_Return
    SetVar 0x8004, TRAINER_RIVAL_SPEAR_PILLAR_PIPLUP
SpearPillar_Return:
    Return

_0456:
    GetPlayerMapPos 0x8004, 0x8005
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 30, _048B
    GoToIfEq 0x8008, 31, _0499
    GoToIfEq 0x8008, 32, _04A7
    Return

_048B:
    ScrCmd_18C 0xFF, 3
    ScrCmd_18C 5, 2
    Return

_0499:
    ScrCmd_18C 0xFF, 2
    ScrCmd_18C 5, 3
    Return

_04A7:
    ScrCmd_18C 0xFF, 2
    ScrCmd_18C 5, 3
    Return

    .byte 94
    .byte 0
    .byte 4
    .byte 0
    .byte 15
    .byte 0
    .byte 0
    .byte 0
    .byte 94
    .byte 0
    .byte 2
    .byte 0
    .byte 27
    .byte 0
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0
    .byte 0
    .byte 0
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 71
    .byte 0
    .byte 1
    .byte 0
    .byte 10
    .byte 0
    .byte 1
    .byte 0
    .byte 72
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 1
    .byte 0
    .byte 71
    .byte 0
    .byte 1
    .byte 0
    .byte 11
    .byte 0
    .byte 1
    .byte 0
    .byte 72
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_04F4:
    MoveAction_062 2
    MoveAction_016 8
    EndMovement

    .balign 4, 0
_0500:
    MoveAction_017 8
    EndMovement

_0508:
    ApplyMovement LOCALID_PLAYER, _05B8
    WaitMovement
    GetPlayerMapPos 0x8000, 0x8001
    ScrCmd_066 0x8000, 0x8001
    Call _05C0
    WaitMovement
    SetVar 0x8005, 13
    SetVar 0x8006, 68
    Call _0109
    MessageVar 0x8004
    CloseMessage
    FadeOutMusic 0, 30
    ScrCmd_20D 0, 0x800C
    WaitTime 10, 0x800C
    PlayFanfare SEQ_SE_PL_KUSARI
    WaitTime 20, 0x800C
    PlayMusic SEQ_THE_EVENT02
    ScrCmd_05D
    GoTo _0567
    End

_0567:
    ScrCmd_20D 1, 0x800C
    GoToIfEq 0x800C, 0, _0567
    ScrCmd_2FB
    SetFlag FLAG_UNK_0x01C8
    SetFlag FLAG_UNK_0x01C9
    SetFlag FLAG_UNK_0x01CA
    SetVar VAR_UNK_0x4098, 3
    SetFlag FLAG_UNLOCKED_VS_SEEKER_LVL_3
    ClearFlag FLAG_UNK_0x01C7
    SetFlag FLAG_UNK_0x0132
    SetVar VAR_UNK_0x40C3, 1
    SetSpeciesSeen SPECIES_DIALGA
    SetSpeciesSeen SPECIES_PALKIA
    ScrCmd_067
    Warp MAP_HEADER_SPEAR_PILLAR_DISTORTED, 0, 30, 30, 0
    End

    .balign 4, 0
_05B8:
    MoveAction_032
    EndMovement

_05C0:
    GetPlayerMapPos 0x8004, 0x8005
    SetVar 0x8008, 0x8004
    GoToIfEq 0x8008, 29, _060F
    GoToIfEq 0x8008, 30, _0619
    GoToIfEq 0x8008, 31, _0623
    GoToIfEq 0x8008, 32, _062D
    GoToIfEq 0x8008, 33, _0637
    Return

_060F:
    ApplyMovement 241, _0644
    Return

_0619:
    ApplyMovement 241, _0654
    Return

_0623:
    ApplyMovement 241, _0664
    Return

_062D:
    ApplyMovement 241, _0670
    Return

_0637:
    ApplyMovement 241, _0680
    Return

    .balign 4, 0
_0644:
    MoveAction_063
    MoveAction_012 6
    MoveAction_015 2
    EndMovement

    .balign 4, 0
_0654:
    MoveAction_063
    MoveAction_012 6
    MoveAction_015
    EndMovement

    .balign 4, 0
_0664:
    MoveAction_063
    MoveAction_012 6
    EndMovement

    .balign 4, 0
_0670:
    MoveAction_063
    MoveAction_012 6
    MoveAction_014
    EndMovement

    .balign 4, 0
_0680:
    MoveAction_063
    MoveAction_012 6
    MoveAction_014 2
    EndMovement
