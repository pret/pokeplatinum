# include "macros/frscrcmd.inc"
# include "res/text/bank/battle_tower_multi_battle_room.h"
# include "res/text/bank/menu_entries.h"

    .data

    .long _0172 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0x800A
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0014:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0020:
    .short 0x800B
    .byte 0x01
    .short 0x800C
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0028:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0078
    .short 0x0078
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x03
    .short 0x0028
    .short 0x0068
    .byte 0x01
    .byte 0x01
    .short 0x0002
    .short 0x800F
    .byte 0x03
    .short 0x0028
    .short 0x0078
    .byte 0x01
    .byte 0x01
    .short 0x0005
    .short 0x8009
    .byte 0x00
    .short 0x0078
    .short 0x00A8
    .byte 0x01
    .byte 0x01
    .short 0x0006
    .short 0x800A
    .byte 0x00
    .short 0x0088
    .short 0x00A8
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0064:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0078
    .short 0x0078
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x03
    .short 0x0028
    .short 0x0068
    .byte 0x01
    .byte 0x01
    .short 0x0002
    .short 0x800F
    .byte 0x03
    .short 0x0028
    .short 0x0078
    .byte 0x01
    .byte 0x01
    .short 0x0007
    .short 0xEEEF
    .byte 0x00
    .short 0x0078
    .short 0x00A8
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0008
    .short 0xEEEF
    .byte 0x00
    .short 0x0088
    .short 0x00A8
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00A0:
    .short 0x0003
    .short 0x800B
    .byte 0x01
    .short 0x0088
    .short 0x0038
    .byte 0x01
    .byte 0x01
    .short 0x0004
    .short 0x800C
    .byte 0x01
    .short 0x0078
    .short 0x0038
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_00B8:
    .short 0x0004
    .short 0x0001
    .short 0x0006
    .short 0x0003
    .short 0x0004
    .short 0x0003
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00CC:
    .short 0x0004
    .short 0x0001
    .short 0x0006
    .short 0x0004
    .short 0x0004
    .short 0x0002
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00E0:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0003
    .short 0x0005
    .short 0x0003
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00F4:
    .short 0x0005
    .short 0x0001
    .short 0x0007
    .short 0x0004
    .short 0x0005
    .short 0x0002
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0108:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0110:
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0118:
    .short 0x0016
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0120:
    .short 0x0004
    .short 0x0003
    .short 0x0006
    .short 0x0002
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0130:
    .short 0x0004
    .short 0x0002
    .short 0x0006
    .short 0x0003
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0140:
    .short 0x0006
    .short 0x0001
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_014C:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0154:
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_015C:
    .short 0x0002
    .short 0x0001
    .short 0x0006
    .short 0x0001
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_016C:
    .short 0x0002
    .short 0x0001
    .short 0xFD13

_0172:
    FrontierScrCmd_6C
    Call _0BCF
    Call _0C15
    SetVar 0x8006, 0
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfEq 0x8008, 3, _01CE
    GoToIfEq 0x8008, 6, _01CE
    SetVar 0x8001, 5
    SetVar 0x8002, 6
    SetVar 0x800F, 232
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0028
    GoTo _01F8
    End

_01CE:
    IncrementTrainerScore TRAINER_SCORE_EVENT_UNK_43
    SetVar 0x8001, 7
    SetVar 0x8002, 8
    SetVar 0x800F, 232
    FrontierScrCmd_22 _0014
    FrontierScrCmd_24 _0064
    GoTo _01F8
    End

_01F8:
    FadeScreenIn
    FrontierScrCmd_3E 0x40DE, 0x8008
    GoToIfEq 0x8008, 1, _0226
    GoToIfEq 0x8008, 2, _04FB
    End

_0226:
    FrontierScrCmd_3D 0x40DE, 3
    Call _025C
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfEq 0x8008, 3, _0270
    GoToIfEq 0x8008, 6, _0270
    GoTo _0965
    End

