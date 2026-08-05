# include "macros/frscrcmd.inc"
# include "res/text/bank/unk_0015.h"
# include "constants/battle_frontier.h"
# include "constants/wfc_facility_selector_functions.h"

    .data

    .long _0039 - 4
    .long _08D9 - 4
    .short 0xFD13

    .balign 4, 0
_000C:
    .short 0xEEEE
    .byte 0x00
    .short 0xEEEF
    .byte 0x00
    .short 0xFD13

    .balign 4, 0
_0014:
    .short 0x0000
    .short 0xEEEE
    .byte 0x01
    .short 0x0070
    .short 0x0070
    .byte 0x00
    .byte 0x00
    .short 0x0002
    .short 0xEEEF
    .byte 0x00
    .short 0x0070
    .short 0x0040
    .byte 0x01
    .byte 0x00
    .byte 0x00
    .short 0x0003
    .short 0xEEEF
    .byte 0x00
    .short 0x0080
    .short 0x0040
    .byte 0x01
    .byte 0x00
    .byte 0x01
    .short 0xFD13

_0039:
    HealParty
    PlayBGM SEQ_BF_TOWWER_sseq
    InitWFCFacilitySelector
    WaitTime 1, VAR_0x8008
    CallWFCFacilitySelectorFunction WFCFS_FUNC_INIT_COMM_MANAGER, 0, 0, VAR_0x8008
    WaitTime 1, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 176
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_22 _000C
    FrontierScrCmd_24 _0014
    GoTo _0070
    End

_0070:
    FadeScreenIn
    GoTo _0084
    End

_0084:
    Message WFCFacilitySelector_Text_WhichFacility
    InitLocalTextListMenu 31, 5, 0, 1, VAR_0x8008
    SetMenuXOriginSide 1
    AddListMenuEntry WFCFacilitySelector_Text_BattleTower, 255, 1
    AddListMenuEntry WFCFacilitySelector_Text_BattleFactory, 255, 2
    AddListMenuEntry WFCFacilitySelector_Text_BattleCastle, 255, 4
    AddListMenuEntry WFCFacilitySelector_Text_BattleHall, 255, 5
    AddListMenuEntry WFCFacilitySelector_Text_BattleArcade, 255, 6
    AddListMenuEntry WFCFacilitySelector_Text_Cancel, 255, 7
    ShowListMenu
    GoToIfEq VAR_0x8008, 1, _010E
    GoToIfEq VAR_0x8008, 2, _012F
    GoToIfEq VAR_0x8008, 4, _01CA
    GoToIfEq VAR_0x8008, 5, _01F1
    GoToIfEq VAR_0x8008, 6, _0218
    GoTo _023F
    End

_010E:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_SET_SELECTED_FACILITY, FACILITY_TOWER, 0, VAR_0x8008
    SetVar VAR_0x8004, FALSE
    SetVar VAR_0x8009, FACILITY_TOWER
    SetSystemVar VAR_MAP_LOCAL_0x03, 0
    GoTo _0254
    End

_012F:
    SetSystemVar VAR_BATTLE_FACTORY_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI_WFC
    SetSystemVar VAR_MAP_LOCAL_0x03, 0
    GoTo _0143
    End

_0143:
    Message WFCFacilitySelector_Text_ChooseLevel50OrOpen
    InitLocalTextMenu 31, 11, 0, TRUE, VAR_0x8008
    SetMenuXOriginSide 1
    AddMenuEntry WFCFacilitySelector_Text_Level50, 0
    AddMenuEntry WFCFacilitySelector_Text_OpenLevel, 1
    AddMenuEntry WFCFacilitySelector_Text_Cancel, 2
    ShowMenu
    GoToIfEq VAR_0x8008, 0, _0188
    GoToIfEq VAR_0x8008, 1, _01A9
    GoTo _0084
    End

_0188:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_SET_SELECTED_FACILITY, FACILITY_FACTORY, 0, VAR_0x8008
    SetVar VAR_0x8004, FALSE
    SetVar VAR_0x8009, FACILITY_FACTORY
    SetSystemVar VAR_BATTLE_FACTORY_CHALLENGE_LEVEL, 0
    GoTo _0254
    End

_01A9:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_SET_SELECTED_FACILITY, FACILITY_FACTORY_OPEN, 0, VAR_0x8008
    SetVar VAR_0x8004, FALSE
    SetVar VAR_0x8009, FACILITY_FACTORY_OPEN
    SetSystemVar VAR_BATTLE_FACTORY_CHALLENGE_LEVEL, 1
    GoTo _0254
    End

