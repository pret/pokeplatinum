# include "macros/frscrcmd.inc"
# include "res/text/bank/battle_tower_battle_room.h"
# include "res/text/bank/menu_entries.h"

    .data

    .long _00E2 - 4
    .short 0xFD13

    .balign 4, 0
_0008:
    .short 0xEEEE
    .byte 0x00
    .short 0x800F
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0010:
    .short 0x800B
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_0018:
    .short 0x0000
    .short 0xEEEE
    .byte 0x00
    .short 0x0078
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0001
    .short 0x800F
    .byte 0x03
    .short 0x0030
    .short 0x0068
    .byte 0x01
    .byte 0x01
    .short 0x0003
    .short 0x8009
    .byte 0x00
    .short 0x0080
    .short 0x00A8
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_003C:
    .short 0x0002
    .short 0x800B
    .byte 0x01
    .short 0x0080
    .short 0x0038
    .byte 0x01
    .byte 0x01
    .short 0xFD13

    .balign 4, 0
_004C:
    .short 0x0022
    .short 0x0001
    .short 0x0004
    .short 0x0001
    .short 0x0002
    .short 0x0001
    .short 0x0006
    .short 0x0003
    .short 0x0000
    .short 0x0001
    .short 0x0004
    .short 0x0003
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_006C:
    .short 0x0007
    .short 0x0003
    .short 0x0005
    .short 0x0003
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_007C:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_0084:
    .short 0x0006
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_008C:
    .short 0x0007
    .short 0x0001
    .short 0x0004
    .short 0x0002
    .short 0x0006
    .short 0x0003
    .short 0x0004
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00A0:
    .short 0x0006
    .short 0x0001
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00AC:
    .short 0x0007
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00B4:
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00BC:
    .short 0x0002
    .short 0x0001
    .short 0x0006
    .short 0x0001
    .short 0x0003
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00CC:
    .short 0x0002
    .short 0x0001
    .short 0xFD13

    .balign 4, 0
_00D4:
    .short 0x000B
    .short 0x0003
    .short 0x0009
    .short 0x0003
    .short 0x0002
    .short 0x0001
    .short 0xFD13

_00E2:
    FrontierScrCmd_6C
    FrontierScrCmd_3E 0x40D9, 0x8001
    Call _0176
    Call _018F
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfEq 0x8008, 4, _015A
    GoToIfEq 0x8008, 5, _015A
    GoTo _0168
    End

_0120:
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0018
    SetVar 0x8003, 0
    FadeScreenIn
    GoToIfEq 0x8001, 1, _01A0
    GoToIfEq 0x8001, 2, _0394
    End

_015A:
    SetVar 0x800F, 235
    GoTo _0120
    End

_0168:
    SetVar 0x800F, 231
    GoTo _0120
    End

_0176:
    GoToIfEq 0x8001, 0, _018D
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, 0, 0x8009
    Return

_018D:
    Return

_018F:
    GoToIfEq 0x8001, 3, _019E
    Return

_019E:
    Return

_01A0:
    FrontierScrCmd_3D 0x40D9, 3
    FrontierScrCmd_3E 0x40D9, 0x8001
    CallBattleTowerFunction BT_FUNC_CHECK_IS_NULL, 0, 0x8008
    GoToIfEq 0x8008, 1, _03EF
    Call _03CF
    GoTo _01CF
    End

_01CF:
    Call _046D
    GoToIfEq 0x800C, 0, _020F
    Call _0382
    GoToIfEq 0x8008, 1, _0217
    Call _034C
    Call _0360
    Call _0374
    GoTo _0741
    End

_020F:
    GoTo _02DE
    End

_0217:
    GoTo _0273
    End

_021F:
    GoTo _0227
    End

_0227:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06A7
    CallIfEq 0x8008, 1, _06AD
    ShowYesNoMenu 0x8008, MENU_NO
    CallIfEq 0x8008, 0, _0328
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS_AND_JOURNAL, 0, 0x8008
    Message BattleTowerBattleRoom_Text_BPFromTycoon
    Call _0330
    CloseMessage
    GoTo _03EF
    End

_0273:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06A7
    CallIfEq 0x8008, 1, _06AD
    ShowYesNoMenu 0x8008, MENU_NO
    CallIfEq 0x8008, 0, _0328
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS_AND_JOURNAL, 0, 0x8008
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfEq 0x8008, 5, _02D4
    Message BattleTowerBattleRoom_Text_BPEarned
    Call _0330
    CloseMessage
    GoTo _03EF
    End

_02D4:
    CloseMessage
    GoTo _03EF
    End

_02DE:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06A7
    CallIfEq 0x8008, 1, _06AD
    ShowYesNoMenu 0x8008, MENU_NO
    CallIfEq 0x8008, 0, _0320
    CloseMessage
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS, 0, 0x8008
    GoTo _03EF
    End

_0320:
    Call _0641
    Return

_0328:
    Call _0633
    Return

