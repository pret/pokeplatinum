#include "macros/scrcmd.inc"
#include "res/text/bank/fight_area.h"


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
    SetObjectEventMovementType 7, MOVEMENT_TYPE_LOOK_NORTH
    SetObjectEventDir 7, DIR_NORTH
    End

_0098:
    SetFlag FLAG_UNK_0x01D3
    End

FightArea_CheckForWeekend_Unused:
    GetDayOfWeek VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0 DAY_OF_WEEK_SUNDAY FightArea_ActivateRivalFight_Unused
    GoToIfEq VAR_MAP_LOCAL_0 DAY_OF_WEEK_SATURDAY FightArea_ActivateRivalFight_Unused
    End

FightArea_ActivateRivalFight_Unused:
    SetObjectEventPos 7, 658, 430
    SetObjectEventMovementType 7, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectEventDir 7, DIR_SOUTH
    ClearFlag FLAG_UNK_0x01D3
    End

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
    WalkOnSpotNormalWest
    EmoteExclamationMark
    EndMovement

FightArea_UnusedMovement:
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0354:
    WalkNormalEast 17
    WalkNormalNorth 2
    WalkNormalEast 9
    WalkNormalNorth 6
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0370:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0378:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_0380:
    FaceNorth
    LockDir
    WalkFastSouth 2
    UnlockDir
    EndMovement

FightArea_UnusedMovement2:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_039C:
    WalkFastNorth 2
    EndMovement

    .balign 4, 0
_03A4:
    WalkFastSouth 8
    EndMovement

    .balign 4, 0
_03AC:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_03B4:
    WalkFastSouth
    EndMovement

    .balign 4, 0
_03BC:
    WalkOnSpotNormalWest
    Delay8
    WalkOnSpotNormalEast
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_03D4:
    WalkFastNorth
    EndMovement

    .balign 4, 0
_03DC:
    WalkNormalEast 4
    EndMovement

    .balign 4, 0
_03E4:
    WalkNormalEast 18
    WalkNormalNorth 2
    WalkNormalEast 9
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
_03F8:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0400:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0408:
    Delay8
    WalkOnSpotFastSouth
    Delay4
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_041C:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0428:
    WalkOnSpotNormalSouth
    EndMovement

FightArea_UnusedMovement3:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_043C:
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0448:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0450:
    FaceSouth
    EndMovement

    .balign 4, 0
_0458:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0460:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0468:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0470:
    FaceSouth
    EndMovement

    .balign 4, 0
_0478:
    WalkNormalNorth
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
_0484:
    WalkNormalSouth 8
    EndMovement

FightArea_UnusedMovement4:
    WalkOnSpotNormalWest
    EndMovement

FightArea_UnusedMovement5:
    WalkNormalEast 10
    EndMovement

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
    PlayBoatCutscene DIR_SOUTH, DIR_NORTH, MAP_HEADER_SNOWPOINT_CITY, 0x164, 246
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
    FaceSouth
    Delay15
    EndMovement

    .balign 4, 0
_06BC:
    SetInvisible
    EndMovement

    .balign 4, 0
_06C4:
    WalkNormalSouth
    Delay15
    EndMovement

    .balign 4, 0
_06D0:
    WalkNormalEast
    FaceSouth
    Delay15
    EndMovement

    .balign 4, 0
_06E0:
    WalkNormalWest
    FaceSouth
    Delay15
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
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_07A8:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_07B0:
    WalkNormalSouth
    WalkNormalWest 2
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_07C0:
    WalkNormalWest
    WalkNormalSouth
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_07D0:
    WalkNormalWest
    WalkNormalNorth
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
    WalkOnSpotNormalWest
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

    .balign 0
