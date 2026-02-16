#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_player_house_1f.h"
#include "res/field/events/events_twinleaf_town_player_house_1f.h"


    ScriptEntry TwinleafTownPlayerHouse1F_OnTransition
    ScriptEntry TwinleafTownPlayerHouse1F_OnFrame_RivalAlreadyLeft
    ScriptEntry TwinleafTownPlayerHouse1F_OnFrame_CutsceneAfterRivalBattle
    ScriptEntry TwinleafTownPlayerHouse1F_Mom
    ScriptEntry TwinleafTownPlayerHouse1F_DontGoIntoTheTallGrassTrigger
    ScriptEntry TwinleafTownPlayerHouse1F_RivalsMom
    ScriptEntry TwinleafTownPlayerHouse1F_TV
    ScriptEntry TwinleafTownPlayerHouse1F_Fridge
    ScriptEntry TwinleafTownPlayerHouse1F_KitchenSink
    ScriptEntry TwinleafTownPlayerHouse1F_KitchenCounter
    ScriptEntry TwinleafTownPlayerHouse1F_OnFrame_Postgame
    ScriptEntryEnd

TwinleafTownPlayerHouse1F_OnTransition:
    CallIfEq VAR_PLAYER_HOUSE_STATE, 3, TwinleafTownPlayerHouse1F_SetMomPositionForCutsceneAfterRivalBattle
    CallIfSet FLAG_RECEIVED_PARCEL, TwinleafTownPlayerHouse1F_HideRivalsMom
    End

TwinleafTownPlayerHouse1F_SetMomPositionForCutsceneAfterRivalBattle:
    SetObjectEventPos LOCALID_MOM, 2, 4
    SetObjectEventDir LOCALID_MOM, DIR_NORTH
    SetObjectEventMovementType LOCALID_MOM, MOVEMENT_TYPE_LOOK_NORTH
    Return

TwinleafTownPlayerHouse1F_HideRivalsMom:
    SetFlag FLAG_HIDE_TWINLEAF_TOWN_PLAYER_HOUSE_1F_RIVAL_MOM
    Return

TwinleafTownPlayerHouse1F_OnFrame_RivalAlreadyLeft:
    LockAll
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerFaceMom
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomWalkFromCouchToPlayer
    WaitMovement
    SetFlag FLAG_TALKED_TO_MOM
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTownPlayerHouse1F_Text_RivalAlreadyLeft
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomWalkFromPlayerToCouch
    WaitMovement
    SetVar VAR_PLAYER_HOUSE_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerFaceMom:
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomWalkFromCouchToPlayer:
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    Delay8
    WalkNormalNorth
    WalkNormalEast 3
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomWalkFromPlayerToCouch:
    WalkNormalSouth 2
    WalkNormalWest 3
    WalkNormalSouth 2
    WalkOnSpotNormalNorth
    EndMovement

TwinleafTownPlayerHouse1F_OnFrame_Postgame:
    LockAll
    SetVar VAR_PLAYER_HOUSE_POSTGAME_STATE, 2
    GoToIfSet FLAG_TALKED_TO_MOM_ABOUT_RIVAL_SNOWPOINT_CITY, TwinleafTownPlayerHouse1F_PostgameRelease
    GoToIfUnset FLAG_TALKED_TO_MOM_ABOUT_NATIONAL_DEX_PROGRESS, TwinleafTownPlayerHouse1F_DoMomPostgameSequence
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, TwinleafTownPlayerHouse1F_PostgameRelease
TwinleafTownPlayerHouse1F_DoMomPostgameSequence:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerFaceMomPostgame
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomNoticePlayer
    WaitMovement
    BufferPlayerName 0
    BufferRivalName 1
    GetNationalDexEnabled VAR_RESULT
    CallIfEq VAR_RESULT, TRUE, TwinleafTownPlayerHouse1F_RivalCameLookingForYou
    CallIfEq VAR_RESULT, FALSE, TwinleafTownPlayerHouse1F_IsYourProjectComingAlong
    WaitABXPadPress
    CloseMessage
