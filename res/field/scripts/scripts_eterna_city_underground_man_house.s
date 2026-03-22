#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_underground_man_house.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_eterna_city_underground_man_house.h"
#include "generated/goods.h"
#include "generated/sphere_types.h"
#include "generated/traps.h"


    ScriptEntry EternaCityUndergroundManHouse_UndergroundMan
    ScriptEntry EternaCityUndergroundManHouse_Youngster
    ScriptEntry EternaCityUndergroundManHouse_ScientistM
    ScriptEntry EternaCityUndergroundManHouse_Sign
    ScriptEntry EternaCityUndergroundManHouse_PC
    ScriptEntry EternaCityUndergroundManHouse_BugCatcher
    ScriptEntryEnd

EternaCityUndergroundManHouse_UndergroundMan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_CURRENT_UNDERGROUND_MISSION, 9, EternaCityUndergroundManHouse_FromNowOnYouAreTheSpelunkingMaster
    GoToIfSet FLAG_ACCEPTED_UNDERGROUND_MAN_AS_MENTOR, EternaCityUndergroundManHouse_GoToCurrentMission
    GoToIfSet FLAG_EXPLORER_KIT_RECEIVED, EternaCityUndergroundManHouse_LetMeMentorYouAsYouBecomeAFullFledgedSpelunker
    Message EternaCityUndergroundManHouse_Text_YouCanCallMeTheUndergroundManIllMakeAGiftOfThisToYou
    SetVar VAR_0x8004, ITEM_EXPLORER_KIT
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_EXPLORER_KIT_RECEIVED
    ClearFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    Message EternaCityUndergroundManHouse_Text_LetMeMentorYouIntoBecomingAFullFledgedSpelunker
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, EternaCityUndergroundManHouse_ICantForceYouToAcceptMyProposalIfYoureNotInclined
    SetFlag FLAG_ACCEPTED_UNDERGROUND_MAN_AS_MENTOR
    GoTo EternaCityUndergroundManHouse_GoToCurrentMission

EternaCityUndergroundManHouse_LetMeMentorYouAsYouBecomeAFullFledgedSpelunker:
    Message EternaCityUndergroundManHouse_Text_LetMeMentorYouAsYouBecomeAFullFledgedSpelunker
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, EternaCityUndergroundManHouse_ICantForceYouToAcceptMyProposalIfYoureNotInclined
    SetFlag FLAG_ACCEPTED_UNDERGROUND_MAN_AS_MENTOR
    GoTo EternaCityUndergroundManHouse_GoToCurrentMission

