#include "macros/scrcmd.inc"
#include "res/text/bank/game_corner.h"

    .data

    ScriptEntry _005A
    ScriptEntry _0066
    ScriptEntry _0072
    ScriptEntry _007E
    ScriptEntry _008A
    ScriptEntry _0096
    ScriptEntry _00A2
    ScriptEntry _00AE
    ScriptEntry _00BA
    ScriptEntry _00C6
    ScriptEntry _00D2
    ScriptEntry _00DE
    ScriptEntry _013E
    ScriptEntry _0333
    ScriptEntry _0346
    ScriptEntry _03B7
    ScriptEntry _0428
    ScriptEntry _043B
    ScriptEntry _044E
    ScriptEntry _0461
    ScriptEntry _0474
    ScriptEntry _04AD
    ScriptEntryEnd

_005A:
    SetVar 0x8004, 0
    GoTo _00EA

_0066:
    SetVar 0x8004, 1
    GoTo _00EA

_0072:
    SetVar 0x8004, 2
    GoTo _00EA

_007E:
    SetVar 0x8004, 3
    GoTo _00EA

_008A:
    SetVar 0x8004, 4
    GoTo _00EA

_0096:
    SetVar 0x8004, 5
    GoTo _00EA

_00A2:
    SetVar 0x8004, 6
    GoTo _00EA

_00AE:
    SetVar 0x8004, 7
    GoTo _00EA

_00BA:
    SetVar 0x8004, 8
    GoTo _00EA

_00C6:
    SetVar 0x8004, 9
    GoTo _00EA

_00D2:
    SetVar 0x8004, 10
    GoTo _00EA

_00DE:
    SetVar 0x8004, 11
    GoTo _00EA

_00EA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckItem ITEM_COIN_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _0133
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CreateJournalEvent LOCATION_EVENT_GAME_CORNER, 0, 0, 0, 0
    ScrCmd_267 0x8004
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0133:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_013E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_WelcomeToTheVeilstoneGameCorner
    CheckItem ITEM_COIN_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _018D
    GoToIfSet FLAG_UNK_0x0130, _0198
    GoToIfSet FLAG_UNK_0x0165, GameCorner_GiveTM64
    CheckBonusRoundStreak 0x800C
    GoToIfEq 0x800C, FALSE, _0198
    GoTo GameCorner_GiveTM64
    End

_018D:
    Message GameCorner_Text_DidYouWantSomeCoins_NoCoinCase
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0198:
    ShowCoins 20, 2
    ShowMoney 20, 7
_01A4:
    Message GameCorner_Text_DidYouWantSomeCoins_1000For50Coins
    InitGlobalTextMenu 1, 1, 0, 0x800C
    AddMenuEntryImm 125, 0
    AddMenuEntryImm 126, 1
    AddMenuEntryImm 127, 2
    ShowMenu
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01E3
    GoToIfEq 0x8008, 1, _0240
    GoTo _02BB

_01E3:
    ScrCmd_071 0x800C, 0x3E8
    GoToIfEq 0x800C, 0, _029D
    GoToIfCannotAddCoins 50, _02AC
    PlayFanfare SEQ_SE_DP_REGI
    ScrCmd_334 35, 0x3E8
    ScrCmd_070 0x3E8
    UpdateMoneyDisplay
    WaitFanfare SEQ_SE_DP_REGI
    PlayFanfare SEQ_SE_PL_COIN
    AddCoins 50
    UpdateCoinDisplay
    WaitFanfare SEQ_SE_PL_COIN
    Message GameCorner_Text_DidYouWantSomeCoins_ThankYouVeryMuchHereAreYourCoins
    WaitTime 30, 0x800C
    GoTo _01A4