TwinleafTownPlayerHouse1F_PostgameRelease:
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_RivalCameLookingForYou:
    SetFlag FLAG_TALKED_TO_MOM_ABOUT_RIVAL_SNOWPOINT_CITY
    Message TwinleafTownPlayerHouse1F_Text_RivalCameLookingForYou
    Return

TwinleafTownPlayerHouse1F_IsYourProjectComingAlong:
    SetFlag FLAG_TALKED_TO_MOM_ABOUT_NATIONAL_DEX_PROGRESS
    Message TwinleafTownPlayerHouse1F_Text_IsYourProjectComingAlong
    Return

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerFaceMomPostgame:
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomNoticePlayer:
    WalkOnSpotNormalNorth
    EmoteExclamationMark
    EndMovement

TwinleafTownPlayerHouse1F_OnFrame_CutsceneAfterRivalBattle:
    LockAll
    WaitTime 30, VAR_RESULT
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomWalkFromKitchenToCouch
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerFollowMomToCouch
    WaitMovement
    WaitTime 30, VAR_RESULT
    BufferRivalName 0
    BufferPlayerName 1
    Message TwinleafTownPlayerHouse1F_Text_WowThatsWhatHappenedToYou
    CloseMessage
    WaitTime 30, VAR_RESULT
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_PutTheseOn
    GiveRunningShoes
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_PlayerReceivedRunningShoes
    PlaySound SEQ_FANFA4
    WaitSound
    Message TwinleafTownPlayerHouse1F_Text_LetMeReadTheInstructions
    WaitABXPadPress
    CloseMessage
    SetVar VAR_PLAYER_HOUSE_STATE, 4
    ReleaseAll
    End

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomWalkFromKitchenToCouch:
    WalkNormalWest
    FaceNorth
    Delay8 2
    WalkNormalEast 3
    WalkNormalSouth 2
    WalkNormalEast 3
    WalkNormalSouth 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerFollowMomToCouch:
    Delay8 4
    WalkOnSpotNormalEast
    Delay8 4
    WalkNormalEast 3
    WalkNormalSouth 2
    WalkNormalEast
    EndMovement

TwinleafTownPlayerHouse1F_Mom:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0002, TwinleafTownPlayerHouse1F_DoMomMessage
    GoToIfGe VAR_PLAYER_HOUSE_STATE, 7, TwinleafTownPlayerHouse1F_CallTakeAQuickRest2
    GoToIfEq VAR_PLAYER_HOUSE_STATE, 6, TwinleafTownPlayerHouse1F_EnjoyYourAdventure
    GoToIfSet FLAG_HAS_POKEDEX, TwinleafTownPlayerHouse1F_MomGiveJournal
    GoToIfGe VAR_PLAYER_HOUSE_STATE, 5, TwinleafTownPlayerHouse1F_CallTakeAQuickRest
    GoToIfGe VAR_PLAYER_HOUSE_STATE, 4, TwinleafTownPlayerHouse1F_IllReadTheInstructions
    GoToIfSet FLAG_UNK_0x00F8, TwinleafTownPlayerHouse1F_IsntRivalWaitingForYou
    GoToIfGe VAR_PLAYER_HOUSE_STATE, 2, TwinleafTownPlayerHouse1F_YouTakeCareNow
    GoToIfSet FLAG_TALKED_TO_MOM, TwinleafTownPlayerHouse1F_YouKnowHowImpatientRivalIs
    SetFlag FLAG_TALKED_TO_MOM
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTownPlayerHouse1F_Text_RivalAlreadyLeft
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_Unused:
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTownPlayerHouse1F_Text_RivalCameLookingForYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_DoMomMessage:
    GoToIfGe VAR_CANALAVE_LIBRARY_STATE, 2, TwinleafTownPlayerHouse1F_IsEverythingAllRight
    GoTo TwinleafTownPlayerHouse1F_DoMomRandomMessage
    End

