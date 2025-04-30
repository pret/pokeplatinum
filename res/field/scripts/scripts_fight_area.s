#include "macros/scrcmd.inc"
#include "res/text/bank/fight_area.h"

    .data

    ScriptEntry _00D8
    ScriptEntry _049C
    ScriptEntry _04AF
    ScriptEntry _04C2
    ScriptEntry _04D5
    ScriptEntry _04E8
    ScriptEntry _050E
    ScriptEntry _0521
    ScriptEntry _0585
    ScriptEntry _059C
    ScriptEntry _05B3
    ScriptEntry _05CA
    ScriptEntry _04FB
    ScriptEntry _06F0
    ScriptEntry _0066
    ScriptEntry _07DC
    ScriptEntry _07EF
    ScriptEntry _0802
    ScriptEntry _081F
    ScriptEntry _0864
    ScriptEntry _0877
    ScriptEntry _088A
    ScriptEntry _089D
    ScriptEntry _08B0
    ScriptEntry _083C
    ScriptEntryEnd

_0066:
    GoToIfEq VAR_UNK_0x4081, 1, _0082
    GoToIfGe VAR_UNK_0x409E, 1, _0098
    End

_0082:
    SetObjectEventPos 7, 0x28F, 0x1AA
    ScrCmd_188 7, 14
    ScrCmd_189 7, 0
    End

_0098:
    SetFlag FLAG_UNK_0x01D3
    End

    .byte 52
    .byte 2
    .byte 0
    .byte 64
    .byte 17
    .byte 0
    .byte 0
    .byte 64
    .byte 0
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 15
    .byte 0
    .byte 0
    .byte 0
    .byte 17
    .byte 0
    .byte 0
    .byte 64
    .byte 6
    .byte 0
    .byte 28
    .byte 0
    .byte 1
    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0
    .byte 134
    .byte 1
    .byte 7
    .byte 0
    .byte 146
    .byte 2
    .byte 174
    .byte 1
    .byte 136
    .byte 1
    .byte 7
    .byte 0
    .byte 15
    .byte 0
    .byte 137
    .byte 1
    .byte 7
    .byte 0
    .byte 1
    .byte 0
    .byte 31
    .byte 0
    .byte 211
    .byte 1
    .byte 2
    .byte 0

_00D8:
    LockAll
    ScrCmd_32D
    ApplyMovement 7, _0340
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _03DC
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 0
    CloseMessage
    CallCommonScript 0x800
    ApplyMovement LOCALID_PLAYER, _03E4
    ApplyMovement 7, _0354
    WaitMovement
    CallCommonScript 0x801
    SetVar VAR_UNK_0x4081, 1
    ScrCmd_32E
    Message 1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _02EE
    Call _014E
    GoToIfEq VAR_RESULT, FALSE, _0306
    Call _0198
    ReleaseAll
    End

_014E:
    BufferRivalName 0
    Message 2
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _03F8
    ApplyMovement 7, _0370
    WaitMovement
    ApplyMovement 25, _0448
    WaitMovement
    Message 7
    ApplyMovement 24, _0458
    WaitMovement
    Message 8
    CloseMessage
    Call FightArea_SetRivalPartnerTeam
    StartTagBattle VAR_0x8004, TRAINER_LEADER_VOLKNER_FIGHT_AREA, TRAINER_ELITE_FOUR_FLINT_FIGHT_AREA
    CheckWonBattle VAR_RESULT
    Return