_01CA:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_SET_SELECTED_FACILITY, FACILITY_CASTLE, 0, VAR_0x8008
    SetVar VAR_0x8004, FALSE
    SetVar VAR_0x8009, FACILITY_CASTLE
    SetSystemVar VAR_BATTLE_CASTLE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI_WFC
    SetSystemVar VAR_MAP_LOCAL_0x03, 0
    GoTo _0254
    End

_01F1:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_SET_SELECTED_FACILITY, FACILITY_HALL, 0, VAR_0x8008
    SetVar VAR_0x8004, FALSE
    SetVar VAR_0x8009, FACILITY_HALL
    SetSystemVar VAR_BATTLE_HALL_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI_WFC
    SetSystemVar VAR_MAP_LOCAL_0x03, 0
    GoTo _0254
    End

_0218:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_SET_SELECTED_FACILITY, FACILITY_ARCADE, 0, VAR_0x8008
    SetVar VAR_0x8004, FALSE
    SetVar VAR_0x8009, FACILITY_ARCADE
    SetSystemVar VAR_BATTLE_ARCADE_CHALLENGE_TYPE, FRONTIER_CHALLENGE_MULTI_WFC
    SetSystemVar VAR_MAP_LOCAL_0x03, 0
    GoTo _0254
    End

_023F:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_SET_SELECTED_FACILITY, MAX_FACILITIES, 0, VAR_0x8008
    SetVar VAR_0x8004, TRUE
    GoTo _0254
    End

_0254:
    MessageNoSkip WFCFacilitySelector_Text_PleaseWait
    GoTo _0260
    End

_0260:
    SetVar VAR_0x800A, WFC_SELECTOR_COMM_DID_DROP_OUT
    WFCFacilitySelector_SendCommMessage VAR_0x800A, VAR_0x8004, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0260
    WFCFacilitySelector_WaitForCommResponses VAR_0x800A
    ClearReceivedTempDataAllPlayers
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_FACILITY, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, MAX_FACILITIES, _09C0
    CheckIfPartnerDroppedOut VAR_0x8008
    GoToIfEq VAR_0x8008, TRUE, _02B8
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 170
    ClearReceivedTempDataAllPlayers
    GoTo _02C0
    End

_02B8:
    GoTo _09AD
    End

_02C0:
    SetVar VAR_0x800A, WFC_SELECTOR_COMM_FACILITY_AND_STREAK
    WFCFacilitySelector_SendCommMessage VAR_0x800A, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _02C0
    WFCFacilitySelector_WaitForCommResponses VAR_0x800A
    ClearReceivedTempDataAllPlayers
    CheckIfSameFacilityChosen VAR_0x8009, VAR_0x8008
    GoToIfEq VAR_0x8008, TRUE, _0302
    Message WFCFacilitySelector_Text_DifferentFacilitiesChosen
    GoTo _0084
    End

_0302:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_FACILITY, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, FACILITY_TOWER, _0345
    GoToIfEq VAR_0x8008, FACILITY_HALL, _0345
    GoToIfEq VAR_0x8008, FACILITY_CASTLE, _0345
    GoToIfEq VAR_0x8008, FACILITY_ARCADE, _0345
    GoTo _0758
    End

_0345:
    Message WFCFacilitySelector_Text_ChoosePokemon
    FadeScreenOut
    CloseMessage
    CallWFCFacilitySelectorFunction WFCFS_FUNC_CLEAR_PARTY_MENU_SELECTIONS, 0, 0, VAR_0x8008
    GoTo _037E
    End

_0366:
    ManageFacilitySelectorSubApp VAR_0x8009, WFC_SELECTOR_SETUP_MON_SUMMARY, VAR_0x8008
    ManageFacilitySelectorSubApp VAR_0x8009, WFC_SELECTOR_PROCESS_MON_SUMMARY, VAR_0x8008
    GoTo _037E
    End

_037E:
    ManageFacilitySelectorSubApp VAR_0x8009, WFC_SELECTOR_SETUP_PARTY_MENU, VAR_0x8008
    ManageFacilitySelectorSubApp VAR_0x8009, WFC_SELECTOR_PROCESS_PARTY_MENU, VAR_0x8008
    GoToIfEq VAR_0x8008, 2, _0366
    GetSelectedPartyMenuSlots VAR_0x8002, VAR_0x8005
    SetSystemVar VAR_MAP_LOCAL_0x02, VAR_0x8002
    SetSystemVar VAR_MAP_LOCAL_0x05, VAR_0x8005
    FadeScreenIn
    GoTo _03C1
    End