EternaCityUndergroundManHouse_ICantForceYouToAcceptMyProposalIfYoureNotInclined:
    Message EternaCityUndergroundManHouse_Text_ICantForceYouToAcceptMyProposalIfYoureNotInclined
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_SoMySpelunkerAreYouGoingUndergroundWithYourFriends:
    Message EternaCityUndergroundManHouse_Text_SoMySpelunkerAreYouGoingUndergroundWithYourFriends
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_FromNowOnYouAreTheSpelunkingMaster:
    Message EternaCityUndergroundManHouse_Text_FromNowOnYouAreTheSpelunkingMaster
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_StartMissionGoUnderground:
    SetFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    Message EternaCityUndergroundManHouse_Text_IWillTeachYouByAssigningMissionsFirstGoUnderground
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_StartMissionDigUpTreasureOrSpheres:
    SetFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    Message EternaCityUndergroundManHouse_Text_ForMyNextTestIWantYouToDigUpSomeTreasureOrSpheresForMe
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_StartMissionBurySpheres:
    SetFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    Message EternaCityUndergroundManHouse_Text_IWantYouToGoBuryTheseStrangeSpheresInTheUnderground
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_StartMissionMakeASecretBase:
    SetFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    Message EternaCityUndergroundManHouse_Text_YourNextAssignmentIsGoMakeYourOwnSecretBase
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_StartMissionDecorateASecretBase:
    SetFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    Message EternaCityUndergroundManHouse_Text_ForMyFinalTestIWantYouToDecorateYourSecretBase
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_StartMissionStealAFlag:
    SetFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    Message EternaCityUndergroundManHouse_Text_IfYouInsistThereIsOneMoreThingIShouldTellYou
    CloseMessage
    Call EternaCityUndergroundManHouse_UndergroundManWalkAround
    Message EternaCityUndergroundManHouse_Text_StealYourFriendsFlagIfYouCanDoThatIWillPermitYouToMoveBoulders
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_DidNotYetCompleteMissionGoUnderground:
    Message EternaCityUndergroundManHouse_Text_ToGetDownToTheUndergroundTunnelsYouNeedOnlyToUseYourExplorerKit
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_DidNotYetCompleteMissionDigUpTreasureOrSpheres:
    Message EternaCityUndergroundManHouse_Text_YouveNotLocatedAnyTreasureOrSpheresYet
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_DidNotYetCompleteMissionBurySpheres:
    Message EternaCityUndergroundManHouse_Text_YouveNotBuriedTheSpheresYet
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_DidNotYetCompleteMissionMakeASecretBase:
    Message EternaCityUndergroundManHouse_Text_HmYouDontKnowHowToUseTheDiggerDrill
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_DidNotYetCompleteMissionDecorateYourSecretBase:
    Message EternaCityUndergroundManHouse_Text_AhHaveIFinallyManagedToStumpYou
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_DidNotYetCompleteMissionStealAFlag:
    Message EternaCityUndergroundManHouse_Text_IfYouManageToStealAFlagYouBeSureToComeShowMe
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_GoToCurrentMission:
    GoToIfEq VAR_CURRENT_UNDERGROUND_MISSION, 0, EternaCityUndergroundManHouse_MissionGoUnderground
    GoToIfEq VAR_CURRENT_UNDERGROUND_MISSION, 1, EternaCityUndergroundManHouse_MissionDigUpTreasureOrSpheres
    GoToIfEq VAR_CURRENT_UNDERGROUND_MISSION, 2, EternaCityUndergroundManHouse_MissionBurySpheres
    GoToIfEq VAR_CURRENT_UNDERGROUND_MISSION, 3, EternaCityUndergroundManHouse_MissionMakeASecretBase
    GoToIfEq VAR_CURRENT_UNDERGROUND_MISSION, 4, EternaCityUndergroundManHouse_MissionDecorateYourSecretBase
    GoToIfEq VAR_CURRENT_UNDERGROUND_MISSION, 5, EternaCityUndergroundManHouse_MissionStealAFlag
    GoToIfEq VAR_CURRENT_UNDERGROUND_MISSION, 6, EternaCityUndergroundManHouse_MissionStealThreeFlags
    GoToIfEq VAR_CURRENT_UNDERGROUND_MISSION, 7, EternaCityUndergroundManHouse_MissionStealTenFlags
    GoToIfEq VAR_CURRENT_UNDERGROUND_MISSION, 8, EternaCityUndergroundManHouse_MissionStealFiftyFlags
    GoTo EternaCityUndergroundManHouse_FromNowOnYouAreTheSpelunkingMaster