_0330:
    CallBattleTowerFunction BT_FUNC_UNK_46, 0, 0x8008
    BufferNumber 1, 0x8008
    BufferPlayerName 0
    Message BattleTowerBattleRoom_Text_ReceiveBP
    PlayFanfare SEQ_PL_POINTGET3
    WaitFanfare
    Return

_034C:
    FrontierScrCmd_28 2, _008C
    FrontierScrCmd_29
    FrontierScrCmd_25 2
    FrontierScrCmd_23 0x800B
    Return

_0360:
    FrontierScrCmd_28 3, _00A0
    FrontierScrCmd_28 1, _00AC
    FrontierScrCmd_29
    Return

_0374:
    Message BattleTowerBattleRoom_Text_HealPokemon
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    Return

_0382:
    CallBattleTowerFunction BT_FUNC_UNK_34, 0, 0x8008
    CallBattleTowerFunction BT_FUNC_HAS_DEFEATED_SEVEN_TRAINERS, 0, 0x8008
    Return

_0394:
    FrontierScrCmd_3D 0x40D9, 3
    FrontierScrCmd_3E 0x40D9, 0x8001
    SetVar 0x8003, 1
    CallBattleTowerFunction BT_FUNC_CHECK_IS_NULL, 0, 0x8008
    GoToIfEq 0x8008, 1, _03EF
    Call _03CF
    Call _03DB
    GoTo _0741
    End

_03CF:
    FrontierScrCmd_28 3, _004C
    FrontierScrCmd_29
    Return

_03DB:
    FrontierScrCmd_28 1, _00AC
    FrontierScrCmd_28 3, _00CC
    FrontierScrCmd_29
    Return

_03EF:
    FrontierScrCmd_6F
    WaitTime 30, 0x8008
    FrontierScrCmd_3D 0x40D8, 1
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 4, _043F
    GoToIfEq 0x8010, 5, _043F
    FadeScreenOut
    FrontierScrCmd_25 3
    FrontierScrCmd_25 1
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_02

_043F:
    FadeScreenOut
    FrontierScrCmd_25 3
    FrontierScrCmd_25 1
    FrontierScrCmd_23 0x800F
    FrontierScrCmd_02

_0459:
    FrontierScrCmd_3D 0x40D9, 0
    FrontierScrCmd_3E 0x40D9, 0x8001
    Call _046D
    End

_046D:
    CallBattleTowerFunction BT_FUNC_SET_OPPONENT_TEAMS, 0, 0x8008
    Call _04A8
    FrontierScrCmd_85 0
    WaitABPress
    CloseMessage
    Call _04C8
    FrontierScrCmd_3F 0
    CallBattleTowerFunction BT_FUNC_UNK_59, 0, 0x8008
    FrontierScrCmd_87
    FrontierScrCmd_88 0x800C
    FadeScreenIn
    Return

_04A8:
    CallBattleTowerFunction BT_FUNC_GET_OPPONENT_OBJECT_ID, 0, 0x800B
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _003C
    FrontierScrCmd_28 2, _006C
    FrontierScrCmd_29
    Return

_04C8:
    FrontierScrCmd_28 3, _007C
    FrontierScrCmd_28 2, _0084
    FrontierScrCmd_29
    Return

_04DC:
    CallBattleTowerFunction BT_FUNC_GET_NEXT_OPPONENT_NUM, 0, 0x800C
    BufferNumber 0, 0x800C
    Message BattleTowerBattleRoom_Text_AreYouReady
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfNe 0x8008, 0, _052C
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, 0x8008
    GoToIfEq 0x8008, 20, _078C
    GoToIfEq 0x8008, 48, _078C
    GoTo _052C
    End

_052C:
    GoToIfEq 0x8003, 0, _0554
    InitGlobalTextListMenu 31, 11, 0, 0, 0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 255, 0
    GoTo _0577
    End

_0554:
    InitGlobalTextListMenu 31, 9, 0, 0, 0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 255, 0
    AddListMenuEntry MenuEntries_Text_Record, 255, 1
    GoTo _0577
    End

_0577:
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Rest, 255, 2
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Retire, 255, 3
    ShowListMenu
    CloseMessage
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 0, _05CD
    GoToIfEq 0x8010, 1, _05F5
    GoToIfEq 0x8010, 2, _06B3
    GoToIfEq 0x8010, 3, _0711
    GoTo _05CD
    End

_05CD:
    Call _05E1
    SetVar 0x8003, 0
    GoTo _01CF
    End

_05E1:
    FrontierScrCmd_28 3, _00B4
    FrontierScrCmd_28 1, _00BC
    FrontierScrCmd_29
    Return

_05F5:
    FrontierScrCmd_70 0x8008
    CallIfEq 0x8008, 0, _06A7
    CallIfEq 0x8008, 1, _06AD
    ShowYesNoMenu 0x8008, MENU_NO
    GoToIfEq 0x8008, 1, _04DC
    Call _0633
    GoTo _04DC
    End

_0633:
    Call _0655
    GoTo _065F
    End