TwinleafTownPlayerHouse1F_DoMomRandomMessage:
    GetRandom VAR_RESULT, 4
    GoToIfEq VAR_RESULT, 0, TwinleafTownPlayerHouse1F_YouAndYourPokemonAreLookingGood
    GoToIfEq VAR_RESULT, 1, TwinleafTownPlayerHouse1F_AlwaysTreatYourPokemonWithKindness
    GoToIfEq VAR_RESULT, 2, TwinleafTownPlayerHouse1F_SeeingYouRemindsMeOfYourFather
    GoToIfEq VAR_RESULT, 3, TwinleafTownPlayerHouse1F_WhileYoureGoneIVisitRivalsMom
    End

TwinleafTownPlayerHouse1F_IsEverythingAllRight:
    GoToIfGe VAR_EXITED_DISTORTION_WORLD_STATE, 2, TwinleafTownPlayerHouse1F_DoMomRandomMessage
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_AskIsEverythingAllRight
    GoTo TwinleafTownPlayerHouse1F_CloseMessage
    End

TwinleafTownPlayerHouse1F_YouAndYourPokemonAreLookingGood:
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_YouAndYourPokemonAreLookingGood
    GoTo TwinleafTownPlayerHouse1F_CloseMessage
    End

TwinleafTownPlayerHouse1F_AlwaysTreatYourPokemonWithKindness:
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_AlwaysTreatYourPokemonWithKindness
    GoTo TwinleafTownPlayerHouse1F_CloseMessage
    End

TwinleafTownPlayerHouse1F_SeeingYouRemindsMeOfYourFather:
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_SeeingYouRemindsMeOfYourFather
    GoTo TwinleafTownPlayerHouse1F_CloseMessage
    End

TwinleafTownPlayerHouse1F_WhileYoureGoneIVisitRivalsMom:
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTownPlayerHouse1F_Text_WhileYoureGoneIVisitRivalsMom
    GoTo TwinleafTownPlayerHouse1F_CloseMessage
    End

TwinleafTownPlayerHouse1F_CloseMessage:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_EnjoyYourAdventure:
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_EnjoyYourAdventure2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_MomGiveJournal:
    Call TwinleafTownPlayerHouse1F_TakeAQuickRest
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_YourMomsGotYourBack
    SetVar VAR_0x8004, ITEM_JOURNAL
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    GiveJournal
    Message TwinleafTownPlayerHouse1F_Text_ThatsAJournal
    GetPlayerDir VAR_0x8007
    GoToIfEq VAR_0x8007, DIR_SOUTH, TwinleafTownPlayerHouse1F_MotherTurnAwaySouth
    GoTo TwinleafTownPlayerHouse1F_MotherTurnAwayNorth
    End

TwinleafTownPlayerHouse1F_MotherTurnAwaySouth:
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MotherTurnAwaySouth
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_RivalsMomEnters
    End

TwinleafTownPlayerHouse1F_MotherTurnAwayNorth:
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MotherTurnAwayNorth
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_RivalsMomEnters
    End

TwinleafTownPlayerHouse1F_RivalsMomEnters:
    Message TwinleafTownPlayerHouse1F_Text_IWishICouldGoInstead
    FacePlayer
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_GoEnjoyYourAdventure
    CloseMessage
    PlayFanfare SEQ_SE_DP_DOOR_OPEN
    ClearFlag FLAG_HIDE_TWINLEAF_TOWN_PLAYER_HOUSE_1F_RIVAL_MOM
    AddObject LOCALID_RIVAL_MOM
    WaitFanfare SEQ_SE_DP_DOOR_OPEN
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomNoticeRivalsMom
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerFaceRivalsMom
    WaitMovement
    ApplyMovement LOCALID_RIVAL_MOM, TwinleafTownPlayerHouse1F_Movement_RivalsMomEnter
    WaitMovement
    CallIfEq VAR_0x8007, DIR_NORTH, TwinleafTownPlayerHouse1F_PlayerTurnWestToRivalsMom
    BufferRivalName 1
    Message TwinleafTownPlayerHouse1F_Text_AskIsRivalHere
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomWalkOnSpotSouth
    WaitMovement
    Message TwinleafTownPlayerHouse1F_Text_NoHesNot
    BufferRivalName 1
    Message TwinleafTownPlayerHouse1F_Text_HeMustHaveLeftAlready
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_PlayerWillDeliverThat
    GoToIfEq VAR_0x8007, DIR_NORTH, TwinleafTownPlayerHouse1F_PlayerAndMomFaceEachOtherNorth
    GoToIfEq VAR_0x8007, DIR_SOUTH, TwinleafTownPlayerHouse1F_PlayerAndMomFaceEachOtherSouth
    GoToIfEq VAR_0x8007, DIR_WEST, TwinleafTownPlayerHouse1F_PlayerAndMomFaceEachOtherWest
    GoToIfEq VAR_0x8007, DIR_EAST, TwinleafTownPlayerHouse1F_PlayerAndMomFaceEachOtherEast
    End