_025C:
    FrontierScrCmd_28 0x8001, _00B8
    FrontierScrCmd_28 0x8002, _00CC
    FrontierScrCmd_29
    Return

_0270:
    Call _0ACD
    GoToIfEq 0x8003, 0, _077B
    Call _09A5
    GoToIfEq 0x8008, 1, _09B7
    Call _09C5
    Call _09E9
    Call _0A0D
    GoTo _02B0
    End

_02B0:
    CallBattleTowerFunction BT_FUNC_GET_NEXT_OPPONENT_NUM, 0, 0x8008
    BufferNumber 0, 0x8008
    Message BattleTowerMultiBattleRoom_Text_AskReadyForNextPair
    GoToIfEq 0x8006, 0, _02E9
    InitGlobalTextListMenu 31, 13, 0, 0, 0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 255, 0
    GoTo _034B
    End

_02E9:
    Call _0C57
    GoToIfEq 0x8008, 1, _0330
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _0330
    InitGlobalTextListMenu 31, 11, 0, 0, 0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 255, 0
    AddListMenuEntry MenuEntries_Text_Record, 255, 1
    GoTo _034B
    End

_0330:
    InitGlobalTextListMenu 31, 13, 0, 0, 0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 255, 0
    GoTo _034B
    End

_034B:
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Retire, 255, 2
    ShowListMenu
    CloseMessage
    SetVar 0x8000, 0
    GoToIfEq 0x8008, 2, _0B27
    GoToIfEq 0x8008, 1, _0B65
    GoTo _037F
    End

_037F:
    SetVar 0x8006, 0
    Message BattleTowerMultiBattleRoom_Text_AwaitingResponseFromFriend
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 5
    CallBattleTowerFunction BT_FUNC_UNK_58, 0, 0x8008
    GoTo _039F
    End

_039F:
    FrontierScrCmd_89 2, 0x8000, 0x8008
    GoToIfEq 0x8008, 0, _039F
    FrontierScrCmd_8A 2, 0x8000
    CloseMessage
    SetVar 0x8010, 0x8000
    GoToIfEq 0x8010, 1, _0B4B
    Call _0605
    GoTo _0270
    End

_03DD:
    FrontierScrCmd_6F
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfEq 0x8008, 3, _0437
    GoToIfEq 0x8008, 6, _0443
    WaitTime 30, 0x8008
    FrontierScrCmd_3D 0x40D8, 1
    FadeScreenOut
    FrontierScrCmd_25 0
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 5
    FrontierScrCmd_25 6
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_23 0x800A
    FrontierScrCmd_02

_0437:
    FrontierScrCmd_C8 1
    GoTo _0443
    End

_0443:
    WaitTime 30, 0x8008
    FrontierScrCmd_3D 0x40D8, 1
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 6
    CallIfEq 0x8004, 100, _04D1
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    CallIfEq 0x8008, 6, _04DF
    FadeScreenOut
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 8
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    CallIfEq 0x8008, 3, _04F7
    FrontierScrCmd_25 0
    FrontierScrCmd_25 1
    FrontierScrCmd_25 2
    FrontierScrCmd_25 7
    FrontierScrCmd_25 8
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_23 0x800A
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfEq 0x8008, 6, _04D5
    FrontierScrCmd_02

_04D1:
    CloseMessage
    Return

_04D5:
    FrontierScrCmd_B6
    FrontierScrCmd_04 14, 1
    End

_04DF:
    MessageInstant BattleTowerMultiBattleRoom_Text_SavingDontTurnOffPower2
    ShowSavingIcon
    FrontierScrCmd_73 0x8008
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    CloseMessage
    Return

_04F7:
    EndCommunication
    Return

_04FB:
    FrontierScrCmd_3D 0x40DE, 3
    SetVar 0x8006, 1
    Call _025C
    Call _051B
    GoTo _053F
    End

