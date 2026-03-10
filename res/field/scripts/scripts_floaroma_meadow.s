#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_meadow.h"
#include "res/field/events/events_floaroma_meadow.h"


    ScriptEntry FloaromaMeadow_OnTransition
    ScriptEntry FloaromaMeadow_TriggerGrunts
    ScriptEntry FloaromaMeadow_UnusedGrunt
    ScriptEntry FloaromaMeadow_UnusedGrunt
    ScriptEntry FloaromaMeadow_PokefanM
    ScriptEntry FloaromaMeadow_UnusedArrowSign
    ScriptEntry FloaromaMeadow_ItemWorksKey
    ScriptEntryEnd

FloaromaMeadow_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_FLOAROMA_MEADOW
    End

FloaromaMeadow_TriggerGrunts:
    LockAll
    Call FloaromaMeadow_GruntsNoticePlayer
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_FLOAROMA_MEADOW_1
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, FloaromaMeadow_BlackOut
    Call FloaromaMeadow_DefeatedGrunt1
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_FLOAROMA_MEADOW_2
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, FloaromaMeadow_BlackOut
    Call FloaromaMeadow_DefeatedGrunts
    SetFlag FLAG_ALT_MUSIC_FLOAROMA_MEADOW
    ReleaseAll
    End

FloaromaMeadow_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
FloaromaMeadow_Movement_GruntNoticePlayer:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
FloaromaMeadow_Movement_GruntWestWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
FloaromaMeadow_Movement_GruntWestWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

FloaromaMeadow_UnusedMovement:
    WalkNormalNorth 9
    EndMovement

FloaromaMeadow_UnusedMovement2:
    WalkNormalNorth 9
    EndMovement

    .balign 4, 0
FloaromaMeadow_Movement_PokefanMWalkToPlayerX12:
    WalkNormalSouth
    WalkOnSpotNormalEast
    Delay8 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
FloaromaMeadow_Movement_PokefanMWalkToPlayerX13:
    WalkNormalSouth
    WalkOnSpotNormalEast
    Delay8 3
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

FloaromaMeadow_GruntsNoticePlayer:
    Message FloaromaMeadow_Text_EnoughArguingHandOverThatSweetHoney
    Message FloaromaMeadow_Text_DoAsWeSayTeamGalacticWillHaveThatHoney
    ApplyMovement LOCALID_GRUNT_M_WEST, FloaromaMeadow_Movement_GruntNoticePlayer
    ApplyMovement LOCALID_GRUNT_M_EAST, FloaromaMeadow_Movement_GruntNoticePlayer
    WaitMovement
    Message FloaromaMeadow_Text_HeyThisKidIsAWitnessWhatllWeDo
    Message FloaromaMeadow_Text_TheSolutionsSimpleWeEnsureTheBratStaysQuiet
    CloseMessage
    Return

FloaromaMeadow_DefeatedGrunt1:
    ApplyMovement LOCALID_GRUNT_M_WEST, FloaromaMeadow_Movement_GruntWestWalkOnSpotEast
    WaitMovement
    Message FloaromaMeadow_Text_ThisIsSoLameTheyreGoingToDockMyPay
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_WEST, FloaromaMeadow_Movement_GruntWestWalkOnSpotSouth
    WaitMovement
    Message FloaromaMeadow_Text_ImUpNextHeheheh
    CloseMessage
    Return

FloaromaMeadow_DefeatedGrunts:
    Message FloaromaMeadow_Text_WereDoneForHereLetsGetBackToTheValleyWindworks
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    RemoveObject LOCALID_GRUNT_M_WEST
    RemoveObject LOCALID_GRUNT_M_EAST
    SetVar VAR_FLOAROMA_MEADOW_STATE, 1
    FadeScreenIn
    WaitFadeScreen
    ClearFlag FLAG_HIDE_FLOAROMA_MEADOW_WORKS_KEY
    AddObject LOCALID_ITEM_WORKS_KEY
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 12, FloaromaMeadow_PokefanMWalkToPlayerX12
    CallIfEq VAR_0x8004, 13, FloaromaMeadow_PokefanMWalkToPlayerX13
    RemoveObject LOCALID_ITEM_WORKS_KEY
    Message FloaromaMeadow_Text_ItsAWorksKeyItMustBeForTheValleyWindworks
    SetVar VAR_0x8004, ITEM_WORKS_KEY
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_OBTAINED_FLOAROMA_MEADOW_WORKS_KEY
    Message FloaromaMeadow_Text_INeedToThankYouThisSweetSweetHoneyGoOnTakeAWholeLot
    SetVar VAR_0x8004, ITEM_HONEY
    SetVar VAR_0x8005, 10
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, FloaromaMeadow_CantGiveHoneyBagIsFull
    Common_GiveItemQuantity
    Message FloaromaMeadow_Text_SlatherThatHoneyOnASweetSmellingTree
    GoTo FloaromaMeadow_DefeatedGruntsReturn