_0198:
    ApplyMovement 24, _0460
    WaitMovement
    Message 9
    Message 10
    ApplyMovement 24, _0468
    WaitMovement
    Message 11
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 25
    RemoveObject 24
    RemoveObject 29
    RemoveObject 28
    RemoveObject 27
    RemoveObject 30
    RemoveObject 31
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ApplyMovement 7, _0378
    ApplyMovement LOCALID_PLAYER, _0400
    WaitMovement
    BufferRivalName 0
    Message 12
    ClearFlag FLAG_UNK_0x01E3
    AddObject 26
    StopFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_WALL_HIT2
    MessageInstant 13
    ApplyMovement 26, _03B4
    ApplyMovement 7, _0380
    ApplyMovement LOCALID_PLAYER, _0408
    WaitMovement
    ApplyMovement 26, _03BC
    WaitMovement
    Message 14
    CloseMessage
    BufferRivalName 0
    Message 15
    CloseMessage
    ApplyMovement 7, _039C
    WaitMovement
    BufferRivalName 0
    BufferPlayerName 1
    Message 16
    Message 17
    CloseMessage
    ApplyMovement 26, _03D4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 26
    WaitFanfare SEQ_SE_DP_KAIDAN2
    BufferRivalName 0
    Message 18
    Message 19
    Message 20
    CloseMessage
    ApplyMovement 7, _03A4
    ApplyMovement LOCALID_PLAYER, _0428
    WaitMovement
    RemoveObject 7
    ApplyMovement 8, _0478
    ApplyMovement LOCALID_PLAYER, _043C
    WaitMovement
    Message 22
    CloseMessage
    ApplyMovement 8, _0484
    ApplyMovement LOCALID_PLAYER, _041C
    WaitMovement
    RemoveObject 8
    GetNationalDexEnabled VAR_RESULT
    CallIfEq VAR_RESULT, 1, _02E0
    SetVar VAR_UNK_0x4081, 2
    Return

_02E0:
    RemoveObject 22
    RemoveObject 23
    SetFlag FLAG_UNK_0x0294
    Return

_02EE:
    ApplyMovement 7, _03AC
    WaitMovement
    BufferRivalName 0
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0306:
    BlackOutFromBattle
    ReleaseAll
    End

FightArea_SetRivalPartnerTeam:
    GetPlayerStarterSpecies VAR_RESULT
    SetVar VAR_0x8004, TRAINER_RIVAL_FIGHT_AREA_CHIMCHAR
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, _033E
    SetVar VAR_0x8004, TRAINER_RIVAL_FIGHT_AREA_TURTWIG
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, _033E
    SetVar VAR_0x8004, TRAINER_RIVAL_FIGHT_AREA_PIPLUP
    Return

_033E:
    Return

    .balign 4, 0
_0340:
    MoveAction_034
    MoveAction_075
    EndMovement

    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0354:
    MoveAction_015 17
    MoveAction_012 2
    MoveAction_015 9
    MoveAction_012 6
    MoveAction_015
    MoveAction_032
    EndMovement

    .balign 4, 0
_0370:
    MoveAction_012
    EndMovement

    .balign 4, 0
_0378:
    MoveAction_038
    EndMovement

    .balign 4, 0
_0380:
    MoveAction_000
    MoveAction_071
    MoveAction_017 2
    MoveAction_072
    EndMovement

    .byte 75
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_039C:
    MoveAction_016 2
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_017 8
    EndMovement

    .balign 4, 0
_03AC:
    MoveAction_038
    EndMovement

    .balign 4, 0
_03B4:
    MoveAction_017
    EndMovement

    .balign 4, 0
_03BC:
    MoveAction_034
    MoveAction_063
    MoveAction_035
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_03D4:
    MoveAction_016
    EndMovement

    .balign 4, 0
_03DC:
    MoveAction_015 4
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_015 18
    MoveAction_012 2
    MoveAction_015 9
    MoveAction_012 6
    EndMovement

    .balign 4, 0
_03F8:
    MoveAction_012
    EndMovement

    .balign 4, 0
_0400:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0408:
    MoveAction_063
    MoveAction_037
    MoveAction_062
    MoveAction_036
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_063
    MoveAction_033
    EndMovement

    .balign 4, 0
_0428:
    MoveAction_033
    EndMovement

    .byte 63
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

    .balign 4, 0
_043C:
    MoveAction_063 2
    MoveAction_035
    EndMovement

    .balign 4, 0
_0448:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0450:
    MoveAction_001
    EndMovement

    .balign 4, 0
_0458:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0460:
    MoveAction_034
    EndMovement

    .balign 4, 0
_0468:
    MoveAction_033
    EndMovement

    .balign 4, 0
_0470:
    MoveAction_001
    EndMovement

    .balign 4, 0
_0478:
    MoveAction_012
    MoveAction_014 2
    EndMovement

    .balign 4, 0