_0641:
    Call _0655
    AddVar 0x8005, 1
    GoTo _065F
    End

_0655:
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, 0x8005
    Return

_065F:
    GoTo _0667
    End

_0667:
    SetVar 0x8003, 1
    MessageInstant BattleTowerBattleRoom_Text_Saving2
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    ShowSavingIcon
    FrontierScrCmd_6D 1, 0x8008, 0x8005, 0x8005
    HideSavingIcon
    GoToIfEq 0x8005, 1, _069A
    Message BattleTowerBattleRoom_Text_VideoSaveFailed
    Return

_069A:
    PlaySoundEffect SEQ_SE_DP_SAVE
    BufferPlayerName 0
    Message BattleTowerBattleRoom_Text_BattleSaved
    Return

_06A7:
    Message BattleTowerBattleRoom_Text_SaveAsVideo
    Return

_06AD:
    Message BattleTowerBattleRoom_Text_OverwriteVideo
    Return

_06B3:
    Message BattleTowerBattleRoom_Text_SaveAndQuit
    ShowYesNoMenu 0x8008, MENU_YES
    CloseMessage
    GoToIfEq 0x8008, 0, _06D3
    GoTo _04DC
    End

_06D3:
    FrontierScrCmd_3D 0x40D8, 2
    CallBattleTowerFunction BT_FUNC_UNK_39, 0, 0x8008
    FrontierScrCmd_86
    Message BattleTowerBattleRoom_Text_Saving
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

_0711:
    Message BattleTowerBattleRoom_Text_CancelQuestion
    ShowYesNoMenu 0x8008, MENU_NO
    CloseMessage
    GoToIfEq 0x8008, 0, _0731
    GoTo _04DC
    End

_0731:
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS, 0, 0x8008
    GoTo _03EF
    End

_0741:
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, 0x8008
    GoToIfNe 0x8008, 0, _04DC
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, 0x8008
    GoToIfEq 0x8008, 20, _0780
    GoToIfEq 0x8008, 48, _0780
    GoTo _04DC
    End

_0780:
    Message BattleTowerBattleRoom_Text_TowerTycoonApproaching
    GoTo _078C
    End

_078C:
    GoToIfEq 0x8003, 0, _07B4
    InitGlobalTextListMenu 31, 11, 0, 0, 0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 255, 0
    GoTo _07D7
    End

_07B4:
    InitGlobalTextListMenu 31, 9, 0, 0, 0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 255, 0
    AddListMenuEntry MenuEntries_Text_Record, 255, 1
    GoTo _07D7
    End

_07D7:
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Rest, 255, 2
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Retire, 255, 3
    ShowListMenu
    CloseMessage
    SetVar 0x8010, 0x8008
    GoToIfEq 0x8010, 0, _082D
    GoToIfEq 0x8010, 1, _05F5
    GoToIfEq 0x8010, 2, _06B3
    GoToIfEq 0x8010, 3, _0711
    GoTo _082D
    End

_082D:
    Call _05E1
    SetVar 0x8003, 0
    CallBattleTowerFunction BT_FUNC_SET_OPPONENT_TEAMS, 0, 0x8008
    Call _092C
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, 0x8008
    GoToIfEq 0x8008, 48, _08F1
    BufferPlayerName 0
    BufferRivalName 1
    Message BattleTowerBattleRoom_Text_PalmerIntro
    GoTo _086E
    End

_086E:
    CloseMessage
    Call _04C8
    IncrementRecordValue RECORD_UNK_059
    FrontierScrCmd_47 1
    FrontierScrCmd_87
    FrontierScrCmd_88 0x800C
    FadeScreenIn
    GoToIfEq 0x800C, 0, _020F
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, 0x8008
    GoToIfEq 0x8008, 48, _08FD
    FrontierScrCmd_3E 0x404F, 0x8008
    CallIfEq 0x8008, 0, _08D9
    Message BattleTowerBattleRoom_Text_BeatPalmer
    CallBattleTowerFunction BT_FUNC_SET_BEAT_PALMER, 1, 0x8008
    GoTo _08E1
    End

_08D9:
    FrontierScrCmd_3D 0x404F, 1
    Return

_08E1:
    CloseMessage
    Call _0382
    GoTo _021F
    End

_08F1:
    Message BattleTowerBattleRoom_Text_PalmerIntroGold
    GoTo _086E
    End

_08FD:
    FrontierScrCmd_3E 0x404F, 0x8008
    CallIfEq 0x8008, 2, _0924
    Message BattleTowerBattleRoom_Text_BeatPalmerGold
    CallBattleTowerFunction BT_FUNC_SET_BEAT_PALMER, 2, 0x8008
    GoTo _08E1
    End

_0924:
    FrontierScrCmd_3D 0x404F, 3
    Return

_092C:
    SetVar 0x800B, 169
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _003C
    FrontierScrCmd_28 2, _00D4
    FrontierScrCmd_29
    Return

    .balign 4, 0
