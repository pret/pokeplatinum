#include "macros/scrcmd.inc"
#include "res/text/bank/battle_arcade.h"
#include "constants/battle_frontier.h"


    ScriptEntry _0065
    ScriptEntry _06B8
    ScriptEntry _06F1
    ScriptEntry _0700
    ScriptEntry _0774
    ScriptEntry _0081
    ScriptEntry _079C
    ScriptEntry _07AF
    ScriptEntry _07C2
    ScriptEntry _07D5
    ScriptEntry _07E8
    ScriptEntry _07FB
    ScriptEntry _080E
    ScriptEntry _0821
    ScriptEntry _0046
    ScriptEntry _0834
    ScriptEntry _0845
    ScriptEntryEnd

_0046:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_MULTI, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _005F
    ClearFlag FLAG_UNK_0x02C3
    End

_005F:
    SetFlag FLAG_UNK_0x02C3
    End

_0065:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 0
    GoTo _009D
    End

_0081:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 1
    GoTo _009D
    End

_009D:
    RecordHeapMemory
    CallIfEq VAR_MAP_LOCAL_4, 0, _0678
    CallIfEq VAR_MAP_LOCAL_4, 1, _067D
    GoTo _00C3
    End

_00C3:
    CallIfEq VAR_MAP_LOCAL_4, 0, _0682
    CallIfEq VAR_MAP_LOCAL_4, 1, _069A
    AddMenuEntryImm 41, 2
    AddMenuEntryImm 42, 3
    ShowMenu
    GoToIfEq VAR_RESULT, 0, _015E
    GoToIfEq VAR_RESULT, 1, _018B
    GoToIfEq VAR_RESULT, 2, _0123
    GoToIfEq VAR_RESULT, 4, _01B8
    GoTo _0145
    End

_0123:
    CallIfEq VAR_MAP_LOCAL_4, 0, _06AE
    CallIfEq VAR_MAP_LOCAL_4, 1, _06B3
    GoTo _00C3
    End

_0145:
    GoTo _014D
    End

_014D:
    SetVar VAR_UNK_0x40BF, 0
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_015E:
    SetVar VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE
    ScrCmd_2D9 0, 3, VAR_RESULT
    BufferNumber 0, 3
    BufferNumber 1, 3
    GoToIfEq VAR_RESULT, 0, _01E5
    GoTo _020B
    End

_018B:
    SetVar VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE
    ScrCmd_2D9 0, 3, VAR_RESULT
    BufferNumber 0, 3
    BufferNumber 1, 3
    GoToIfEq VAR_RESULT, 0, _01E5
    GoTo _020B
    End

_01B8:
    SetVar VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI
    ScrCmd_2D9 0, 2, VAR_RESULT
    BufferNumber 0, 2
    BufferNumber 1, 2
    GoToIfEq VAR_RESULT, 0, _01F8
    GoTo _020B
    End

_01E5:
    Message 8
    MessageSeenBanlistSpecies 9, 3
    GoTo _0145
    End

_01F8:
    Message 8
    MessageSeenBanlistSpecies 9, 2
    GoTo _0145
    End

_020B:
    Message 7
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_2D9 4, VAR_BATTLE_ARCADE_CHALLENGE_TYPE, VAR_RESULT
    ScrCmd_2DB VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_5, VAR_MAP_LOCAL_6
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, 0xFF, _0145
    TryRevertPokemonForm VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _05E1
    TryRevertPokemonForm VAR_MAP_LOCAL_5, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _05E1
    TryRevertPokemonForm VAR_MAP_LOCAL_6, VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _05E1
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_1
    GoToIfEq VAR_MAP_LOCAL_1, 0, _0145
    GoTo _029B
    End

_029B:
    GoTo _02A3
    End

_02A3:
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, _0448
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, _0448
    SetVar VAR_MAP_LOCAL_0, 0
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _0145
    GoToIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _02F1
    GoTo _04A9
    End

_02F1:
    Message 43
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 13, 0
    AddMenuEntryImm 14, 1
    AddMenuEntryImm 5, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0335
    GoToIfEq VAR_0x8008, 1, _0389
    GoTo _0145
    End

_0335:
    Message 44
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _02F1
    CloseMessage
    StartBattleClient 32, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, _0377
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, _037F
    GoTo _03DD
    End

_0377:
    GoTo _02F1
    End

_037F:
    EndCommunication
    GoTo _02F1
    End

_0389:
    Message 44
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _02F1
    CloseMessage
    StartBattleServer 32, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, _03CB
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, _03D3
    GoTo _03DD
    End

_03CB:
    GoTo _02F1
    End

_03D3:
    EndCommunication
    GoTo _02F1
    End

_03DD:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 154
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_0x8000
    GetPartyMonSpecies VAR_MAP_LOCAL_5, VAR_0x8001
    ScrCmd_2DA VAR_0x8000, VAR_0x8001, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 1, _0450
    GoToIfEq VAR_0x8008, 2, _0466
    GoToIfEq VAR_0x8008, 3, _047C
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 156
    Message 45
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _0448
    Call _06DF
    GoTo _04A9
    End

