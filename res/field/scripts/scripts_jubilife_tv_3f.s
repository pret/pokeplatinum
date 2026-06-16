#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_3f.h"
#include "res/field/events/events_jubilife_tv_3f.h"


    ScriptEntry JubilifeTV3F_Beauty1
    ScriptEntry JubilifeTV3F_Beauty2
    ScriptEntry JubilifeTV3F_GymGuide1
    ScriptEntry JubilifeTV3F_GymGuide2
    ScriptEntryEnd

JubilifeTV3F_Beauty1:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement LOCALID_BEAUTY_1, JubilifeTV3F_Movement_BeautyFaceEastGroupRankingRoom
    WaitMovement
    Message JubilifeTV3F_Text_ClosestToStairsIsGroupRankingRoom
    CloseMessage
    WaitTime 8, VAR_RESULT
    ApplyMovement LOCALID_BEAUTY_1, JubilifeTV3F_Movement_BeautyFaceWestGlobalRankingRoom
    WaitMovement
    Message JubilifeTV3F_Text_OppositeSideIsGlobalRankingRoom
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
JubilifeTV3F_Movement_BeautyFaceEastGroupRankingRoom:
    FaceEast
    EndMovement

    .balign 4, 0
JubilifeTV3F_Movement_BeautyFaceWestGlobalRankingRoom:
    FaceWest
    EndMovement

JubilifeTV3F_Beauty2:
    NPCMessage JubilifeTV3F_Text_BetterOddsOfWinningLottery
    End

JubilifeTV3F_GymGuide1:
    NPCMessage JubilifeTV3F_Text_RecordsAreFineThings
    End

JubilifeTV3F_GymGuide2:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeTV3F_Text_TellMeYourOpinionOnTV
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, JubilifeTV3F_ChooseCustomMessageWords
    GoTo JubilifeTV3F_OhAllRight

JubilifeTV3F_ChooseCustomMessageWords:
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    ChooseTwoCustomMessageWords VAR_RESULT, VAR_0x8000, VAR_0x8001
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV3F_OhAllRight
    Message JubilifeTV3F_Text_WhatFeedbackCanYouGive
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    ChooseTwoCustomMessageWords VAR_RESULT, VAR_0x8002, VAR_0x8003
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV3F_OhAllRight
    GetWallpaperFromCustomMessageWords VAR_RESULT, VAR_0x8000, VAR_0x8001, VAR_0x8002, VAR_0x8003
    GoToIfEq VAR_RESULT, 0xFF, JubilifeTV3F_CheckIsMysteryGiftPhrase
    GoToIfEq VAR_RESULT, 0, JubilifeTV3F_CheckIsMysteryGiftPhrase
    GoTo JubilifeTV3F_DealForNewPCBoxesWallpaper

JubilifeTV3F_CheckIsMysteryGiftPhrase:
    CheckIsMysteryGiftPhrase VAR_RESULT, VAR_0x8000, VAR_0x8001, VAR_0x8002, VAR_0x8003
    GoToIfEq VAR_RESULT, FALSE, JubilifeTV3F_ThanksForAnsweringMyQuestion
    GoTo JubilifeTV3F_DealForMysteryGift

JubilifeTV3F_ThanksForAnsweringMyQuestion:
    Message JubilifeTV3F_Text_ThanksForAnsweringMyQuestion
    WaitButton
    CloseMessage
    ReleaseAll
    End

JubilifeTV3F_OhAllRight:
    Message JubilifeTV3F_Text_OhAllRight
    WaitButton
    CloseMessage
    ReleaseAll
    End

JubilifeTV3F_DealForNewPCBoxesWallpaper:
    Message JubilifeTV3F_Text_DealForNewPCBoxesWallpaper
    WaitButton
    CloseMessage
    ReleaseAll
    End

JubilifeTV3F_DealForMysteryGift:
    Message JubilifeTV3F_Text_DealForMysteryGift
    WaitButton
    UnlockMysteryGift
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