_051B:
    FrontierScrCmd_28 1, _014C
    FrontierScrCmd_28 2, _014C
    FrontierScrCmd_28 0x8001, _016C
    FrontierScrCmd_28 0x8002, _016C
    FrontierScrCmd_29
    Return

_053F:
    CallBattleTowerFunction BT_FUNC_GET_NEXT_OPPONENT_NUM, 0, 0x8008
    BufferNumber 0, 0x8008
    Message BattleTowerMultiBattleRoom_Text_AskReadyForNextPair
    GoToIfEq 0x8006, 0, _0578
    InitGlobalTextListMenu 31, 11, 0, 0, 0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 255, 0
    GoTo _059B
    End

_0578:
    InitGlobalTextListMenu 31, 9, 0, 0, 0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 255, 0
    AddListMenuEntry MenuEntries_Text_Record, 255, 1
    GoTo _059B
    End

_059B:
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Rest, 255, 2
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Retire, 255, 3
    ShowListMenu
    CloseMessage
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 0, _05F1
    GoToIfEq 0x8010, 1, _0629
    GoToIfEq 0x8010, 2, _06E7
    GoToIfEq 0x8010, 3, _0745
    GoTo _05F1
    End

_05F1:
    Call _0605
    SetVar 0x8006, 0
    GoTo _0965
    End

_0605:
    FrontierScrCmd_28 0x8001, _0154
    FrontierScrCmd_28 0x8002, _0154
    FrontierScrCmd_28 1, _015C
    FrontierScrCmd_28 2, _015C
    FrontierScrCmd_29
    Return

_0629:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06DB
    CallIfEq 0x8008, 1, _06E1
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _053F
    Call _0667
    GoTo _053F
    End

_0667:
    Call _0689
    GoTo _0693
    End

_0675:
    Call _0689
    AddVar 0x8005, 1
    GoTo _0693
    End

_0689:
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, 0x8005
    Return

_0693:
    GoTo _069B
    End

_069B:
    SetVar 0x8006, 1
    MessageInstant BattleTowerMultiBattleRoom_Text_SavingDontTurnOffPower
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    ShowSavingIcon
    FrontierScrCmd_6D 1, 0x8008, 0x8005, 0x8005
    HideSavingIcon
    GoToIfEq 0x8005, 1, _06CE
    Message BattleTowerMultiBattleRoom_Text_BattleVideoCouldntBeSaved
    Return

_06CE:
    PlaySoundEffect SEQ_SE_DP_SAVE
    BufferPlayerName 0
    Message BattleTowerMultiBattleRoom_Text_BattleHasBeenSaved
    Return

_06DB:
    Message BattleTowerMultiBattleRoom_Text_AskSaveBattleVideo
    Return

_06E1:
    Message BattleTowerMultiBattleRoom_Text_AskDeleteExistingBattleVideo
    Return

_06E7:
    Message BattleTowerMultiBattleRoom_Text_AskSaveAndQuit
    ShowYesNoMenu 0x8008, MENU_YES
    CloseMessage
    GoToIfEq 0x8008, 0, _0707
    GoTo _053F
    End

_0707:
    FrontierScrCmd_3D 0x40D8, 2
    CallBattleTowerFunction BT_FUNC_UNK_39, 0, 0x8008
    FrontierScrCmd_86
    Message BattleTowerMultiBattleRoom_Text_ThanksForParticipating
    ShowSavingIcon
    FrontierScrCmd_72 0x8008
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    FadeScreenOut
    CloseMessage
    FrontierScrCmd_6F
    CallBattleTowerFunction BT_FUNC_RESET_SYSTEM, 0, 0x8008
    End

_0745:
    Message BattleTowerMultiBattleRoom_Text_AskCancelChallenge
    ShowYesNoMenu 0x8008, MENU_NO
    CloseMessage
    GoToIfEq 0x8008, 0, _0765
    GoTo _053F
    End