_0448:
    SetVar VAR_UNK_0x40BF, 0xFF
    Return

_0450:
    Call _049F
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_2
    Message 29
    GoTo _0497
    End

_0466:
    Call _049F
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_5
    Message 29
    GoTo _0497
    End

_047C:
    Call _049F
    BufferPartyMonSpecies 0, VAR_MAP_LOCAL_2
    BufferPartyMonSpecies 1, VAR_MAP_LOCAL_5
    Message 30
    GoTo _0497
    End

_0497:
    GoTo _0145
    End

_049F:
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 157
    EndCommunication
    Return

_04A9:
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, _0549
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, _0564
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _057F
    PlayFanfare SEQ_SE_DP_KAIDAN2
    GoTo _04DC
    End

_04DC:
    FadeScreenOut
    WaitFadeScreen
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, _05A5
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, _05B9
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _05CD
    IncrementGameRecord RECORD_UNK_058
    CreateJournalEvent LOCATION_EVENT_BATTLE_ARCADE, 0, 0, 0, 0
    WaitForTransition
    ScrCmd_2C4 15
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _0545
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    AssertHeapMemory
    End

_0545:
    EndCommunication
    Return

_0549:
    Message 32
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _05F0
    ApplyMovement VAR_LAST_TALKED, _0610
    WaitMovement
    Return

_0564:
    Message 32
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _05F0
    ApplyMovement VAR_LAST_TALKED, _0610
    WaitMovement
    Return

_057F:
    MessageNoSkip 32
    WaitTime 10, VAR_RESULT
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 155
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0604
    ApplyMovement VAR_LAST_TALKED, _0624
    WaitMovement
    Return

_05A5:
    ApplyMovement LOCALID_PLAYER, _0630
    ApplyMovement VAR_LAST_TALKED, _0658
    WaitMovement
    Return

_05B9:
    ApplyMovement LOCALID_PLAYER, _0630
    ApplyMovement VAR_LAST_TALKED, _0658
    WaitMovement
    Return

_05CD:
    ApplyMovement LOCALID_PLAYER, _0648
    ApplyMovement VAR_LAST_TALKED, _066C
    WaitMovement
    Return

_05E1:
    SetVar VAR_UNK_0x40BF, 0
    Common_GriseousOrbCouldNotBeRemoved
    End

    .balign 4, 0
_05F0:
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_0604:
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
_0610:
    WalkNormalNorth
    WalkNormalEast
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_0624:
    WalkNormalNorth 3
    SetInvisible
    EndMovement

    .balign 4, 0
_0630:
    WalkFasterSouth 2
    WalkFasterWest
    WalkFasterSouth 2
    FaceNorth
    SetVisible
    EndMovement

    .balign 4, 0
_0648:
    WalkFasterSouth 4
    FaceNorth
    SetVisible
    EndMovement

    .balign 4, 0
_0658:
    WalkFasterSouth
    WalkFasterWest
    WalkFasterSouth 2
    SetVisible
    EndMovement

    .balign 4, 0
_066C:
    WalkFasterSouth 3
    SetVisible
    EndMovement

_0678:
    Message 0
    Return

_067D:
    Message 3
    Return

_0682:
    InitLocalTextMenu 31, 9, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 38, 0
    AddMenuEntryImm 39, 1
    Message 1
    Return

_069A:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 40, 4
    Message 4
    Return

_06AE:
    Message 2
    Return

_06B3:
    Message 5
    Return

_06B8:
    RecordHeapMemory
    SetVar VAR_MAP_LOCAL_3, 1
    SetVar VAR_UNK_0x40BF, 0
    Message 33
    Call _0448
    Call _06DF
    GoTo _04A9
    End

_06DF:
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    Return

_06F1:
    Message 34
    ScrCmd_2DC VAR_BATTLE_ARCADE_CHALLENGE_TYPE
    GoTo _0145
    End

_0700:
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, _073C
    CallIfEq VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, _073C
    CallIfEq VAR_BATTLE_ARCADE_PRINT_STATE, 1, _0742
    CallIfEq VAR_BATTLE_ARCADE_PRINT_STATE, 3, _0759
    GoTo _0145
    End

_073C:
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_41
    Return

_0742:
    Message 35
    BufferPlayerName 0
    Message 37
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_ARCADE_PRINT_STATE, 2
    Return

_0759:
    Message 35
    BufferPlayerName 0
    Message 36
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_ARCADE_PRINT_STATE, 4
    Common_CheckAllFrontierGoldPrintsObtained
    Return

_0774:
    GoTo _0145
    End

BattleArcade_UnusedMovement:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

BattleArcade_UnusedMovement2:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

_079C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 46
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07AF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 47
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07C2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 48
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07D5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 49
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07E8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 50
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_07FB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 51
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_080E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 52
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0821:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 53
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0834:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 54
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0845:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 55
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