_03C1:
    MessageNoSkip WFCFacilitySelector_Text_PleaseWait
    GoTo _03CD
    End

_03CD:
    SetVar VAR_0x800A, WFC_SELECTOR_COMM_SELECTED_MONS
    WFCFacilitySelector_SendCommMessage VAR_0x800A, VAR_0x8002, VAR_0x8005, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _03CD
    WFCFacilitySelector_WaitForCommResponses VAR_0x800A
    ClearReceivedTempDataAllPlayers
    GoToIfEq VAR_0x8002, 255, _0084
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_PARTNERS_FIRST_PICK, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _044E
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_FACILITY, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, FACILITY_TOWER, _045D
    GoToIfEq VAR_0x8008, FACILITY_HALL, _04F9
    GoToIfEq VAR_0x8008, FACILITY_CASTLE, _0620
    GoToIfEq VAR_0x8008, FACILITY_ARCADE, _06BC
    End

_044E:
    BufferPartnerName 0
    Message WFCFacilitySelector_Text_PlayerDroppedOut
    GoTo _0084
    End

_045D:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_CHECK_MON_SELECTIONS_VALID, FACILITY_TOWER, 0, VAR_0x8008
    SetVar FR_VAR_0x8010, VAR_0x8008
    GoToIfEq FR_VAR_0x8010, 1, _0499
    GoToIfEq FR_VAR_0x8010, 2, _04B4
    GoToIfEq FR_VAR_0x8010, 3, _04CF
    GoTo _0758
    End

_0499:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 0, 0, VAR_0x8008
    BufferSpeciesName 0, VAR_0x8008
    Message WFCFacilitySelector_Text_SamePokemonChosen
    GoTo _0084
    End

_04B4:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 1, 0, VAR_0x8008
    BufferSpeciesName 0, VAR_0x8008
    Message WFCFacilitySelector_Text_SamePokemonChosen
    GoTo _0084
    End

_04CF:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 0, 0, VAR_0x8008
    BufferSpeciesName 0, VAR_0x8008
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 1, 0, VAR_0x8008
    BufferSpeciesName 1, VAR_0x8008
    Message WFCFacilitySelector_Text_SameTwoPokemonChosen
    GoTo _0084
    End

_04F9:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_CHECK_MON_SELECTIONS_VALID, FACILITY_HALL, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _0614
    Call _081C
    GoToIfEq FR_VAR_0x800F, 0, _0766
    CallWFCFacilitySelectorFunction WFCFS_FUNC_CHECK_HALL_STREAK_ACTIVE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0758
    CallWFCFacilitySelectorFunction WFCFS_FUNC_CHECK_HALL_STREAK_SPECIES, 0, 0, VAR_0x800B
    BufferSpeciesName 0, VAR_0x800B
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 0, 0, VAR_0x8008
    BufferSpeciesName 1, VAR_0x8008
    GoToIfEq VAR_0x8008, VAR_0x800B, _0758
    GoTo _0567
    End

_0567:
    Message WFCFacilitySelector_Text_ConfirmStreakDeletion
    InitLocalTextMenu 25, 13, 1, TRUE, VAR_0x8008
    AddMenuEntry WFCFacilitySelector_Text_Yes, MENU_YES
    AddMenuEntry WFCFacilitySelector_Text_No, MENU_NO
    ShowMenu
    MessageNoSkip WFCFacilitySelector_Text_WaitingForFriend
    SetVar VAR_0x800B, VAR_0x8008
    GoTo _0593
    End

_0593:
    SetVar VAR_0x800A, WFC_SELECTOR_COMM_STREAK_DELETION_CHOICE
    WFCFacilitySelector_SendCommMessage VAR_0x800A, VAR_0x800B, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0593
    WFCFacilitySelector_WaitForCommResponses VAR_0x800A
    ClearReceivedTempDataAllPlayers
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_PARTNERS_STREAK_DELETION_CHOICE, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, MENU_NO, _05F9
    GoToIfEq VAR_0x8008, MENU_CANCEL, _05F9
    GoToIfEq VAR_0x800B, MENU_NO, _05F9
    GoToIfEq VAR_0x800B, MENU_CANCEL, _05F9
    GoTo _0605
    End

_05F9:
    Message WFCFacilitySelector_Text_RemakeSelection
    GoTo _0084
    End