_0484:
    MoveAction_013 8
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 10
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_049C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04AF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04C2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04D5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 35
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04E8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 36
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04FB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 37
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_050E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 41
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0521:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferItemName 0, 0x1BF
    GoToIfSet FLAG_UNK_0x006B, _057A
    Message 42
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _056F
    Message 43
    SetVar VAR_0x8004, 0x1BF
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x006B
    Message 44
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_056F:
    Message 45
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_057A:
    Message 46
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0585:
    ShowMapSign 47
    End

_059C:
    ShowArrowSign 48
    End

_05B3:
    ShowArrowSign 49
    End

_05CA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FacePlayer
    GetPlayerDir VAR_0x8004
    Message 38
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0606
    GoToIfEq VAR_RESULT, MENU_NO, _05FB
    End

_05FB:
    Message 40
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0606:
    Message 39
    CloseMessage
    Call _0646
    CallIfEq VAR_0x8004, 1, _0660
    CallIfEq VAR_0x8004, 3, _067A
    CallIfEq VAR_0x8004, 2, _0694
    ScrCmd_23D 1, 0, 165, 0x164, 246
    ReleaseAll
    End

_0646:
    ApplyMovement 18, _06B0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 18, _06BC
    WaitMovement
    Return

_0660:
    ApplyMovement LOCALID_PLAYER, _06C4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _06BC
    WaitMovement
    Return

_067A:
    ApplyMovement LOCALID_PLAYER, _06D0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _06BC
    WaitMovement
    Return

_0694:
    ApplyMovement LOCALID_PLAYER, _06E0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _06BC
    WaitMovement
    Return

    .balign 4, 0
_06B0:
    MoveAction_001
    MoveAction_064
    EndMovement

    .balign 4, 0
_06BC:
    MoveAction_069
    EndMovement

    .balign 4, 0
_06C4:
    MoveAction_013
    MoveAction_064
    EndMovement

    .balign 4, 0
_06D0:
    MoveAction_015
    MoveAction_001
    MoveAction_064
    EndMovement

    .balign 4, 0
_06E0:
    MoveAction_014
    MoveAction_001
    MoveAction_064
    EndMovement

_06F0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 7, _07A0
    WaitMovement
    GetPlayerDir VAR_0x8004
    CallIfEq VAR_0x8004, 3, _076E
    CallIfEq VAR_0x8004, 2, _077A
    CallIfEq VAR_0x8004, 1, _0786
    CallIfEq VAR_0x8004, 0, _0792
    BufferRivalName 0
    Message 4
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _02EE
    Call _014E
    GoToIfEq VAR_RESULT, FALSE, _0306
    Call _0198
    ReleaseAll
    End

_076E:
    ApplyMovement LOCALID_PLAYER, _07A8
    WaitMovement
    Return

_077A:
    ApplyMovement LOCALID_PLAYER, _07B0
    WaitMovement
    Return

_0786:
    ApplyMovement LOCALID_PLAYER, _07C0
    WaitMovement
    Return

_0792:
    ApplyMovement LOCALID_PLAYER, _07D0
    WaitMovement
    Return

    .balign 4, 0
_07A0:
    MoveAction_032
    EndMovement

    .balign 4, 0
_07A8:
    MoveAction_032
    EndMovement

    .balign 4, 0
_07B0:
    MoveAction_013
    MoveAction_014 2
    MoveAction_012
    EndMovement

    .balign 4, 0
_07C0:
    MoveAction_014
    MoveAction_013
    MoveAction_032
    EndMovement

    .balign 4, 0
_07D0:
    MoveAction_014
    MoveAction_012
    EndMovement

_07DC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07EF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 30
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0802:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    ApplyMovement 25, _0450
    WaitMovement
    CloseMessage
    ReleaseAll
    End

_081F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    ApplyMovement 24, _0470
    WaitMovement
    CloseMessage
    ReleaseAll
    End

_083C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 21
    WaitABXPadPress
    ApplyMovement 8, _085C
    WaitMovement
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_085C:
    MoveAction_034
    EndMovement

_0864:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 24
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0877:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 25
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_088A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 26
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_089D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_08B0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 28
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