_0765:
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS, 0, 0x8008
    SetVar 0x8000, 0
    GoTo _03DD
    End

_077B:
    SetVar 0x8000, 0
    GoTo _087B
    End

_0789:
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfEq 0x8008, 3, _07B3
    GoToIfEq 0x8008, 6, _07B3
    GoTo _07DF
    End

_07B3:
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _0817
    Call _0C57
    GoToIfEq 0x8008, 1, _0817
    GoTo _07DF
    End

_07DF:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06DB
    CallIfEq 0x8008, 1, _06E1
    ShowYesNoMenu 0x8008, MENU_NO
    CallIfEq 0x8008, 0, _095D
    GoTo _0817
    End

_0817:
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS_AND_JOURNAL, 0, 0x8008
    Message BattleTowerMultiBattleRoom_Text_YouHaveClearedYourSeventhMatch
    CallBattleTowerFunction BT_FUNC_UNK_46, 0, 0x8008
    BufferNumber 1, 0x8008
    BufferPlayerName 0
    Message BattleTowerMultiBattleRoom_Text_PlayerReceivedBP
    PlayFanfare SEQ_PL_POINTGET3
    WaitFanfare
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfEq 0x8008, 3, _0869
    GoToIfEq 0x8008, 6, _0869
    CloseMessage
    GoTo _03DD
    End

_0869:
    SetVar 0x8004, 100
    MessageNoSkip BattleTowerMultiBattleRoom_Text_PleaseWait
    GoTo _03DD
    End

_087B:
    SetVar 0x8004, 0
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfEq 0x8008, 3, _08AB
    GoToIfEq 0x8008, 6, _08AB
    GoTo _08E9
    End

_08AB:
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _08D7
    Call _0C57
    GoToIfEq 0x8008, 1, _0945
    GoTo _08E9
    End

_08D7:
    SetVar 0x8004, 100
    MessageNoSkip BattleTowerMultiBattleRoom_Text_PleaseWait
    GoTo _0945
    End

_08E9:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06DB
    CallIfEq 0x8008, 1, _06E1
    ShowYesNoMenu 0x8008, MENU_NO
    CallIfEq 0x8008, 0, _0955
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfEq 0x8008, 3, _08D7
    GoToIfEq 0x8008, 6, _08D7
    CloseMessage
    GoTo _0945
    End

_0945:
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS, 0, 0x8008
    GoTo _03DD
    End

_0955:
    Call _0675
    Return

_095D:
    Call _0667
    Return

_0965:
    Call _0A1B
    GoToIfEq 0x8003, 0, _077B
    Call _09A5
    GoToIfEq 0x8008, 1, _09B7
    Call _09C5
    Call _09E9
    Call _0A0D
    GoTo _053F
    End

_09A5:
    CallBattleTowerFunction BT_FUNC_UNK_34, 0, 0x8008
    CallBattleTowerFunction BT_FUNC_HAS_DEFEATED_SEVEN_TRAINERS, 0, 0x8008
    Return

_09B7:
    SetVar 0x8000, 1
    GoTo _0789
    End

_09C5:
    FrontierScrCmd_28 3, _0120
    FrontierScrCmd_28 4, _0130
    FrontierScrCmd_29
    FrontierScrCmd_25 3
    FrontierScrCmd_25 4
    FrontierScrCmd_23 0x800B
    FrontierScrCmd_23 0x800C
    Return

_09E9:
    FrontierScrCmd_28 0x8001, _0140
    FrontierScrCmd_28 0x8002, _0140
    FrontierScrCmd_28 1, _014C
    FrontierScrCmd_28 2, _014C
    FrontierScrCmd_29
    Return

_0A0D:
    Message BattleTowerMultiBattleRoom_Text_YourPokemonWillBeRestored
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    Return