TwinleafTownPlayerHouse1F_PlayerTurnWestToRivalsMom:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerTurnWestToFaceRivalsMom
    WaitMovement
    Return

TwinleafTownPlayerHouse1F_PlayerAndMomFaceEachOtherNorth:
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomTurnSouthToPlayer
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerTurnNorthToMom
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_WontYouPlayer
    End

TwinleafTownPlayerHouse1F_PlayerAndMomFaceEachOtherSouth:
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomTurnNorthToPlayer
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerTurnSouthToMom
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_WontYouPlayer
    End

TwinleafTownPlayerHouse1F_PlayerAndMomFaceEachOtherWest:
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomTurnEastToPlayer
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerTurnWestToMom
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_WontYouPlayer
    End

TwinleafTownPlayerHouse1F_PlayerAndMomFaceEachOtherEast:
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomTurnWestToPlayer
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerTurnEastToMom
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_WontYouPlayer
    End

TwinleafTownPlayerHouse1F_WontYouPlayer:
    Message TwinleafTownPlayerHouse1F_Text_WontYouPlayer
    CloseMessage
    GoToIfEq VAR_0x8007, DIR_NORTH, TwinleafTownPlayerHouse1F_PlayerAndRivalsMomFaceEachOtherNorth
    GoToIfEq VAR_0x8007, DIR_SOUTH, TwinleafTownPlayerHouse1F_PlayerAndRivalsMomFaceEachOtherSouth
    GoToIfEq VAR_0x8007, DIR_WEST, TwinleafTownPlayerHouse1F_PlayerAndRivalsMomFaceEachOtherWest
    GoToIfEq VAR_0x8007, DIR_EAST, TwinleafTownPlayerHouse1F_PlayerAndRivalsMomFaceEachOtherEast
    End

TwinleafTownPlayerHouse1F_PlayerAndRivalsMomFaceEachOtherNorth:
    ApplyMovement LOCALID_RIVAL_MOM, TwinleafTownPlayerHouse1F_Movement_RivalsMomTurnEastToPlayer
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerTurnWestToRivalsMom
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_PleaseTakeThisToRivalForMe
    End

TwinleafTownPlayerHouse1F_PlayerAndRivalsMomFaceEachOtherSouth:
    ApplyMovement LOCALID_RIVAL_MOM, TwinleafTownPlayerHouse1F_Movement_RivalsMomWalkNorthToPlayer
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerTurnWestToRivalsMomWithDelay
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_PleaseTakeThisToRivalForMe
    End

TwinleafTownPlayerHouse1F_PlayerAndRivalsMomFaceEachOtherWest:
    ApplyMovement LOCALID_RIVAL_MOM, TwinleafTownPlayerHouse1F_Movement_RivalsMomWalkEastToPlayer
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerTurnSouthToRivalsMomWithDelay
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_PleaseTakeThisToRivalForMe
    End

TwinleafTownPlayerHouse1F_PlayerAndRivalsMomFaceEachOtherEast:
    ApplyMovement LOCALID_RIVAL_MOM, TwinleafTownPlayerHouse1F_Movement_RivalsMomTurnNorthToPlayer
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerTurnSouthToRivalsMom
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_PleaseTakeThisToRivalForMe
    End