EternaCityUndergroundManHouse_MissionGoUnderground:
    GoToIfUnset FLAG_HAS_ACTIVE_UNDERGROUND_MISSION, EternaCityUndergroundManHouse_StartMissionGoUnderground
    GoToIfUnset FLAG_ENTERED_UNDERGROUND, EternaCityUndergroundManHouse_DidNotYetCompleteMissionGoUnderground
    SetVar VAR_CURRENT_UNDERGROUND_MISSION, 1
    ClearFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    Message EternaCityUndergroundManHouse_Text_ISeeThatYouveGoneDownToTheUndergroundTunnelsTakeTheseAsRewards
    SetVar VAR_0x8004, TRAP_MOVE_UP
    SetVar VAR_0x8005, 1
    Common_ObtainUndergroundTrap
    SetVar VAR_0x8004, TRAP_BUBBLE
    SetVar VAR_0x8005, 1
    Common_ObtainUndergroundTrap
    SetVar VAR_0x8004, TRAP_LEAF
    SetVar VAR_0x8005, 1
    Common_ObtainUndergroundTrap
    Message EternaCityUndergroundManHouse_Text_ThoseAreCalledTraps
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_MissionDigUpTreasureOrSpheres:
    GoToIfUnset FLAG_HAS_ACTIVE_UNDERGROUND_MISSION, EternaCityUndergroundManHouse_StartMissionDigUpTreasureOrSpheres
    GoToIfUnset FLAG_DIGGING_FOR_FOSSILS, EternaCityUndergroundManHouse_DidNotYetCompleteMissionDigUpTreasureOrSpheres
    SetVar VAR_CURRENT_UNDERGROUND_MISSION, 2
    ClearFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    Message EternaCityUndergroundManHouse_Text_YouDugUpWhatIWasLookingForTakeTheseAsYourReward
    SetVar VAR_0x8004, SPHERE_PRISM
    SetVar VAR_0x8005, 1
    Common_ObtainUndergroundSphere
    SetVar VAR_0x8004, SPHERE_RED
    SetVar VAR_0x8005, 1
    Common_ObtainUndergroundSphere
    SetVar VAR_0x8004, SPHERE_BLUE
    SetVar VAR_0x8005, 1
    Common_ObtainUndergroundSphere
    Message EternaCityUndergroundManHouse_Text_DigInTheWallsOfTheUndergroundTunnelsToUnearthHiddenStuff
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_MissionBurySpheres:
    GoToIfUnset FLAG_HAS_ACTIVE_UNDERGROUND_MISSION, EternaCityUndergroundManHouse_StartMissionBurySpheres
    GoToIfUnset FLAG_SPHERE_ACQUIRED, EternaCityUndergroundManHouse_DidNotYetCompleteMissionBurySpheres
    SetVar VAR_CURRENT_UNDERGROUND_MISSION, 3
    ClearFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    Message EternaCityUndergroundManHouse_Text_YouveBuriedYourSpheresThisIsYourReward
    SetVar VAR_0x8004, TRAP_DIGGER_DRILL
    SetVar VAR_0x8005, 1
    Common_ObtainUndergroundTrap
    Message EternaCityUndergroundManHouse_Text_YouMayHaveSeenThemAlreadyButTheseAreSphereCollectors
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_MissionMakeASecretBase:
    GoToIfUnset FLAG_HAS_ACTIVE_UNDERGROUND_MISSION, EternaCityUndergroundManHouse_StartMissionMakeASecretBase
    GoToIfUnset FLAG_CREATED_SECRET_BASE, EternaCityUndergroundManHouse_DidNotYetCompleteMissionMakeASecretBase
    SetVar VAR_CURRENT_UNDERGROUND_MISSION, 4
    ClearFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    Message EternaCityUndergroundManHouse_Text_AhYouveMadeYourSecretBaseTakeTheseAsYourReward
    SetVar VAR_0x8004, UG_GOOD_PLAIN_TABLE
    SetVar VAR_0x8005, 1
    Common_SendToUndergroundPCWithLinefeed
    SetVar VAR_0x8004, UG_GOOD_WOODEN_CHAIR
    SetVar VAR_0x8005, 1
    Common_SendToUndergroundPCWithLinefeed
    SetVar VAR_0x8004, UG_GOOD_SMALL_BOOKSHELF
    SetVar VAR_0x8005, 1
    Common_SendToUndergroundPCWithLinefeed
    SetVar VAR_0x8004, UG_GOOD_BUNEARY_DOLL
    SetVar VAR_0x8005, 1
    Common_SendToUndergroundPCWithLinefeed
    Message EternaCityUndergroundManHouse_Text_IncidentallyADiggerDrillCanBeUsedOnlyOnce
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_MissionDecorateYourSecretBase:
    GoToIfUnset FLAG_HAS_ACTIVE_UNDERGROUND_MISSION, EternaCityUndergroundManHouse_StartMissionDecorateASecretBase
    GoToIfUnset FLAG_DECORATED_SECRET_BASE, EternaCityUndergroundManHouse_DidNotYetCompleteMissionDecorateYourSecretBase
    SetVar VAR_CURRENT_UNDERGROUND_MISSION, 5
    ClearFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    ClearFlag FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD
    Message EternaCityUndergroundManHouse_Text_AhYouveEvenManagedToDecorateYourSecretBaseThisIsYourReward
    Call EternaCityUndergroundManHouse_SendStarterDollToUndergroundPC
    Message EternaCityUndergroundManHouse_Text_ThereAreWaysOfCollectingMoreDecorationGoods
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_SendStarterDollToUndergroundPC:
    GetPlayerStarterSpecies VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, EternaCityUndergroundManHouse_SendChimcharDollToUndergroundPC
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, EternaCityUndergroundManHouse_SendTurtwigDollToUndergroundPC
    GoTo EternaCityUndergroundManHouse_SendPiplupDollToUndergroundPC

