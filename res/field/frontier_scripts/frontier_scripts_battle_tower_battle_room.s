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
    Delay4
    WalkNorth
    FaceWest
    WalkWest 3
    FaceNorth
    WalkNorth 3
    FaceEast
    EndMovement

    .balign 4, 0
_006C:
    WalkEast 3
    WalkSouth 3
    FaceWest
    EndMovement

    .balign 4, 0
_007C:
    WalkEast
    EndMovement

    .balign 4, 0
_0084:
    WalkWest
    EndMovement

    .balign 4, 0
_008C:
    WalkEast
    WalkNorth 2
    WalkWest 3
    WalkNorth
    EndMovement

    .balign 4, 0
_00A0:
    WalkWest
    FaceWest
    EndMovement

    .balign 4, 0
_00AC:
    WalkEast
    EndMovement

    .balign 4, 0
_00B4:
    FaceEast
    EndMovement

    .balign 4, 0
_00BC:
    FaceWest
    WalkWest
    FaceEast
    EndMovement

    .balign 4, 0
_00CC:
    FaceWest
    EndMovement

    .balign 4, 0
_00D4:
    WalkSlowEast 3
    WalkSlowSouth 3
    FaceWest
    EndMovement

_00E2:
    InitNewBattleRecording
    FrontierScrCmd_3E VAR_UNK_0x40D9, VAR_0x8001
    Call _0176
    Call _018F
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_WIFI, _015A
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_5, _015A
    GoTo _0168
    End

_0120:
    FrontierScrCmd_22 _0008
    FrontierScrCmd_24 _0018
    SetVar VAR_0x8003, 0
    FadeScreenIn
    GoToIfEq VAR_0x8001, 1, _01A0
    GoToIfEq VAR_0x8001, 2, _0394
    End

_015A:
    SetVar FR_VAR_0x800F, 235
    GoTo _0120
    End

_0168:
    SetVar FR_VAR_0x800F, 231
    GoTo _0120
    End

_0176:
    GoToIfEq VAR_0x8001, 0, _018D
    CallBattleTowerFunction BT_FUNC_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_0x8009
    Return

_018D:
    Return

_018F:
    GoToIfEq VAR_0x8001, 3, _019E
    Return

_019E:
    Return

_01A0:
    FrontierScrCmd_3D VAR_UNK_0x40D9, 3
    FrontierScrCmd_3E VAR_UNK_0x40D9, VAR_0x8001
    CallBattleTowerFunction BT_FUNC_CHECK_IS_NULL, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _03EF
    Call _03CF
    GoTo _01CF
    End

_01CF:
    Call _046D
    GoToIfEq VAR_0x800C, 0, _020F
    Call _0382
    GoToIfEq VAR_0x8008, 1, _0217
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
    FrontierScrCmd_70 VAR_0x8008
    CallIfEq VAR_0x8008, 0, _06A7
    CallIfEq VAR_0x8008, 1, _06AD
    ShowYesNoMenu VAR_0x8008, MENU_NO
    CallIfEq VAR_0x8008, 0, _0328
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS_AND_JOURNAL, 0, VAR_0x8008
    Message BattleTowerBattleRoom_Text_BPFromTycoon
    Call _0330
    CloseMessage
    GoTo _03EF
    End

_0273:
    FrontierScrCmd_70 VAR_0x8008
    CallIfEq VAR_0x8008, 0, _06A7
    CallIfEq VAR_0x8008, 1, _06AD
    ShowYesNoMenu VAR_0x8008, MENU_NO
    CallIfEq VAR_0x8008, 0, _0328
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS_AND_JOURNAL, 0, VAR_0x8008
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_5, _02D4
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
    FrontierScrCmd_70 VAR_0x8008
    CallIfEq VAR_0x8008, 0, _06A7
    CallIfEq VAR_0x8008, 1, _06AD
    ShowYesNoMenu VAR_0x8008, MENU_NO
    CallIfEq VAR_0x8008, 0, _0320
    CloseMessage
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS, 0, VAR_0x8008
    GoTo _03EF
    End

_0320:
    Call _0641
    Return

_0328:
    Call _0633
    Return

_0330:
    CallBattleTowerFunction BT_FUNC_UNK_46, 0, VAR_0x8008
    BufferNumber 1, VAR_0x8008
    BufferPlayerName 0
    Message BattleTowerBattleRoom_Text_ReceiveBP
    PlayFanfare SEQ_PL_POINTGET3
    WaitFanfare
    Return

_034C:
    ApplyMovement 2, _008C
    WaitMovement
    FrontierScrCmd_25 2
    FrontierScrCmd_23 VAR_0x800B
    Return

_0360:
    ApplyMovement 3, _00A0
    ApplyMovement 1, _00AC
    WaitMovement
    Return

