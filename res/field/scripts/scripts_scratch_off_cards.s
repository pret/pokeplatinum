#include "macros/scrcmd.inc"
#include "res/text/bank/scratch_off_cards.h"


    ScriptEntry ScratchOffCards_BattleFrontierAttendant
    ScriptEntryEnd

ScratchOffCards_BattleFrontierAttendant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowBattlePoints 21, 1
    GoToIfSet FLAG_TALKED_TO_SCRATCH_OFF_CARDS_ATTENDANT, ScratchOffCards_WouldYouLikeCards
    SetFlag FLAG_TALKED_TO_SCRATCH_OFF_CARDS_ATTENDANT
    BufferNumber 0, 1
    Message ScratchOffCards_Text_IntroduceScratchOffCards
    GoTo ScratchOffCards_Menu
    End

ScratchOffCards_WouldYouLikeCards:
    BufferNumber 0, 1
    Message ScratchOffCards_Text_WouldYouLikeCards
    GoTo ScratchOffCards_Menu
    End

ScratchOffCards_Menu:
    Message ScratchOffCards_Text_WillYouBuyCards
    InitLocalTextMenu 30, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm ScratchOffCards_Text_Scratch, 0
    AddMenuEntryImm ScratchOffCards_Text_Info, 1
    AddMenuEntryImm ScratchOffCards_Text_Cancel, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, ScratchOffCards_TryBuyCards
    GoToIfEq VAR_0x8008, 1, ScratchOffCards_Info
    GoTo ScratchOffCards_PleaseVisitAgain
    End

ScratchOffCards_TryBuyCards:
    BufferNumber 2, 1
    Message ScratchOffCards_Text_XBPForThreeCards
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ScratchOffCards_PleaseVisitAgain
    CheckBattlePoints 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, ScratchOffCards_NotEnoughBP
    RemoveBattlePoints 1
    UpdateBPDisplay
    Message ScratchOffCards_Text_SelectThreeCards
    FadeScreenOut
    WaitFadeScreen
    HideBattlePoints
    CloseMessage
    ScrCmd_2E2
    ScrCmd_2E4 0, VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1
    ScrCmd_2E4 1, VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_3
    ScrCmd_2E4 2, VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_5
    ScrCmd_2E3
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_0x8000, 0
    Call ScratchOffCards_GetNumCardsWon
    GoToIfEq VAR_0x8000, 0, ScratchOffCards_NoCardsWon
    BufferNumber 0, VAR_0x8000
    Message ScratchOffCards_Text_YouWonOnXCards
    CallIfNe VAR_MAP_LOCAL_1, 0, ScratchOffCards_HandleCard0Prize
    CallIfNe VAR_MAP_LOCAL_3, 0, ScratchOffCards_HandleCard1Prize
    CallIfNe VAR_MAP_LOCAL_5, 0, ScratchOffCards_HandleCard2Prize
    Message ScratchOffCards_Text_PleaseVisitAgain
    GoTo ScratchOffCards_End
    End

ScratchOffCards_NotEnoughBP:
    Message ScratchOffCards_Text_NotEnoughBP
    GoTo ScratchOffCards_HideBattlePoints
    End

ScratchOffCards_PleaseVisitAgain:
    Message ScratchOffCards_Text_PleaseVisitAgain
    GoTo ScratchOffCards_HideBattlePoints
    End

ScratchOffCards_Info:
    Message ScratchOffCards_Text_ScratchOffCardsInfo
    GoTo ScratchOffCards_Menu
    End

ScratchOffCards_HideBattlePoints:
    WaitButton
    CloseMessage
    HideBattlePoints
    ReleaseAll
    End

ScratchOffCards_End:
    WaitButton
    CloseMessage
    ReleaseAll
    End

ScratchOffCards_GetNumCardsWon:
    CallIfNe VAR_MAP_LOCAL_1, 0, ScratchOffCards_IncreaseVarCardsWon
    CallIfNe VAR_MAP_LOCAL_3, 0, ScratchOffCards_IncreaseVarCardsWon
    CallIfNe VAR_MAP_LOCAL_5, 0, ScratchOffCards_IncreaseVarCardsWon
    Return

ScratchOffCards_IncreaseVarCardsWon:
    AddVar VAR_0x8000, 1
    Return

ScratchOffCards_NoCardsWon:
    Message ScratchOffCards_Text_PleaseVisitAgain
    GoTo ScratchOffCards_End
    End

ScratchOffCards_HandleCard0Prize:
    GoToIfGt VAR_MAP_LOCAL_1, 1, ScratchOffCards_BufferCard0PrizePlural
    BufferItemName 0, VAR_MAP_LOCAL_0
    GoTo ScratchOffCards_TryGiveCard0Prize

ScratchOffCards_BufferCard0PrizePlural:
    BufferItemNamePlural 0, VAR_MAP_LOCAL_0
ScratchOffCards_TryGiveCard0Prize:
    BufferNumber 1, VAR_MAP_LOCAL_1
    GoToIfCannotFitItem VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1, VAR_RESULT, ScratchOffCards_NoRoomForItem
    PlayFanfare SEQ_FANFA4
    Message ScratchOffCards_Text_ReceivedXItems
    AddItem VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1, VAR_RESULT
    WaitFanfare
    Return

ScratchOffCards_HandleCard1Prize:
    GoToIfGt VAR_MAP_LOCAL_3, 1, ScratchOffCards_BufferCard1PrizePlural
    BufferItemName 0, VAR_MAP_LOCAL_2
    GoTo ScratchOffCards_TryGiveCard1Prize

ScratchOffCards_BufferCard1PrizePlural:
    BufferItemNamePlural 0, VAR_MAP_LOCAL_2
ScratchOffCards_TryGiveCard1Prize:
    BufferNumber 1, VAR_MAP_LOCAL_3
    GoToIfCannotFitItem VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_3, VAR_RESULT, ScratchOffCards_NoRoomForItem
    PlayFanfare SEQ_FANFA4
    Message ScratchOffCards_Text_ReceivedXItems
    AddItem VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_3, VAR_RESULT
    WaitFanfare
    Return

ScratchOffCards_HandleCard2Prize:
    GoToIfGt VAR_MAP_LOCAL_5, 1, ScratchOffCards_BufferCard2PrizePlural
    BufferItemName 0, VAR_MAP_LOCAL_4
    GoTo ScratchOffCards_TryGiveCard2Prize

ScratchOffCards_BufferCard2PrizePlural:
    BufferItemNamePlural 0, VAR_MAP_LOCAL_4
ScratchOffCards_TryGiveCard2Prize:
    BufferNumber 1, VAR_MAP_LOCAL_5
    GoToIfCannotFitItem VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_5, VAR_RESULT, ScratchOffCards_NoRoomForItem
    PlayFanfare SEQ_FANFA4
    Message ScratchOffCards_Text_ReceivedXItems
    AddItem VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_5, VAR_RESULT
    WaitFanfare
    Return

ScratchOffCards_NoRoomForItem:
    Message ScratchOffCards_Text_NoRoomForItem
    Return

    .balign 4, 0