EternaCityUndergroundManHouse_SendChimcharDollToUndergroundPC:
    SetVar VAR_0x8004, UG_GOOD_CHIMCHAR_DOLL
    SetVar VAR_0x8005, 1
    Common_SendToUndergroundPCWithLinefeed
    Return

EternaCityUndergroundManHouse_SendTurtwigDollToUndergroundPC:
    SetVar VAR_0x8004, UG_GOOD_TURTWIG_DOLL
    SetVar VAR_0x8005, 1
    Common_SendToUndergroundPCWithLinefeed
    Return

EternaCityUndergroundManHouse_SendPiplupDollToUndergroundPC:
    SetVar VAR_0x8004, UG_GOOD_PIPLUP_DOLL
    SetVar VAR_0x8005, 1
    Common_SendToUndergroundPCWithLinefeed
    Return

EternaCityUndergroundManHouse_MissionStealAFlag:
    GoToIfUnset FLAG_HAS_ACTIVE_UNDERGROUND_MISSION, EternaCityUndergroundManHouse_StartMissionStealAFlag
    GoToIfUnset FLAG_DELIVERED_STOLEN_FLAG, EternaCityUndergroundManHouse_DidNotYetCompleteMissionStealAFlag
    CallIfSet FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD, EternaCityUndergroundManHouse_HmThisBelongsToYou
    CallIfUnset FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD, EternaCityUndergroundManHouse_YouveCapturedAFlagThisIsYourReward
    SetVar VAR_0x8004, UG_GOOD_PRETTY_GEM
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, EternaCityUndergroundManHouse_UndergroundPCIsFull
    Common_SendToUndergroundPCWithLinefeed
    SetVar VAR_CURRENT_UNDERGROUND_MISSION, 6
    ClearFlag FLAG_HAS_ACTIVE_UNDERGROUND_MISSION
    ClearFlag FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD
    Message EternaCityUndergroundManHouse_Text_ThereReallyIsNothingElseThatICanTeachYou
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_YouveCapturedAFlagThisIsYourReward:
    Message EternaCityUndergroundManHouse_Text_YouveCapturedAFlagThisIsYourReward
    Return

EternaCityUndergroundManHouse_MissionStealThreeFlags:
    GetCapturedFlagCount VAR_RESULT
    GoToIfLt VAR_RESULT, 3, EternaCityUndergroundManHouse_SoMySpelunkerAreYouGoingUndergroundWithYourFriends
    CallIfSet FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD, EternaCityUndergroundManHouse_HmThisBelongsToYou
    CallIfUnset FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD, EternaCityUndergroundManHouse_AhYouveCapturedThreeFlagsTakeThisAsYourReward
    SetVar VAR_0x8004, UG_GOOD_SHINY_GEM
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, EternaCityUndergroundManHouse_UndergroundPCIsFull
    Common_SendToUndergroundPC
    SetVar VAR_CURRENT_UNDERGROUND_MISSION, 7
    ClearFlag FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_AhYouveCapturedThreeFlagsTakeThisAsYourReward:
    Message EternaCityUndergroundManHouse_Text_AhYouveCapturedThreeFlagsTakeThisAsYourReward
    Return

EternaCityUndergroundManHouse_MissionStealTenFlags:
    GetCapturedFlagCount VAR_RESULT
    GoToIfLt VAR_RESULT, 10, EternaCityUndergroundManHouse_SoMySpelunkerAreYouGoingUndergroundWithYourFriends
    CallIfSet FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD, EternaCityUndergroundManHouse_HmThisBelongsToYou
    CallIfUnset FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD, EternaCityUndergroundManHouse_AhYouveCapturedTenFlagsTakeThisAsYourReward
    SetVar VAR_0x8004, UG_GOOD_MYSTIC_GEM
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, EternaCityUndergroundManHouse_UndergroundPCIsFull
    Common_SendToUndergroundPC
    SetVar VAR_CURRENT_UNDERGROUND_MISSION, 8
    ClearFlag FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_AhYouveCapturedTenFlagsTakeThisAsYourReward:
    Message EternaCityUndergroundManHouse_Text_AhYouveCapturedTenFlagsTakeThisAsYourReward
    Return