_0374:
    Message BattleTowerBattleRoom_Text_HealPokemon
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    Return

_0382:
    CallBattleTowerFunction BT_FUNC_UNK_34, 0, VAR_0x8008
    CallBattleTowerFunction BT_FUNC_HAS_DEFEATED_SEVEN_TRAINERS, 0, VAR_0x8008
    Return

_0394:
    FrontierScrCmd_3D VAR_UNK_0x40D9, 3
    FrontierScrCmd_3E VAR_UNK_0x40D9, VAR_0x8001
    SetVar VAR_0x8003, 1
    CallBattleTowerFunction BT_FUNC_CHECK_IS_NULL, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _03EF
    Call _03CF
    Call _03DB
    GoTo _0741
    End

_03CF:
    ApplyMovement 3, _004C
    WaitMovement
    Return

_03DB:
    ApplyMovement 1, _00AC
    ApplyMovement 3, _00CC
    WaitMovement
    Return

_03EF:
    FreeBattleRecording
    WaitTime 30, VAR_0x8008
    FrontierScrCmd_3D VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 1
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_0x8008
    SetVar FR_VAR_0x8010, VAR_0x8008
    GoToIfEq FR_VAR_0x8010, BATTLE_TOWER_MODE_WIFI, _043F
    GoToIfEq FR_VAR_0x8010, BATTLE_TOWER_MODE_5, _043F
    FadeScreenOut
    FrontierScrCmd_25 3
    FrontierScrCmd_25 1
    FrontierScrCmd_23 FR_VAR_0x800F
    FrontierScrCmd_02

_043F:
    FadeScreenOut
    FrontierScrCmd_25 3
    FrontierScrCmd_25 1
    FrontierScrCmd_23 FR_VAR_0x800F
    FrontierScrCmd_02

_0459:
    FrontierScrCmd_3D VAR_UNK_0x40D9, 0
    FrontierScrCmd_3E VAR_UNK_0x40D9, VAR_0x8001
    Call _046D
    End

_046D:
    CallBattleTowerFunction BT_FUNC_SET_OPPONENT_TEAMS, 0, VAR_0x8008
    Call _04A8
    FrontierScrCmd_85 0
    WaitABPress
    CloseMessage
    Call _04C8
    FrontierScrCmd_3F 0
    CallBattleTowerFunction BT_FUNC_UNK_59, 0, VAR_0x8008
    FrontierScrCmd_87
    CheckWonTowerBattle VAR_0x800C
    FadeScreenIn
    Return

_04A8:
    CallBattleTowerFunction BT_FUNC_GET_OPPONENT_OBJECT_ID, 0, VAR_0x800B
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _003C
    ApplyMovement 2, _006C
    WaitMovement
    Return

_04C8:
    ApplyMovement 3, _007C
    ApplyMovement 2, _0084
    WaitMovement
    Return

_04DC:
    CallBattleTowerFunction BT_FUNC_GET_NEXT_OPPONENT_NUM, 0, VAR_0x800C
    BufferNumber 0, VAR_0x800C
    Message BattleTowerBattleRoom_Text_AreYouReady
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_0x8008
    GoToIfNe VAR_0x8008, BATTLE_TOWER_MODE_SINGLE, _052C
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 20, _078C
    GoToIfEq VAR_0x8008, 48, _078C
    GoTo _052C
    End

_052C:
    GoToIfEq VAR_0x8003, 0, _0554
    InitGlobalTextListMenu 31, 11, 0, 0, VAR_0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 255, 0
    GoTo _0577
    End

_0554:
    InitGlobalTextListMenu 31, 9, 0, 0, VAR_0x8008
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
    SetVar FR_VAR_0x8010, VAR_0x8008
    GoToIfEq FR_VAR_0x8010, 0, _05CD
    GoToIfEq FR_VAR_0x8010, 1, _05F5
    GoToIfEq FR_VAR_0x8010, 2, _06B3
    GoToIfEq FR_VAR_0x8010, 3, _0711
    GoTo _05CD
    End

_05CD:
    Call _05E1
    SetVar VAR_0x8003, 0
    GoTo _01CF
    End

_05E1:
    ApplyMovement 3, _00B4
    ApplyMovement 1, _00BC
    WaitMovement
    Return

_05F5:
    FrontierScrCmd_70 VAR_0x8008
    CallIfEq VAR_0x8008, 0, _06A7
    CallIfEq VAR_0x8008, 1, _06AD
    ShowYesNoMenu VAR_0x8008, MENU_NO
    GoToIfEq VAR_0x8008, 1, _04DC
    Call _0633
    GoTo _04DC
    End

_0633:
    Call _0655
    GoTo _065F
    End