_0240:
    ScrCmd_071 0x800C, 0x2710
    GoToIfEq 0x800C, 0, _029D
    GoToIfCannotAddCoins 500, _02AC
    PlayFanfare SEQ_SE_DP_REGI
    ScrCmd_334 35, 0x2710
    ScrCmd_070 0x2710
    UpdateMoneyDisplay
    WaitFanfare SEQ_SE_DP_REGI
    PlayFanfare SEQ_SE_PL_COIN
    AddCoins 500
    UpdateCoinDisplay
    WaitFanfare SEQ_SE_PL_COIN
    Message GameCorner_Text_DidYouWantSomeCoins_ThankYouVeryMuchHereAreYourCoins
    WaitTime 30, 0x800C
    GoTo _01A4

_029D:
    Message GameCorner_Text_UmYouDontAppearToHaveEnoughMoney
    WaitABXPadPress
    CloseMessage
    HideCoins
    HideMoney
    ReleaseAll
    End

_02AC:
    Message GameCorner_Text_OhYourCoinCaseIsFull
    WaitABXPadPress
    CloseMessage
    HideCoins
    HideMoney
    ReleaseAll
    End

_02BB:
    Message GameCorner_Text_OhYouDontNeedCoinsThen
    WaitABXPadPress
    CloseMessage
    HideCoins
    HideMoney
    ReleaseAll
    End

GameCorner_GiveTM64:
    SetVar 0x8004, ITEM_TM64
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _0327
    GoTo _02F3
    End

_02F3:
    GoToIfSet FLAG_UNK_0x0165, _0309
    Message GameCorner_Text_TenStraightBonusRoundsOnTheSlots
    GoTo _0314
    End

_0309:
    Message GameCorner_Text_WeReStillAmazedByYourTenStraightBonusRounds
    GoTo _0314
    End

_0314:
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0130
    Message GameCorner_Text_PleaseKeepPlayingTheSlots
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0327:
    SetFlag FLAG_UNK_0x0165
    GoTo _0198
    End

_0333:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_IllEplainHowTheSlotMachinesWorkAtThisGameCorner
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0346:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_COIN_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _03A1
    GoToIfSet FLAG_UNK_0x012E, _03AC
    GoToIfCannotAddCoins 20, _03AC
    SetFlag FLAG_UNK_0x012E
    BufferPlayerName 0
    Message GameCorner_Text_IveBeenWinningATonToday
    WaitABXPadPress
    PlayFanfare SEQ_SE_PL_COIN
    AddCoins 20
    WaitFanfare SEQ_SE_PL_COIN
    CloseMessage
    ReleaseAll
    End

_03A1:
    Message GameCorner_Text_HeyKidIfYouWantToPlayHereYouNeedACoinCase
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03AC:
    Message GameCorner_Text_ListenWhenClefairyAppears
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03B7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_COIN_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _0412
    GoToIfSet FLAG_UNK_0x012F, _041D
    GoToIfCannotAddCoins 50, _041D
    SetFlag FLAG_UNK_0x012F
    BufferPlayerName 0
    Message GameCorner_Text_WooHooClefairyLookYeahahItsACarnival
    WaitABXPadPress
    PlayFanfare SEQ_SE_PL_COIN
    AddCoins 50
    WaitFanfare SEQ_SE_PL_COIN
    CloseMessage
    ReleaseAll
    End

_0412:
    Message GameCorner_Text_WooHooClefairyLookAtItItsDrivingMeBananas
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_041D:
    Message GameCorner_Text_WooHooClefairyItsAdorable
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0428:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_IWantCoinsOfCourse
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_043B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_WhenAPokeBallAppears
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_044E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_AFriendInMyGroupScoredATonOfCoinsHere
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0461:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GameCorner_Text_SighNothingGoingMyWayToday
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0474:
    GoToIfGt 0x4040, 0x3E7, _0497
    BufferNumber 0, 0x4040
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message GameCorner_Text_ShootFor10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0497:
    BufferNumber 0, 0x3E7
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message GameCorner_Text_ShootFor10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04AD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00D6, _04CB
    Message GameCorner_Text_Looker
    GoTo _04D6
    End

_04CB:
    Message GameCorner_Text_Looker_PostStarkMountain
    GoTo _04D6
    End

_04D6:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