_0605:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_CLEAR_ACTIVE_HALL_STREAK, 0, 0, VAR_0x8008
    GoTo _0758
    End

_0614:
    Message WFCFacilitySelector_Text_MustChooseSamePokemon
    GoTo _0084
    End

_0620:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_CHECK_MON_SELECTIONS_VALID, FACILITY_CASTLE, 0, VAR_0x8008
    SetVar FR_VAR_0x8010, VAR_0x8008
    GoToIfEq FR_VAR_0x8010, 1, _065C
    GoToIfEq FR_VAR_0x8010, 2, _0677
    GoToIfEq FR_VAR_0x8010, 3, _0692
    GoTo _0758
    End

_065C:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 0, 0, VAR_0x8008
    BufferSpeciesName 0, VAR_0x8008
    Message WFCFacilitySelector_Text_SamePokemonChosen2
    GoTo _0084
    End

_0677:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 1, 0, VAR_0x8008
    BufferSpeciesName 0, VAR_0x8008
    Message WFCFacilitySelector_Text_SamePokemonChosen2
    GoTo _0084
    End

_0692:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 0, 0, VAR_0x8008
    BufferSpeciesName 0, VAR_0x8008
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 1, 0, VAR_0x8008
    BufferSpeciesName 1, VAR_0x8008
    Message WFCFacilitySelector_Text_SameTwoPokemonChosen2
    GoTo _0084
    End

_06BC:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_CHECK_MON_SELECTIONS_VALID, FACILITY_ARCADE, 0, VAR_0x8008
    SetVar FR_VAR_0x8010, VAR_0x8008
    GoToIfEq FR_VAR_0x8010, 1, _06F8
    GoToIfEq FR_VAR_0x8010, 2, _0713
    GoToIfEq FR_VAR_0x8010, 3, _072E
    GoTo _0758
    End

_06F8:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 0, 0, VAR_0x8008
    BufferSpeciesName 0, VAR_0x8008
    Message WFCFacilitySelector_Text_SamePokemonChosen2
    GoTo _0084
    End

_0713:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 1, 0, VAR_0x8008
    BufferSpeciesName 0, VAR_0x8008
    Message WFCFacilitySelector_Text_SamePokemonChosen2
    GoTo _0084
    End

_072E:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 0, 0, VAR_0x8008
    BufferSpeciesName 0, VAR_0x8008
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_SPECIES, 1, 0, VAR_0x8008
    BufferSpeciesName 1, VAR_0x8008
    Message WFCFacilitySelector_Text_SameTwoPokemonChosen2
    GoTo _0084
    End

_0758:
    Call _081C
    GoTo _0766
    End

_0766:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_CLEAR_LATEST_STREAK, 0, 0, VAR_0x8008
    SetSystemVar VAR_WIFI_FRONTIER_CLEARED, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 175
    ClearReceivedTempDataAllPlayers
    MessageInstant WFCFacilitySelector_Text_Saving
    ShowSavingIcon
    FrontierScrCmd_73 VAR_0x8008
    HideSavingIcon
    PlaySoundEffect SEQ_SE_DP_SAVE_sseq
    WaitSoundEffect SEQ_SE_DP_SAVE_sseq
    MessageNoSkip WFCFacilitySelector_Text_GoodLuck
    WaitTime 10, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 171
    ClearReceivedTempDataAllPlayers
    CloseMessage
    FadeScreenOut
    FrontierScrCmd_25 0
    FrontierScrCmd_25 2
    FrontierScrCmd_25 3
    IncrementRecordValue RECORD_TIMES_STARTED_BATTLE_FRONTIER_CHALLENGE
    CallWFCFacilitySelectorFunction WFCFS_FUNC_GET_SELECTED_FACILITY, 0, 0, VAR_0x8008
    SetVar FR_VAR_0x8010, VAR_0x8008
    GoToIfEq FR_VAR_0x8010, FACILITY_TOWER, _0842
    GoToIfEq FR_VAR_0x8010, FACILITY_FACTORY, _0879
    GoToIfEq FR_VAR_0x8010, FACILITY_FACTORY_OPEN, _0879
    GoToIfEq FR_VAR_0x8010, FACILITY_HALL, _088D
    GoToIfEq FR_VAR_0x8010, FACILITY_CASTLE, _08A1
    GoToIfEq FR_VAR_0x8010, FACILITY_ARCADE, _08B5
    End