EternaCityUndergroundManHouse_MissionStealFiftyFlags:
    GetCapturedFlagCount VAR_RESULT
    GoToIfLt VAR_RESULT, 50, EternaCityUndergroundManHouse_SoMySpelunkerAreYouGoingUndergroundWithYourFriends
    CallIfSet FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD, EternaCityUndergroundManHouse_HmThisBelongsToYou
    CallIfUnset FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD, EternaCityUndergroundManHouse_MyGoodnessYouveCapturedFiftyFlagsTakeThisAsYourReward
    SetVar VAR_0x8004, UG_GOOD_GLITTER_GEM
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, EternaCityUndergroundManHouse_UndergroundPCIsFull
    Common_SendToUndergroundPC
    SetVar VAR_CURRENT_UNDERGROUND_MISSION, 9
    ClearFlag FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_MyGoodnessYouveCapturedFiftyFlagsTakeThisAsYourReward:
    Message EternaCityUndergroundManHouse_Text_MyGoodnessYouveCapturedFiftyFlagsTakeThisAsYourReward
    Return

EternaCityUndergroundManHouse_UndergroundPCIsFull:
    SetFlag FLAG_UNDERGROUND_MAN_COULDNT_GIVE_REWARD
    Message EternaCityUndergroundManHouse_Text_OhYourUndergroundPCAppearsToBeFull
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_HmThisBelongsToYou:
    Message EternaCityUndergroundManHouse_Text_HmThisBelongsToYou
    Return

EternaCityUndergroundManHouse_UndergroundManWalkAround:
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 5, EternaCityUndergroundManHouse_UndergroundManWalkAroundFaceWest
    GoToIfEq VAR_0x8004, 7, EternaCityUndergroundManHouse_UndergroundManWalkAroundFaceEast
    GoToIfEq VAR_0x8005, 4, EternaCityUndergroundManHouse_UndergroundManWalkAroundFaceNorth
    GoTo EternaCityUndergroundManHouse_UndergroundManWalkAroundFaceSouth

EternaCityUndergroundManHouse_UndergroundManWalkAroundFaceWest:
    ApplyMovement LOCALID_UNDERGROUND_MAN, EternaCityUndergroundManHouse_Movement_UndergroundManWalkAroundFaceWest
    WaitMovement
    Return

EternaCityUndergroundManHouse_UndergroundManWalkAroundFaceEast:
    ApplyMovement LOCALID_UNDERGROUND_MAN, EternaCityUndergroundManHouse_Movement_UndergroundManWalkAroundFaceEast
    WaitMovement
    Return

EternaCityUndergroundManHouse_UndergroundManWalkAroundFaceNorth:
    ApplyMovement LOCALID_UNDERGROUND_MAN, EternaCityUndergroundManHouse_Movement_UndergroundManWalkAroundFaceNorth
    WaitMovement
    Return

EternaCityUndergroundManHouse_UndergroundManWalkAroundFaceSouth:
    ApplyMovement LOCALID_UNDERGROUND_MAN, EternaCityUndergroundManHouse_Movement_UndergroundManWalkAroundFaceSouth
    WaitMovement
    Return

    .balign 4, 0
EternaCityUndergroundManHouse_Movement_UndergroundManWalkAroundFaceWest:
    WalkSlowNorth
    WalkSlowSouth 2
    WalkSlowNorth
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
EternaCityUndergroundManHouse_Movement_UndergroundManWalkAroundFaceEast:
    WalkSlowNorth
    WalkSlowSouth 2
    WalkSlowNorth
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
EternaCityUndergroundManHouse_Movement_UndergroundManWalkAroundFaceNorth:
    WalkSlowWest
    WalkSlowEast 2
    WalkSlowWest
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
EternaCityUndergroundManHouse_Movement_UndergroundManWalkAroundFaceSouth:
    WalkSlowWest
    WalkSlowEast 2
    WalkSlowWest
    WalkOnSpotFastSouth
    EndMovement