TwinleafTownPlayerHouse1F_PleaseTakeThisToRivalForMe:
    BufferPlayerName 0
    BufferRivalName 1
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, TwinleafTownPlayerHouse1F_PleaseTakeThisToRivalForMeMale
    GoTo TwinleafTownPlayerHouse1F_PleaseTakeThisToRivalForMeFemale
    End

TwinleafTownPlayerHouse1F_PleaseTakeThisToRivalForMeMale:
    Message TwinleafTownPlayerHouse1F_Text_PleaseTakeThisToRivalForMeMale
    GoTo TwinleafTownPlayerHouse1F_ReceiveParcel
    End

TwinleafTownPlayerHouse1F_PleaseTakeThisToRivalForMeFemale:
    Message TwinleafTownPlayerHouse1F_Text_PleaseTakeThisToRivalForMeFemale
    GoTo TwinleafTownPlayerHouse1F_ReceiveParcel
    End

TwinleafTownPlayerHouse1F_ReceiveParcel:
    SetVar VAR_0x8004, ITEM_PARCEL
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_PARCEL
    Message TwinleafTownPlayerHouse1F_Text_EnjoyYourAdventure
    BufferRivalName 1
    Message TwinleafTownPlayerHouse1F_Text_HedProbablyHeadStraightToJubilife
    CloseMessage
    GoToIfEq VAR_0x8007, DIR_NORTH, TwinleafTownPlayerHouse1F_RivalsMomLeaveNorth
    GoToIfEq VAR_0x8007, DIR_SOUTH, TwinleafTownPlayerHouse1F_RivalsMomLeaveSouth
    GoToIfEq VAR_0x8007, DIR_WEST, TwinleafTownPlayerHouse1F_RivalsMomLeaveWest
    GoToIfEq VAR_0x8007, DIR_EAST, TwinleafTownPlayerHouse1F_RivalsMomLeaveEast
    End

TwinleafTownPlayerHouse1F_RivalsMomLeaveNorth:
    ApplyMovement LOCALID_RIVAL_MOM, TwinleafTownPlayerHouse1F_Movement_RivalsMomLeaveNorth
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerWatchRivalsMomLeaveNorth
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_RemoveRivalsMom
    End

TwinleafTownPlayerHouse1F_RivalsMomLeaveSouth:
    ApplyMovement LOCALID_RIVAL_MOM, TwinleafTownPlayerHouse1F_Movement_RivalsMomLeaveSouth
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerWatchRivalsMomLeaveSouth
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomWatchRivalsMomLeaveSouth
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_RemoveRivalsMom
    End

TwinleafTownPlayerHouse1F_RivalsMomLeaveWest:
    ApplyMovement LOCALID_RIVAL_MOM, TwinleafTownPlayerHouse1F_Movement_RivalsMomLeaveWest
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomWatchRivalsMomLeaveWest
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_RemoveRivalsMom
    End

TwinleafTownPlayerHouse1F_RivalsMomLeaveEast:
    ApplyMovement LOCALID_RIVAL_MOM, TwinleafTownPlayerHouse1F_Movement_RivalsMomLeaveEast
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerWatchRivalsMomLeaveEast
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_RemoveRivalsMom
    End

TwinleafTownPlayerHouse1F_RemoveRivalsMom:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_RIVAL_MOM
    SetVar VAR_PLAYER_HOUSE_STATE, 6
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_TakeAQuickRest:
    BufferPlayerName 0
    GetTimeOfDay VAR_RESULT
    CallIfEq VAR_RESULT, TIMEOFDAY_MORNING, TwinleafTownPlayerHouse1F_MorningTakeAQuickRest
    CallIfEq VAR_RESULT, TIMEOFDAY_DAY, TwinleafTownPlayerHouse1F_DayTakeAQuickRest
    CallIfEq VAR_RESULT, TIMEOFDAY_TWILIGHT, TwinleafTownPlayerHouse1F_TwilightTakeAQuickRest
    CallIfEq VAR_RESULT, TIMEOFDAY_NIGHT, TwinleafTownPlayerHouse1F_NightTakeAQuickRest
    CallIfEq VAR_RESULT, TIMEOFDAY_LATE_NIGHT, TwinleafTownPlayerHouse1F_LateNightTakeAQuickRest
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    FadeScreenIn
    WaitFadeScreen
    SetFlag FLAG_UNK_0x0002
    Return