_0A1B:
    CallBattleTowerFunction BT_FUNC_SET_OPPONENT_TEAMS, 0, 0x8008
    Call _0A61
    Call _0AB5
    FrontierScrCmd_85 0
    WaitABPress
    CloseMessage
    Call _0AC1
    FrontierScrCmd_85 1
    WaitABPress
    CloseMessage
    Call _0A91
    FrontierScrCmd_3F 0
    FrontierScrCmd_87
    FrontierScrCmd_88 0x8003
    FadeScreenIn
    Return

_0A61:
    CallBattleTowerFunction BT_FUNC_GET_OPPONENT_OBJECT_ID, 0, 0x800B
    CallBattleTowerFunction BT_FUNC_GET_OPPONENT_OBJECT_ID, 1, 0x800C
    FrontierScrCmd_22 _0020
    FrontierScrCmd_24 _00A0
    FrontierScrCmd_28 3, _00E0
    FrontierScrCmd_28 4, _00F4
    FrontierScrCmd_29
    Return

_0A91:
    FrontierScrCmd_28 0x8001, _0108
    FrontierScrCmd_28 0x8002, _0108
    FrontierScrCmd_28 3, _0110
    FrontierScrCmd_28 4, _0110
    FrontierScrCmd_29
    Return

_0AB5:
    FrontierScrCmd_28 3, _0118
    FrontierScrCmd_29
    Return

_0AC1:
    FrontierScrCmd_28 4, _0118
    FrontierScrCmd_29
    Return

_0ACD:
    CallBattleTowerFunction BT_FUNC_SET_OPPONENT_TEAMS, 0, 0x8008
    Call _0A61
    Call _0AB5
    FrontierScrCmd_85 0
    WaitTime 30, 0x8008
    CloseMessage
    Call _0AC1
    FrontierScrCmd_85 1
    WaitTime 30, 0x8008
    CloseMessage
    Call _0A91
    MessageNoSkip BattleTowerMultiBattleRoom_Text_PleaseWait
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 4
    CloseMessage
    FrontierScrCmd_3F 0
    FrontierScrCmd_87
    FrontierScrCmd_88 0x8003
    FadeScreenIn
    Return

_0B27:
    Message BattleTowerMultiBattleRoom_Text_AskCancelChallenge
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _02B0
    SetVar 0x8000, 1
    GoTo _037F
    End

_0B4B:
    Message BattleTowerMultiBattleRoom_Text_YouHaveChosenToRetire
    WaitTime 30, 0x8008
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_35 7
    CloseMessage
    GoTo _0765
    End

_0B65:
    Call _0C57
    GoToIfEq 0x8008, 1, _02B0
    FrontierScrCmd_71 0x8008
    GoToIfEq 0x8008, 0, _02B0
    GoTo _0B91
    End

_0B91:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06DB
    CallIfEq 0x8008, 1, _06E1
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _02B0
    Call _0667
    GoTo _02B0
    End

_0BCF:
    FrontierScrCmd_3E 0x40DE, 0x8008
    GoToIfEq 0x8008, 0, _0C01
    GoToIfEq 0x8000, 1, _0C03
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, 0, 0x8009
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, 1, 0x800A
    Return

_0C01:
    Return

_0C03:
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, 0, 0x8009
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, 1, 0x800A
    Return

_0C15:
    FrontierScrCmd_3E 0x40DE, 0x8008
    CallIfNe 0x8008, 0, _0C4B
    GoTo _0C30
    End

_0C30:
    FrontierScrCmd_3E 0x40DE, 0x8008
    GoToIfEq 0x8008, 3, _0C4D
    GoTo _0C55
    End

_0C4B:
    Return

_0C4D:
    GoTo _0C55
    End

_0C55:
    Return

_0C57:
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfEq 0x8008, 3, _0C74
    SetVar 0x8008, 0
    Return

_0C74:
    FrontierScrCmd_4B 0x8008
    GoToIfEq 0x8008, 1, _0C8D
    SetVar 0x8008, 0
    Return

_0C8D:
    SetVar 0x8008, 1
    Return

    .balign 4, 0