FloaromaMeadow_CantGiveHoneyBagIsFull:
    Message FloaromaMeadow_Text_OhTooBadSeemsToMeYourBagsFull
FloaromaMeadow_DefeatedGruntsReturn:
    SetFlag FLAG_DEFEATED_FLOAROMA_MEADOW_GRUNTS
    WaitABXPadPress
    CloseMessage
    Return

FloaromaMeadow_PokefanMWalkToPlayerX12:
    ApplyMovement LOCALID_POKEFAN_M, FloaromaMeadow_Movement_PokefanMWalkToPlayerX12
    WaitMovement
    Return

FloaromaMeadow_PokefanMWalkToPlayerX13:
    ApplyMovement LOCALID_POKEFAN_M, FloaromaMeadow_Movement_PokefanMWalkToPlayerX13
    WaitMovement
    Return

FloaromaMeadow_Unused:
    BlackOutFromBattle
    ReleaseAll
    End

FloaromaMeadow_UnusedGrunt:
    End

FloaromaMeadow_PokefanM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message FloaromaMeadow_Text_WouldYouLikeToBuySomeHoneyForAttractingPokemon
    ShowMoney 20, 2
    GoTo FloaromaMeadow_ShowMenuHoney
    End

FloaromaMeadow_ShowMenuHoney:
    InitLocalTextMenu 30, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm FloaromaMeadow_Text_Times1, 0
    AddMenuEntryImm FloaromaMeadow_Text_Times10, 1
    AddMenuEntryImm FloaromaMeadow_Text_NoThanks, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, FloaromaMeadow_TryBuy1Honey
    GoToIfEq VAR_0x8008, 1, FloaromaMeadow_TryBuy10Honey
    GoToIfEq VAR_0x8008, 2, FloaromaMeadow_OopsyWellComeAgain
    GoTo FloaromaMeadow_OopsyWellComeAgain
    End

FloaromaMeadow_TryBuy1Honey:
    GoToIfNotEnoughMoney 100, FloaromaMeadow_OopsyYouDontHaveEnoughMoney
    SetVar VAR_0x8005, 1
    SetVar VAR_0x8006, 100
    GoTo FloaromaMeadow_TryGiveHoney
    End

FloaromaMeadow_TryBuy10Honey:
    GoToIfNotEnoughMoney 1000, FloaromaMeadow_OopsyYouDontHaveEnoughMoney
    SetVar VAR_0x8005, 10
    SetVar VAR_0x8006, 1000
    GoTo FloaromaMeadow_TryGiveHoney
    End

FloaromaMeadow_TryGiveHoney:
    SetVar VAR_0x8004, ITEM_HONEY
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, FloaromaMeadow_CantBuyHoneyBagIsFull
    RemoveMoney2 VAR_0x8006
    UpdateMoneyDisplay
    PlayFanfare SEQ_SE_DP_REGI
    WaitFanfare SEQ_SE_DP_REGI
    Common_GiveItemQuantityNoLineFeed
    HideMoney
    CloseMessage
    ReleaseAll
    End

FloaromaMeadow_OopsyWellComeAgain:
    Message FloaromaMeadow_Text_OopsyWellComeAgain
    WaitABXPadPress
    HideMoney
    CloseMessage
    ReleaseAll
    End

FloaromaMeadow_CantBuyHoneyBagIsFull:
    Message FloaromaMeadow_Text_OhTooBadSeemsToMeYourBagsFull
    WaitABXPadPress
    HideMoney
    CloseMessage
    ReleaseAll
    End

FloaromaMeadow_OopsyYouDontHaveEnoughMoney:
    Message FloaromaMeadow_Text_OopsyYouDontHaveEnoughMoney
    WaitABXPadPress
    HideMoney
    CloseMessage
    ReleaseAll
    End

FloaromaMeadow_UnusedArrowSign:
    ShowArrowSign FloaromaMeadow_Text_Dummy18
    End

FloaromaMeadow_ItemWorksKey:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_0x8004, ITEM_WORKS_KEY
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    CloseMessage
    SetFlag FLAG_OBTAINED_FLOAROMA_MEADOW_WORKS_KEY
    RemoveObject LOCALID_ITEM_WORKS_KEY
    ReleaseAll
    End