_0641:
    Call _0655
    AddVar VAR_0x8005, 1
    GoTo _065F
    End

_0655:
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, VAR_0x8005
    Return

_065F:
    GoTo _0667
    End

_0667:
    SetVar VAR_0x8003, 1
    MessageInstant BattleTowerBattleRoom_Text_Saving2
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_0x8008
    ShowSavingIcon
    FrontierScrCmd_6D 1, VAR_0x8008, VAR_0x8005, VAR_0x8005
    HideSavingIcon
    GoToIfEq VAR_0x8005, 1, _069A
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
    ShowYesNoMenu VAR_0x8008, MENU_YES
    CloseMessage
    GoToIfEq VAR_0x8008, 0, _06D3
    GoTo _04DC
    End

_06D3:
    FrontierScrCmd_3D VAR_BATTLE_TOWER_LOBBY_LOAD_ACTION, 2
    CallBattleTowerFunction BT_FUNC_UNK_39, 0, VAR_0x8008
    FreeTowerStruct
    Message BattleTowerBattleRoom_Text_Saving
    ShowSavingIcon
    FrontierScrCmd_72 VAR_0x8008
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE
    WaitSoundEffect SEQ_SE_DP_SAVE
    FadeScreenOut
    CloseMessage
    FreeBattleRecording
    CallBattleTowerFunction BT_FUNC_RESET_SYSTEM, 0, VAR_0x8008
    End

_0711:
    Message BattleTowerBattleRoom_Text_CancelQuestion
    ShowYesNoMenu VAR_0x8008, MENU_NO
    CloseMessage
    GoToIfEq VAR_0x8008, 0, _0731
    GoTo _04DC
    End

_0731:
    CallBattleTowerFunction BT_FUNC_UPDATE_GAME_RECORDS, 0, VAR_0x8008
    GoTo _03EF
    End

_0741:
    CallBattleTowerFunction BT_FUNC_GET_CHALLENGE_MODE, 0, VAR_0x8008
    GoToIfNe VAR_0x8008, BATTLE_TOWER_MODE_SINGLE, _04DC
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 20, _0780
    GoToIfEq VAR_0x8008, 48, _0780
    GoTo _04DC
    End

_0780:
    Message BattleTowerBattleRoom_Text_TowerTycoonApproaching
    GoTo _078C
    End

_078C:
    GoToIfEq VAR_0x8003, 0, _07B4
    InitGlobalTextListMenu 31, 11, 0, 0, VAR_0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 255, 0
    GoTo _07D7
    End

_07B4:
    InitGlobalTextListMenu 31, 9, 0, 0, VAR_0x8008
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
    SetVar FR_VAR_0x8010, VAR_0x8008
    GoToIfEq FR_VAR_0x8010, 0, _082D
    GoToIfEq FR_VAR_0x8010, 1, _05F5
    GoToIfEq FR_VAR_0x8010, 2, _06B3
    GoToIfEq FR_VAR_0x8010, 3, _0711
    GoTo _082D
    End

_082D:
    Call _05E1
    SetVar VAR_0x8003, 0
    CallBattleTowerFunction BT_FUNC_SET_OPPONENT_TEAMS, 0, VAR_0x8008
    Call _092C
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 48, _08F1
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
    CheckWonTowerBattle VAR_0x800C
    FadeScreenIn
    GoToIfEq VAR_0x800C, 0, _020F
    CallBattleTowerFunction BT_FUNC_UNK_36, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 48, _08FD
    FrontierScrCmd_3E VAR_BATTLE_TOWER_PRINT_STATE, VAR_0x8008
    CallIfEq VAR_0x8008, 0, _08D9
    Message BattleTowerBattleRoom_Text_BeatPalmer
    CallBattleTowerFunction BT_FUNC_SET_BEAT_PALMER, 1, VAR_0x8008
    GoTo _08E1
    End

_08D9:
    FrontierScrCmd_3D VAR_BATTLE_TOWER_PRINT_STATE, 1
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
    FrontierScrCmd_3E VAR_BATTLE_TOWER_PRINT_STATE, VAR_0x8008
    CallIfEq VAR_0x8008, 2, _0924
    Message BattleTowerBattleRoom_Text_BeatPalmerGold
    CallBattleTowerFunction BT_FUNC_SET_BEAT_PALMER, 2, VAR_0x8008
    GoTo _08E1
    End

_0924:
    FrontierScrCmd_3D VAR_BATTLE_TOWER_PRINT_STATE, 3
    Return

_092C:
    SetVar VAR_0x800B, 169
    FrontierScrCmd_22 _0010
    FrontierScrCmd_24 _003C
    ApplyMovement 2, _00D4
    WaitMovement
    Return

    .balign 4, 0