TwinleafTownPlayerHouse1F_MorningTakeAQuickRest:
    Message TwinleafTownPlayerHouse1F_Text_EarlyMorningTakeAQuickRest
    Return

TwinleafTownPlayerHouse1F_DayTakeAQuickRest:
    Message TwinleafTownPlayerHouse1F_Text_TakeAQuickRest
    Return

TwinleafTownPlayerHouse1F_TwilightTakeAQuickRest:
    Message TwinleafTownPlayerHouse1F_Text_TakeAQuickRest
    Return

TwinleafTownPlayerHouse1F_NightTakeAQuickRest:
    Message TwinleafTownPlayerHouse1F_Text_JustMadeDinnerTakeAQuickRest
    Return

TwinleafTownPlayerHouse1F_LateNightTakeAQuickRest:
    Message TwinleafTownPlayerHouse1F_Text_SoLateRightNowTakeAQuickRest
    Return

TwinleafTownPlayerHouse1F_IllReadTheInstructions:
    Message TwinleafTownPlayerHouse1F_Text_IllReadTheInstructions
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_Unused2:
    BufferRivalName 0
    BufferPlayerName 1
    Message TwinleafTownPlayerHouse1F_Text_WowThatsWhatHappenedToYou
    CloseMessage
    WaitTime 30, VAR_RESULT
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_PutTheseOn
    GiveBag
    AddItem ITEM_POTION, 1, VAR_RESULT
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_PlayerReceivedRunningShoes
    PlaySound SEQ_FANFA4
    WaitSound
    Message TwinleafTownPlayerHouse1F_Text_LetMeReadTheInstructions
    WaitABXPadPress
    CloseMessage
    SetVar VAR_PLAYER_HOUSE_STATE, 4
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_IsntRivalWaitingForYou:
    BufferRivalName 0
    Message TwinleafTownPlayerHouse1F_Text_IsntRivalWaitingForYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_YouTakeCareNow:
    SetFlag FLAG_UNK_0x00F8
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_YouTakeCareNow
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_YouKnowHowImpatientRivalIs:
    BufferRivalName 0
    Message TwinleafTownPlayerHouse1F_Text_YouKnowHowImpatientRivalIs
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_CallTakeAQuickRest:
    Call TwinleafTownPlayerHouse1F_TakeAQuickRest
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_CallTakeAQuickRest2:
    Call TwinleafTownPlayerHouse1F_TakeAQuickRest
    ReleaseAll
    End

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MotherTurnAwaySouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MotherTurnAwayNorth:
    WalkOnSpotNormalNorth
    EndMovement

TwinleafTownPlayerHouse1F_Movement_Unused:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomNoticeRivalsMom:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomTurnSouthToPlayer:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomTurnNorthToPlayer:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomTurnEastToPlayer:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomTurnWestToPlayer:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomWatchRivalsMomLeaveSouth:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomWatchRivalsMomLeaveWest:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_RivalsMomEnter:
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_RivalsMomTurnEastToPlayer:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_RivalsMomWalkNorthToPlayer:
    WalkNormalNorth 2
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_RivalsMomWalkEastToPlayer:
    WalkNormalEast 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_RivalsMomTurnNorthToPlayer:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_RivalsMomLeaveNorth:
    WalkNormalSouth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_RivalsMomLeaveSouth:
    WalkNormalSouth 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_RivalsMomLeaveWest:
    WalkNormalWest 2
    WalkNormalSouth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_RivalsMomLeaveEast:
    WalkNormalSouth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerFaceRivalsMom:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerTurnWestToFaceRivalsMom:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerTurnNorthToMom:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerTurnSouthToMom:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerTurnWestToMom:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerTurnEastToMom:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerTurnWestToRivalsMom:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerTurnWestToRivalsMomWithDelay:
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerTurnSouthToRivalsMomWithDelay:
    Delay8 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerTurnSouthToRivalsMom:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerWatchRivalsMomLeaveNorth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerWatchRivalsMomLeaveSouth:
    WalkOnSpotNormalSouth
    EndMovement