_081C:
    CallWFCFacilitySelectorFunction WFCFS_FUNC_CLEAR_STREAK_IF_NOT_MATCHING, 0, 0, VAR_0x8008
    SetVar FR_VAR_0x800F, VAR_0x8008
    CallIfEq VAR_0x8008, 0, _0838
    Return

_0838:
    Message WFCFacilitySelector_Text_WinStreaksDontMatch
    MessageNoSkip WFCFacilitySelector_Text_PleaseWait
    Return

_0842:
    InitBattleTower
    SetSystemVar VAR_BATTLE_TOWER_MULTI_BATTLE_ROOM_LOAD_ACTION, 1
    Call _08D3
    GoTo _0858
    End

_0858:
    SendTowerTrainerIDList VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _0858
    WaitForTowerTrainerIDListResponses
    Call _08C9
    FrontierScrCmd_04 FRONTIER_SCENE_TOWER_MULTI_CORRIDOR, 0
    End

_0879:
    FreeWFCFacilitySelector
    PlayBGM SEQ_PL_BF_FACTORY_sseq
    Call _08C9
    FrontierScrCmd_04 FRONTIER_SCENE_FACTORY_CORRIDOR, 0
    End

_088D:
    FreeWFCFacilitySelector
    PlayBGM SEQ_PL_BF_STAGE_sseq
    Call _08C9
    FrontierScrCmd_04 FRONTIER_SCENE_HALL_CORRIDOR, 0
    End

_08A1:
    FreeWFCFacilitySelector
    PlayBGM SEQ_PL_BF_CASTLE02_sseq
    Call _08C9
    FrontierScrCmd_04 FRONTIER_SCENE_CASTLE_CORRIDOR, 0
    End

_08B5:
    FreeWFCFacilitySelector
    PlayBGM SEQ_PL_BF_ROULETTE_sseq
    Call _08C9
    FrontierScrCmd_04 FRONTIER_SCENE_ARCADE_CORRIDOR, 0
    End

_08C9:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 173
    ClearReceivedTempDataAllPlayers
    Return

_08D3:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 174

_08D9:
    ClearReceivedTempDataAllPlayers
    Return

_08DD:
    SetWiFiListHostFriendCurrentDate
    InitWFCFacilitySelector
    WaitTime 1, VAR_0x8008
    CallWFCFacilitySelectorFunction WFCFS_FUNC_INIT_COMM_MANAGER, 0, 0, VAR_0x8008
    WaitTime 1, VAR_0x8008
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 177
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_22 _000C
    FrontierScrCmd_24 _0014
    PlayBGM SEQ_BF_TOWWER_sseq
    FadeScreenIn
    BufferPartnerName 0
    Message WFCFacilitySelector_Text_PlayAgain
    ShowYesNoMenu VAR_0x8008, MENU_YES
    GoToIfEq VAR_0x8008, MENU_YES, _0939
    GoTo _094B
    End

_0939:
    MessageNoSkip WFCFacilitySelector_Text_WaitingForFriend
    SetVar VAR_0x800B, 0
    GoTo _095D
    End

_094B:
    MessageNoSkip WFCFacilitySelector_Text_WaitingForFriend
    SetVar VAR_0x800B, 1
    GoTo _095D
    End

_095D:
    SetVar VAR_0x800A, WFC_SELECTOR_COMM_PLAY_AGAIN_CHOICE
    WFCFacilitySelector_SendCommMessage VAR_0x800A, VAR_0x800B, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 0, _095D
    WFCFacilitySelector_WaitForCommResponses VAR_0x800A
    ClearReceivedTempDataAllPlayers
    CheckIfPartnerDroppedOut VAR_0x8008
    CallWFCFacilitySelectorFunction WFCFS_FUNC_CHECK_PARTNER_PLAYING_AGAIN, 0, 0, VAR_0x8008
    GoToIfEq VAR_0x8008, 1, _09AD
    GoToIfEq VAR_0x800B, 1, _09C0
    GoTo _0084
    End

_09AD:
    BufferPartnerName 0
    MessageNoSkip WFCFacilitySelector_Text_PlayerDroppedOut2
    MessageNoSkip WFCFacilitySelector_Text_PleaseWait
    GoTo _09C0
    End

_09C0:
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 172
    ClearReceivedTempDataAllPlayers
    CloseMessage
    GoTo _09D2
    End

_09D2:
    FadeScreenOut
    FreeWFCFacilitySelector
    ClearReceivedTempDataAllPlayers
    SyncConnectedPlayers 178
    ClearReceivedTempDataAllPlayers
    FrontierScrCmd_02

    .balign 4, 0
