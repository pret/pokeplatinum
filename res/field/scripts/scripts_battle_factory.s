#include "macros/scrcmd.inc"
#include "res/text/bank/battle_factory.h"
#include "constants/battle_frontier.h"


    ScriptEntry _0059
    ScriptEntry _05B0
    ScriptEntry _05E9
    ScriptEntry _05FA
    ScriptEntry _066E
    ScriptEntry _0075
    ScriptEntry _0698
    ScriptEntry _06AB
    ScriptEntry _06BE
    ScriptEntry _06D1
    ScriptEntry _06E4
    ScriptEntry _06F7
    ScriptEntry _070A
    ScriptEntry _003A
    ScriptEntryEnd

_003A:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_BATTLE_FRONTIER_FRONTLINE_NEWS_MULTI, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0053
    ClearFlag FLAG_UNK_0x02C3
    End

_0053:
    SetFlag FLAG_UNK_0x02C3
    End

_0059:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 0
    GoTo _0091
    End

_0075:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_MAP_LOCAL_4, 1
    GoTo _0091
    End

_0091:
    RecordHeapMemory
    CallIfEq VAR_MAP_LOCAL_4, 0, _0570
    CallIfEq VAR_MAP_LOCAL_4, 1, _0575
    GoTo _00B7
    End

_00B7:
    CallIfEq VAR_MAP_LOCAL_4, 0, _057A
    CallIfEq VAR_MAP_LOCAL_4, 1, _0592
    AddMenuEntryImm 19, 2
    AddMenuEntryImm 20, 3
    ShowMenu
    GoToIfEq VAR_RESULT, 0, _0152
    GoToIfEq VAR_RESULT, 1, _0160
    GoToIfEq VAR_RESULT, 2, _0117
    GoToIfEq VAR_RESULT, 4, _016E
    GoTo _0139
    End

_0117:
    CallIfEq VAR_MAP_LOCAL_4, 0, _05A6
    CallIfEq VAR_MAP_LOCAL_4, 1, _05AB
    GoTo _00B7
    End

_0139:
    GoTo _0141
    End

_0141:
    SetVar VAR_UNK_0x40B7, 0
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0152:
    SetVar VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE
    GoTo _017C
    End

_0160:
    SetVar VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE
    GoTo _017C
    End

_016E:
    SetVar VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI
    GoTo _017C
    End

_017C:
    Message 7
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 21, 0
    AddMenuEntryImm 22, 1
    AddMenuEntryImm 23, 2
    ShowMenu
    GoToIfEq VAR_RESULT, 0, _01BA
    GoToIfEq VAR_RESULT, 1, _01C8
    GoTo _0139
    End

_01BA:
    SetVar VAR_UNK_0x40B9, 0
    GoTo _01D6
    End

_01C8:
    SetVar VAR_UNK_0x40B9, 1
    GoTo _01D6
    End

_01D6:
    GoTo _01DE
    End

_01DE:
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, _0386
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, _0386
    SetVar VAR_MAP_LOCAL_0, 0
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _0139
    GoToIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _022C
    GoTo _038E
    End

_022C:
    Message 24
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 13, 0
    AddMenuEntryImm 14, 1
    AddMenuEntryImm 5, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0270
    GoToIfEq VAR_0x8008, 1, _02EC
    GoTo _0139
    End

_0270:
    Message 25
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _022C
    CloseMessage
    CallIfEq VAR_UNK_0x40B9, 0, _02C2
    CallIfEq VAR_UNK_0x40B9, 1, _02CE
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, _02DA
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, _02E2
    GoTo _0368
    End

_02C2:
    StartBattleClient 27, 0, 0, VAR_RESULT
    Return

_02CE:
    StartBattleClient 28, 0, 0, VAR_RESULT
    Return

_02DA:
    GoTo _022C
    End

_02E2:
    EndCommunication
    GoTo _022C
    End

_02EC:
    Message 25
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _022C
    CloseMessage
    CallIfEq VAR_UNK_0x40B9, 0, _033E
    CallIfEq VAR_UNK_0x40B9, 1, _034A
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, _0356
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, _035E
    GoTo _0368
    End

_033E:
    StartBattleServer 27, 0, 0, VAR_RESULT
    Return

_034A:
    StartBattleServer 28, 0, 0, VAR_RESULT
    Return

_0356:
    GoTo _022C
    End

_035E:
    EndCommunication
    GoTo _022C
    End

_0368:
    Message 26
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _0386
    Call _05D7
    GoTo _038E
    End

_0386:
    SetVar VAR_UNK_0x40B7, 0xFF
    Return