EternaCityUndergroundManHouse_Youngster:
    NPCMessage EternaCityUndergroundManHouse_Text_TheUndergroundTunnelsGoEverywhere
    End

EternaCityUndergroundManHouse_ScientistM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_TALKED_TO_UNDERGROUND_MAN_HOUSE_SCIENTIST_M, EternaCityUndergroundManHouse_OhYoudLikeMoreAdviceOnDiggingUpTreasureAndSpheres
    SetFlag FLAG_TALKED_TO_UNDERGROUND_MAN_HOUSE_SCIENTIST_M
    Message EternaCityUndergroundManHouse_Text_LetsDigUpSomeTreasure
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_OhYoudLikeMoreAdviceOnDiggingUpTreasureAndSpheres:
    Message EternaCityUndergroundManHouse_Text_OhYoudLikeMoreAdviceOnDiggingUpTreasureAndSpheres
    WaitButton
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_Sign:
    EventMessage EternaCityUndergroundManHouse_Text_NewAndOnSaleUndergroundRadar
    End

EternaCityUndergroundManHouse_PC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message EternaCityUndergroundManHouse_Text_ShortcutToTheUndergroundIsOnTheScreen
    GoTo EternaCityUndergroundManHouse_PCHeadingsMenu
    End

EternaCityUndergroundManHouse_PCHeadingsMenu:
    Message EternaCityUndergroundManHouse_Text_WhichHeadingWouldYouLikeToRead
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_UndergroundManHousePCHeading_Flags, 0
    AddMenuEntryImm MenuEntries_Text_UndergroundManHousePCHeading_Spheres, 1
    AddMenuEntryImm MenuEntries_Text_UndergroundManHousePCHeading_Traps, 2
    AddMenuEntryImm MenuEntries_Text_UndergroundManHousePCHeading_Goods, 3
    AddMenuEntryImm MenuEntries_Text_UndergroundManHousePCHeading_Treasures, 4
    AddMenuEntryImm MenuEntries_Text_ListMenu_Exit, 5
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, EternaCityUndergroundManHouse_PCHeadingFlags
    GoToIfEq VAR_0x8008, 1, EternaCityUndergroundManHouse_PCHeadingSpheres
    GoToIfEq VAR_0x8008, 2, EternaCityUndergroundManHouse_PCHeadingTraps
    GoToIfEq VAR_0x8008, 3, EternaCityUndergroundManHouse_PCHeadingGoods
    GoToIfEq VAR_0x8008, 4, EternaCityUndergroundManHouse_PCHeadingTreasures
    GoTo EternaCityUndergroundManHouse_PCEnd
    End

EternaCityUndergroundManHouse_PCHeadingFlags:
    Message EternaCityUndergroundManHouse_Text_AFlagCanBeFoundInEverySecretBase
    GoTo EternaCityUndergroundManHouse_PCHeadingsMenu
    End

EternaCityUndergroundManHouse_PCHeadingSpheres:
    Message EternaCityUndergroundManHouse_Text_InTheUndergroundTunnelsYouCanDigUpPrettyStonesThatAreCalledSpheres
    GoTo EternaCityUndergroundManHouse_PCHeadingsMenu
    End

EternaCityUndergroundManHouse_PCHeadingTraps:
    Message EternaCityUndergroundManHouse_Text_ThereAreTrapsThatCanBePutDownInTheUndergroundTunnels
    GoTo EternaCityUndergroundManHouse_PCHeadingsMenu
    End

EternaCityUndergroundManHouse_PCHeadingGoods:
    Message EternaCityUndergroundManHouse_Text_GoodsAreFurnitureAndDecorativeItemsForSecretBases
    GoTo EternaCityUndergroundManHouse_PCHeadingsMenu
    End

EternaCityUndergroundManHouse_PCHeadingTreasures:
    Message EternaCityUndergroundManHouse_Text_TreasuresAreRareItemsThatAppearWhileDiggingUnderground
    GoTo EternaCityUndergroundManHouse_PCHeadingsMenu
    End

EternaCityUndergroundManHouse_PCEnd:
    CloseMessage
    ReleaseAll
    End

EternaCityUndergroundManHouse_BugCatcher:
    NPCMessage EternaCityUndergroundManHouse_Text_AllIEverUnearthAreArmorFossils
    End

    .balign 4, 0