TwinleafTownPlayerHouse1F_Movement_Unused2:
    Delay8 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerWatchRivalsMomLeaveEast:
    WalkOnSpotNormalSouth
    EndMovement

TwinleafTownPlayerHouse1F_DontGoIntoTheTallGrassTrigger:
    LockAll
    GoTo TwinleafTownPlayerHouse1F_PlayerAndMomFaceEachOther
    End

TwinleafTownPlayerHouse1F_PlayerAndMomFaceEachOther:
    ApplyMovement LOCALID_PLAYER, TwinleafTownPlayerHouse1F_Movement_PlayerAtDoorFaceMom
    ApplyMovement LOCALID_MOM, TwinleafTownPlayerHouse1F_Movement_MomFacePlayerAtDoor
    WaitMovement
    GoTo TwinleafTownPlayerHouse1F_DontGoIntoTheTallGrass
    End

TwinleafTownPlayerHouse1F_DontGoIntoTheTallGrass:
    SetVar VAR_PLAYER_HOUSE_STATE, 2
    BufferPlayerName 0
    Message TwinleafTownPlayerHouse1F_Text_DontGoIntoTheTallGrass
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_PlayerAtDoorFaceMom:
    Delay8 2
    WalkOnSpotNormalNorth
    EndMovement

TwinleafTownPlayerHouse1F_Movement_Unused3:
    Delay4 2
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
TwinleafTownPlayerHouse1F_Movement_MomFacePlayerAtDoor:
    WalkOnSpotNormalSouth
    EndMovement

TwinleafTownPlayerHouse1F_Movement_Unused4:
    WalkOnSpotNormalSouth
    WalkNormalWest 2
    WalkNormalSouth
    EndMovement

TwinleafTownPlayerHouse1F_RivalsMom:
    BufferRivalName 1
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message TwinleafTownPlayerHouse1F_Text_HedProbablyHeadStraightToJubilife
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_TV:
    GetTimeOfDay VAR_RESULT
    GoToIfEq VAR_RESULT, TIMEOFDAY_MORNING, TwinleafTownPlayerHouse1F_CuteContestDigest
    GoToIfEq VAR_RESULT, TIMEOFDAY_DAY, TwinleafTownPlayerHouse1F_SmartContestDigest
    GoToIfEq VAR_RESULT, TIMEOFDAY_TWILIGHT, TwinleafTownPlayerHouse1F_SmartContestDigest
    GoToIfEq VAR_RESULT, TIMEOFDAY_NIGHT, TwinleafTownPlayerHouse1F_ToughContestDigest
    GoToIfEq VAR_RESULT, TIMEOFDAY_LATE_NIGHT, TwinleafTownPlayerHouse1F_ToughContestDigest
    End

TwinleafTownPlayerHouse1F_CuteContestDigest:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message TwinleafTownPlayerHouse1F_Text_CuteContestDigest
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_SmartContestDigest:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message TwinleafTownPlayerHouse1F_Text_SmartContestDigest
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_ToughContestDigest:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message TwinleafTownPlayerHouse1F_Text_ToughContestDigest
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_Fridge:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message TwinleafTownPlayerHouse1F_Text_MomsFavoriteDessertIsInRefrigerator
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_KitchenSink:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message TwinleafTownPlayerHouse1F_Text_MomsKitchenIsSpotless
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownPlayerHouse1F_KitchenCounter:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message TwinleafTownPlayerHouse1F_Text_ThisIsWhereMomDoesHerDeliciousCooking
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