_038E:
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, _042E
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, _0449
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _0464
    PlayFanfare SEQ_SE_DP_KAIDAN2
    GoTo _03C1
    End

_03C1:
    FadeScreenOut
    WaitFadeScreen
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, _048A
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, _049E
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _04B2
    IncrementGameRecord RECORD_UNK_058
    CreateJournalEvent LOCATION_EVENT_BATTLE_FACTORY, 0, 0, 0, 0
    WaitForTransition
    ScrCmd_2C4 3
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI, _042A
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    AssertHeapMemory
    End

_042A:
    EndCommunication
    Return

_042E:
    Message 9
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _04C8
    ApplyMovement VAR_LAST_TALKED, _04F0
    WaitMovement
    Return

_0449:
    Message 9
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _04C8
    ApplyMovement VAR_LAST_TALKED, _04F0
    WaitMovement
    Return

_0464:
    MessageNoSkip 9
    WaitTime 15, VAR_RESULT
    ClearReceivedTempDataAllPlayers
    ScrCmd_135 169
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _04DC
    ApplyMovement VAR_LAST_TALKED, _0504
    WaitMovement
    Return

_048A:
    ApplyMovement LOCALID_PLAYER, _0518
    ApplyMovement VAR_LAST_TALKED, _0548
    WaitMovement
    Return

_049E:
    ApplyMovement LOCALID_PLAYER, _0518
    ApplyMovement VAR_LAST_TALKED, _0548
    WaitMovement
    Return

_04B2:
    ApplyMovement LOCALID_PLAYER, _0530
    ApplyMovement VAR_LAST_TALKED, _055C
    WaitMovement
    Return

    .balign 4, 0
_04C8:
    WalkNormalNorth 3
    WalkNormalEast
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
_04DC:
    WalkNormalNorth 3
    WalkNormalWest
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
_04F0:
    WalkNormalNorth 2
    WalkNormalEast
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
_0504:
    WalkNormalNorth 2
    WalkNormalWest
    WalkNormalNorth 4
    SetInvisible
    EndMovement

    .balign 4, 0
_0518:
    WalkFasterSouth 3
    WalkFasterWest
    WalkFasterSouth 4
    FaceNorth
    SetVisible
    EndMovement

    .balign 4, 0
_0530:
    WalkFasterSouth 3
    WalkFasterEast
    WalkFasterSouth 4
    FaceNorth
    SetVisible
    EndMovement

    .balign 4, 0
_0548:
    WalkFasterSouth 2
    WalkFasterWest
    WalkFasterSouth 4
    SetVisible
    EndMovement

    .balign 4, 0
_055C:
    WalkFasterSouth 2
    WalkFasterEast
    WalkFasterSouth 4
    SetVisible
    EndMovement

_0570:
    Message 0
    Return

_0575:
    Message 3
    Return

_057A:
    InitLocalTextMenu 31, 9, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 16, 0
    AddMenuEntryImm 17, 1
    Message 1
    Return

_0592:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 18, 4
    Message 4
    Return

_05A6:
    Message 2
    Return

_05AB:
    Message 5
    Return

_05B0:
    RecordHeapMemory
    SetVar VAR_MAP_LOCAL_3, 1
    SetVar VAR_UNK_0x40B7, 0
    Message 11
    Call _0386
    Call _05D7
    GoTo _038E
    End

_05D7:
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    Return

_05E9:
    Message 12
    ScrCmd_2C5 VAR_BATTLE_FACTORY_CHALLENGE_TYPE, VAR_UNK_0x40B9
    GoTo _0139
    End

_05FA:
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_SINGLE, _0636
    CallIfEq VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_DOUBLE, _0636
    CallIfEq VAR_BATTLE_FACTORY_PRINT_STATE, 1, _063C
    CallIfEq VAR_BATTLE_FACTORY_PRINT_STATE, 3, _0653
    GoTo _0139
    End

_0636:
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_38
    Return

_063C:
    Message 13
    BufferPlayerName 0
    Message 15
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_FACTORY_PRINT_STATE, 2
    Return

_0653:
    Message 13
    BufferPlayerName 0
    Message 14
    PlaySound SEQ_FANFA4
    WaitSound
    SetVar VAR_BATTLE_FACTORY_PRINT_STATE, 4
    Common_CheckAllFrontierGoldPrintsObtained
    Return

_066E:
    GoTo _0139
    End

    .balign 4, 0
BattleFactory_UnusedMovement:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

BattleFactory_UnusedMovement2:
    WalkNormalNorth 2
    Delay8
    WalkNormalNorth
    EndMovement

_0698:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06AB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 28
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06BE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06D1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 30
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06E4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06F7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_070A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
