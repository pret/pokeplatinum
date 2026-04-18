#include "macros/scrcmd.inc"
#include "res/text/bank/amity_square.h"
#include "res/field/events/events_amity_square.h"
#include "generated/object_events_gfx.h"

#define LOCAL_VAR_HAS_NATIONAL_DEX        VAR_MAP_LOCAL_0
#define LOCAL_VAR_FOLLOWER_MON_ID         VAR_0x8002
#define LOCAL_VAR_ITEM_OR_ACCESSORY_ID    VAR_0x8004
#define LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT VAR_0x8005
#define PICKUP_TYPE_ITEM                  0
#define PICKUP_TYPE_ACCESSORY             1


    ScriptEntry AmitySquare_OnTransition
    ScriptEntry AmitySquare_Trigger_WestGate
    ScriptEntry AmitySquare_Trigger_ExitAmitySquare
    ScriptEntry AmitySquare_Trigger_EastGate
    ScriptEntry AmitySquare_Trigger_ExitAmitySquare
    ScriptEntry AmitySquare_FollowerMon
    ScriptEntry AmitySquare_WestReceptionist
    ScriptEntry AmitySquare_EastReceptionist
    ScriptEntry AmitySquare_DrifloonMan
    ScriptEntry AmitySquare_Drifloon
    ScriptEntry AmitySquare_HappinyWoman
    ScriptEntry AmitySquare_Happiny
    ScriptEntry AmitySquare_PikachuMan
    ScriptEntry AmitySquare_Pikachu
    ScriptEntry AmitySquare_ClefairyGirl
    ScriptEntry AmitySquare_Clefairy
    ScriptEntry AmitySquare_GiftMan
    ScriptEntry AmitySquare_Warp1
    ScriptEntry AmitySquare_Warp2
    ScriptEntry AmitySquare_Warp3
    ScriptEntry AmitySquare_Warp4
    ScriptEntry AmitySquare_Warp5
    ScriptEntry AmitySquare_Warp6
    ScriptEntry AmitySquare_Warp7
    ScriptEntry AmitySquare_Warp8
    ScriptEntry AmitySquare_Warp9
    ScriptEntry AmitySquare_Warp10
    ScriptEntry AmitySquare_Warp11
    ScriptEntry AmitySquare_Warp12
    ScriptEntry AmitySquare_Warp13
    ScriptEntry AmitySquare_Warp14
    ScriptEntry AmitySquare_Warp15
    ScriptEntry AmitySquare_Warp16
    ScriptEntry AmitySquare_Warp17
    ScriptEntry AmitySquare_Warp18
    ScriptEntry AmitySquare_Warp19
    ScriptEntry AmitySquare_Warp20
    ScriptEntry AmitySquare_Warp21
    ScriptEntry AmitySquare_Warp22
    ScriptEntry AmitySquare_Warp23
    ScriptEntry AmitySquare_Warp24
    ScriptEntry AmitySquare_Warp25
    ScriptEntry AmitySquare_Warp26
    ScriptEntry AmitySquare_Warp27
    ScriptEntry _174A
    ScriptEntryEnd

AmitySquare_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_AMITY_SQUARE
    SetFlag FLAG_HIDE_AMITY_SQUARE_FOLLOWER_MON
    CalcAmitySquareBerryAndAccessoryManOptionID VAR_AMITY_SQUARE_GIFT_ID
    GetRandom VAR_MAP_LOCAL_2, 5
    GoToIfEq VAR_MAP_LOCAL_2, 0, AmitySquare_SetGiftManPosition0
    GoToIfEq VAR_MAP_LOCAL_2, 1, AmitySquare_SetGiftManPosition1
    GoToIfEq VAR_MAP_LOCAL_2, 2, AmitySquare_SetGiftManPosition2
    GoToIfEq VAR_MAP_LOCAL_2, 3, AmitySquare_SetGiftManPosition3
    End

AmitySquare_SetGiftManPosition0:
    SetObjectEventPos LOCALID_GIFT_MAN, 28, 14
    End

AmitySquare_SetGiftManPosition1:
    SetObjectEventPos LOCALID_GIFT_MAN, 38, 8
    End

AmitySquare_SetGiftManPosition2:
    SetObjectEventPos LOCALID_GIFT_MAN, 40, 21
    End

AmitySquare_SetGiftManPosition3:
    SetObjectEventPos LOCALID_GIFT_MAN, 48, 41
    End

AmitySquare_Trigger_WestGate:
    LockAll
    SetVar VAR_0x8001, 1
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerWalkOnSpotWest
    WaitMovement
    GoTo AmitySquare_CheckHasNationalDex
    End

AmitySquare_Trigger_EastGate:
    LockAll
    SetVar VAR_0x8001, 2
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerWalkOnSpotEast
    WaitMovement
    GoTo AmitySquare_CheckHasNationalDex
    End

AmitySquare_CheckHasNationalDex:
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_HasNationalDex
    GoTo AmitySquare_DoesntHaveNationalDex
    End

AmitySquare_DoesntHaveNationalDex:
    SetVar LOCAL_VAR_HAS_NATIONAL_DEX, FALSE
    GoTo AmitySquare_CheckPartyHasSpecies
    End

AmitySquare_ListPermittedSpecies:
    Message AmitySquare_Text_PermittedList
    CloseMessage
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerWalkSouth
    WaitMovement
    ReleaseAll
    End

AmitySquare_HasNationalDex:
    SetVar LOCAL_VAR_HAS_NATIONAL_DEX, TRUE
    GoTo AmitySquare_CheckPartyHasSpecies_NationalDex
    End

AmitySquare_ListPermittedSpecies_NationalDex:
    Message AmitySquare_Text_PermittedListNationalDex
    CloseMessage
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerWalkSouth
    WaitMovement
    ReleaseAll
    End

AmitySquare_InitCheckAllowedMonVars:
    SetVar VAR_MAP_LOCAL_A, 0
    GetPartyCount VAR_MAP_LOCAL_B
    SetVar VAR_MAP_LOCAL_C, 0
    GoTo AmitySquare_CheckCurrentSlotAllowedMon
    End

AmitySquare_CheckCurrentSlotAllowedMon:
    GetPartyMonSpecies VAR_MAP_LOCAL_A, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, AmitySquare_TryCheckNextSlotAllowedMon
    CallIfEq LOCAL_VAR_HAS_NATIONAL_DEX, FALSE, AmitySquare_CheckAllowedMon
    CallIfEq LOCAL_VAR_HAS_NATIONAL_DEX, TRUE, AmitySquare_CheckAllowedMon_NationalDex
    GoToIfEq VAR_RESULT, FALSE, AmitySquare_TryCheckNextSlotAllowedMon
    BufferPartyMonNickname 0, VAR_MAP_LOCAL_A
    GoToIfEq VAR_MAP_LOCAL_C, 0, AmitySquare_AskGoWithFirstAllowedMon
    GoToIfNe VAR_MAP_LOCAL_C, 0, AmitySquare_AskGoWithOtherAllowedMon
    End

AmitySquare_AskGoWithFirstAllowedMon:
    AddVar VAR_MAP_LOCAL_C, 1
    Message AmitySquare_Text_OkWouldYouLikeToGoForAStrollWithYourPokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, AmitySquare_SetFollowerMon
    GoTo AmitySquare_TryCheckNextSlotAllowedMon
    End

AmitySquare_AskGoWithOtherAllowedMon:
    AddVar VAR_MAP_LOCAL_C, 1
    Message AmitySquare_Text_OhOkThenYouWouldRatherGoForAStrollWithYourPokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, AmitySquare_SetFollowerMon
    GoTo AmitySquare_TryCheckNextSlotAllowedMon
    End

AmitySquare_TryCheckNextSlotAllowedMon:
    AddVar VAR_MAP_LOCAL_A, 1
    SubVar VAR_MAP_LOCAL_B, 1
    GoToIfNe VAR_MAP_LOCAL_B, 0, AmitySquare_CheckCurrentSlotAllowedMon
    Message AmitySquare_Text_ISeePleaseComeBack
    CloseMessage
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerWalkSouth
    WaitMovement
    ReleaseAll
    End

AmitySquare_SetFollowerMon:
    HealParty
    FadeScreenOut
    WaitFadeScreen
    SetVar VAR_FOLLOWER_MON_PARTY_ID, VAR_MAP_LOCAL_A
    GetPartyMonSpecies VAR_MAP_LOCAL_A, VAR_FOLLOWER_MON_SPECIES
    GoTo AmitySquare_SetFollowerGfx
    End

AmitySquare_FadeIn:
    FadeScreenIn
    WaitFadeScreen
    End

AmitySquare_EnterWithFollowerMon:
    AddObject LOCAL_VAR_FOLLOWER_MON_ID
    CallIfEq VAR_0x8001, 1, AmitySquare_SetFollowerMonPositionWestGate
    CallIfEq VAR_0x8001, 2, AmitySquare_SetFollowerMonPositionEastGate
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_FOLLOWER_MON_ACTIVE, TRUE
    ClearAmitySquareStepCount
    Call AmitySquare_FollowerMon_SetNextPickUpType
    ScrCmd_27C 0, VAR_FOLLOWER_MON_PARTY_ID
    Message AmitySquare_Text_PleaseDoEnjoyYourTimeTogether
    CloseMessage
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_WalkNorth
    ApplyMovement LOCAL_VAR_FOLLOWER_MON_ID, AmitySquare_Movement_WalkNorth
    WaitMovement
    SetHasPartner
    SetMovementType LOCAL_VAR_FOLLOWER_MON_ID, MOVEMENT_TYPE_FOLLOW_PLAYER
    ReleaseAll
    End

AmitySquare_SetFollowerMonPositionWestGate:
    SetPosition LOCAL_VAR_FOLLOWER_MON_ID, 12, 2, 47, DIR_WEST
    Return

AmitySquare_SetFollowerMonPositionEastGate:
    SetPosition LOCAL_VAR_FOLLOWER_MON_ID, 51, 2, 47, DIR_EAST
    Return

AmitySquare_Unused:
    FadeScreenIn
    WaitFadeScreen
    Message AmitySquare_Text_ISeePleaseComeBack
    CloseMessage
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerWalkSouth
    WaitMovement
    ReleaseAll
    End

AmitySquare_Trigger_ExitAmitySquare:
    LockAll
    FadeScreenOut
    WaitFadeScreen
    ClearHasPartner
    GoTo AmitySquare_RemoveFollower
    End

AmitySquare_RemoveFollower:
    RemoveObject LOCALID_FOLLOWER_MON
    GoTo AmitySquare_Trigger_ExitAmitySquare_End
    End

AmitySquare_Trigger_ExitAmitySquare_End:
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_FOLLOWER_MON_ACTIVE, FALSE
    Message AmitySquare_Text_AreYouFeelingRefreshedPleaseComeAgainOk
    CloseMessage
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerWalkSouth
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
AmitySquare_Movement_PlayerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerWalkSouth:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
AmitySquare_Movement_WalkNorth:
    WalkNormalNorth
    EndMovement

AmitySquare_UnusedMovement:
    WalkFastestSouth 2
    FaceWest
    EndMovement

AmitySquare_FollowerMon_SetNextPickUpType:
    GetRandom VAR_RESULT, 5
    CallIfEq VAR_RESULT, 0, AmitySquare_FollowerMon_SetNextPickUpType_Item      /* 20% */
    CallIfNe VAR_RESULT, 0, AmitySquare_FollowerMon_SetNextPickUpType_Accessory /* 80% */
    CalcAmitySquareFoundAccessory VAR_FOLLOWER_MON_PICKUP_ACCESSORY_ID, VAR_FOLLOWER_MON_SPECIES
    GoTo AmitySquare_FollowerMon_SetPickupItemVar
    End

AmitySquare_FollowerMon_SetNextPickUpType_Item:
    SetVar VAR_FOLLOWER_MON_NEXT_PICKUP_TYPE, PICKUP_TYPE_ITEM
    Return

AmitySquare_FollowerMon_SetNextPickUpType_Accessory:
    SetVar VAR_FOLLOWER_MON_NEXT_PICKUP_TYPE, PICKUP_TYPE_ACCESSORY
    Return

AmitySquare_FollowerMon_SetPickupItemVar:
    GetRandom VAR_RESULT, 100
    GoToIfLt VAR_RESULT, 20, AmitySquare_FollowerMon_SetPickupItemVar_MagostBerry /* 20% */
    GoToIfLt VAR_RESULT, 35, AmitySquare_FollowerMon_SetPickupItemVar_CornnBerry  /* 15% */
    GoToIfLt VAR_RESULT, 50, AmitySquare_FollowerMon_SetPickupItemVar_RabutaBerry /* 15% */
    GoToIfLt VAR_RESULT, 65, AmitySquare_FollowerMon_SetPickupItemVar_NomelBerry  /* 15% */
    GoToIfLt VAR_RESULT, 72, AmitySquare_FollowerMon_SetPickupItemVar_SpelonBerry /*  7% */
    GoToIfLt VAR_RESULT, 79, AmitySquare_FollowerMon_SetPickupItemVar_PamtreBerry /*  7% */
    GoToIfLt VAR_RESULT, 86, AmitySquare_FollowerMon_SetPickupItemVar_WatmelBerry /*  7% */
    GoToIfLt VAR_RESULT, 93, AmitySquare_FollowerMon_SetPickupItemVar_DurinBerry  /*  7% */
    GoTo AmitySquare_FollowerMon_SetPickupItemVar_BelueBerry                      /*  7% */
    End

AmitySquare_FollowerMon_SetPickupItemVar_MagostBerry:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_MAGOST_BERRY
    Return

AmitySquare_FollowerMon_SetPickupItemVar_CornnBerry:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_CORNN_BERRY
    Return

AmitySquare_FollowerMon_SetPickupItemVar_RabutaBerry:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_RABUTA_BERRY
    Return

AmitySquare_FollowerMon_SetPickupItemVar_NomelBerry:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_NOMEL_BERRY
    Return

AmitySquare_FollowerMon_SetPickupItemVar_SpelonBerry:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_SPELON_BERRY
    Return

AmitySquare_FollowerMon_SetPickupItemVar_PamtreBerry:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_PAMTRE_BERRY
    Return

AmitySquare_FollowerMon_SetPickupItemVar_WatmelBerry:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_WATMEL_BERRY
    Return

AmitySquare_FollowerMon_SetPickupItemVar_DurinBerry:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_DURIN_BERRY
    Return

AmitySquare_FollowerMon_SetPickupItemVar_BelueBerry:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_BELUE_BERRY
    Return

AmitySquare_FollowerMon_PickUp:
    SetVar VAR_0x8000, VAR_FOLLOWER_MON_NEXT_PICKUP_TYPE
    ClearAmitySquareStepCount
    Call AmitySquare_FollowerMon_SetNextPickUpType
    GoToIfEq VAR_0x8000, PICKUP_TYPE_ITEM, AmitySquare_FollowerMon_PickUp_TryItem
    GoTo AmitySquare_FollowerMon_PickUp_TryAccessory
    End

AmitySquare_FollowerMon_PickUp_TryItem:
    SetVar LOCAL_VAR_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ITEM_ID
    SetVar LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, 1
    GoToIfCannotFitItem LOCAL_VAR_ITEM_OR_ACCESSORY_ID, LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, VAR_RESULT, AmitySquare_FollowerMon_PickUp_FailedItem_TryAccessory
    GoTo AmitySquare_FollowerMon_PickUp_GiveItem
    End

AmitySquare_FollowerMon_PickUp_FailedAccessory_TryItem:
    SetVar LOCAL_VAR_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ITEM_ID
    SetVar LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, 1
    GoToIfCannotFitItem LOCAL_VAR_ITEM_OR_ACCESSORY_ID, LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, VAR_RESULT, AmitySquare_FollowerMon_Message
    GoTo AmitySquare_FollowerMon_PickUp_GiveItem
    End

AmitySquare_FollowerMon_PickUp_GiveItem:
    PlayCry VAR_FOLLOWER_MON_SPECIES
    Message AmitySquare_Text_OhPokemonIsHoldingSomething
    WaitCry
    ScrCmd_27C 1, LOCAL_VAR_ITEM_OR_ACCESSORY_ID
    IncrementGameRecord RECORD_UNK_051
    Common_GiveItemQuantityNoLineFeed
    CloseMessage
    ReleaseAll
    End

AmitySquare_FollowerMon_PickUp_TryAccessory:
    SetVar LOCAL_VAR_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ACCESSORY_ID
    SetVar LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, 1
    CanFitAccessory LOCAL_VAR_ITEM_OR_ACCESSORY_ID, LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, AmitySquare_FollowerMon_PickUp_FailedAccessory_TryItem
    GoTo AmitySquare_FollowerMon_PickUp_GiveAccessory
    End

AmitySquare_FollowerMon_PickUp_FailedItem_TryAccessory:
    SetVar LOCAL_VAR_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ACCESSORY_ID
    SetVar LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, 1
    CanFitAccessory LOCAL_VAR_ITEM_OR_ACCESSORY_ID, LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, AmitySquare_FollowerMon_Message
    GoTo AmitySquare_FollowerMon_PickUp_GiveAccessory
    End

AmitySquare_FollowerMon_PickUp_GiveAccessory:
    PlayCry VAR_FOLLOWER_MON_SPECIES
    Message AmitySquare_Text_OhPokemonIsHoldingSomething
    WaitCry
    ScrCmd_27C 2, LOCAL_VAR_ITEM_OR_ACCESSORY_ID
    IncrementGameRecord RECORD_UNK_051
    Common_GiveAccessoryWaitForConfirm
    CloseMessage
    ReleaseAll
    End

AmitySquare_FollowerMon_Message:
    BufferPartyMonNickname 0, VAR_FOLLOWER_MON_PARTY_ID
    PlayCry VAR_FOLLOWER_MON_SPECIES
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_GROTLE, AmitySquare_FollowerMon_Message_EvolvedStarter
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_TORTERRA, AmitySquare_FollowerMon_Message_EvolvedStarter
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_MONFERNO, AmitySquare_FollowerMon_Message_EvolvedStarter
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_INFERNAPE, AmitySquare_FollowerMon_Message_EvolvedStarter
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_PRINPLUP, AmitySquare_FollowerMon_Message_EvolvedStarter
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_EMPOLEON, AmitySquare_FollowerMon_Message_EvolvedStarter
    GetRandom VAR_RESULT, 9
    GoToIfEq VAR_RESULT, 0, AmitySquare_FollowerMon_IsHappilyKeepingUp
    GoToIfEq VAR_RESULT, 1, AmitySquare_FollowerMon_AppearsToBeVeryHappy
    GoToIfEq VAR_RESULT, 2, AmitySquare_FollowerMon_AppearsToBeFeelingGood
    GoToIfEq VAR_RESULT, 3, AmitySquare_FollowerMon_IsLookingEndearinglyAtYou
    GoToIfEq VAR_RESULT, 4, AmitySquare_FollowerMon_IsPickingAtTheGroundForSomeReason
    GoToIfEq VAR_RESULT, 5, AmitySquare_FollowerMon_AlmostTripped
    GoToIfEq VAR_RESULT, 6, AmitySquare_FollowerMon_IsSkippingHappily
    GoToIfEq VAR_RESULT, 7, AmitySquare_FollowerMon_SeemsToBeSoHappyItCantKeepStill
    GoTo AmitySquare_FollowerMon_SeemsToBeEnjoyingTheWalk
    End

AmitySquare_FollowerMon_IsHappilyKeepingUp:
    Message AmitySquare_Text_PokemonIsHappilyKeepingUp
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_AppearsToBeVeryHappy:
    Message AmitySquare_Text_PokemonAppearsToBeVeryHappy
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_AppearsToBeFeelingGood:
    Message AmitySquare_Text_PokemonAppearsToBeFeelingGood
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_IsLookingEndearinglyAtYou:
    Message AmitySquare_Text_PokemonIsLookingEndearinglyAtYou
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_IsPickingAtTheGroundForSomeReason:
    Message AmitySquare_Text_PokemonIsPickingAtTheGroundForSomeReason
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_AlmostTripped:
    Message AmitySquare_Text_PokemonAlmostTripped
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_IsSkippingHappily:
    Message AmitySquare_Text_PokemonIsSkippingHappily
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_SeemsToBeSoHappyItCantKeepStill:
    Message AmitySquare_Text_PokemonSeemsToBeSoHappyItCantKeepStill
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_SeemsToBeEnjoyingTheWalk:
    Message AmitySquare_Text_PokemonSeemsToBeEnjoyingTheWalk
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_End:
    WaitCry
    WaitButton
    CloseMessage
    ReleaseAll
    End

AmitySquare_FollowerMon_Message_EvolvedStarter:
    GetRandom VAR_RESULT, 9
    GoToIfEq VAR_RESULT, 0, AmitySquare_FollowerMon_IsFollowingAlongRelaxedAndCasual
    GoToIfEq VAR_RESULT, 1, AmitySquare_FollowerMon_AppearsToBeVeryHappy2
    GoToIfEq VAR_RESULT, 2, AmitySquare_FollowerMon_AppearsToBeFeelingGood2
    GoToIfEq VAR_RESULT, 3, AmitySquare_FollowerMon_SnuggledUpClose
    GoToIfEq VAR_RESULT, 4, AmitySquare_FollowerMon_IsPickingAtTheGroundForSomeReason2
    GoToIfEq VAR_RESULT, 5, AmitySquare_FollowerMon_PretendedToTrip
    GoToIfEq VAR_RESULT, 6, AmitySquare_FollowerMon_GaveAContentedYawn
    GoToIfEq VAR_RESULT, 7, AmitySquare_FollowerMon_IsSniffingAtTheGrass
    GoTo AmitySquare_FollowerMon_SeemsToBeEnjoyingTheWalk2
    End

AmitySquare_FollowerMon_IsFollowingAlongRelaxedAndCasual:
    Message AmitySquare_Text_PokemonIsFollowingAlongRelaxedAndCasual
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_AppearsToBeVeryHappy2:
    Message AmitySquare_Text_PokemonAppearsToBeVeryHappy
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_AppearsToBeFeelingGood2:
    Message AmitySquare_Text_PokemonAppearsToBeFeelingGood
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_SnuggledUpClose:
    Message AmitySquare_Text_PokemonSnuggledUpClose
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_IsPickingAtTheGroundForSomeReason2:
    Message AmitySquare_Text_PokemonIsPickingAtTheGroundForSomeReason
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_PretendedToTrip:
    Message AmitySquare_Text_PokemonPretendedToTrip
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_GaveAContentedYawn:
    Message AmitySquare_Text_PokemonGaveAContentedYawn
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_IsSniffingAtTheGrass:
    Message AmitySquare_Text_PokemonIsSniffingAtTheGrass
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_FollowerMon_SeemsToBeEnjoyingTheWalk2:
    Message AmitySquare_Text_PokemonSeemsToBeEnjoyingTheWalk
    GoTo AmitySquare_FollowerMon_End
    End

AmitySquare_WestReceptionist:
    SetVar VAR_MAP_LOCAL_A, 0
    GoTo AmitySquare_Receptionist
    End

AmitySquare_EastReceptionist:
    SetVar VAR_MAP_LOCAL_A, 1
    GoTo AmitySquare_Receptionist
    End

AmitySquare_Receptionist:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPartyMonNickname 0, VAR_FOLLOWER_MON_PARTY_ID
    GetRandom VAR_RESULT, 6
    CallIfEq VAR_RESULT, 0, AmitySquare_YourPokemonLooksQuitePleasedFollowingYouAround
    CallIfEq VAR_RESULT, 1, AmitySquare_OkTheOwnerOfAmitySquare
    CallIfEq VAR_RESULT, 2, AmitySquare_YouMayFindUsefulItemsOnTheGround
    CallIfEq VAR_RESULT, 3, AmitySquare_AreYouEnjoyingYourStroll
    CallIfEq VAR_RESULT, 4, AmitySquare_ItMakesMeHappySeeingAllTheCutePokemon
    CallIfEq VAR_RESULT, 5, AmitySquare_YouMaySpendAllTheTimeYouLikeInAmitySquare
    GoToIfEq VAR_MAP_LOCAL_A, 0, AmitySquare_WestReceptionist_End
    GoTo AmitySquare_EastReceptionist_End
    End

AmitySquare_YourPokemonLooksQuitePleasedFollowingYouAround:
    Message AmitySquare_Text_YourPokemonLooksQuitePleasedFollowingYouAround
    Return

AmitySquare_OkTheOwnerOfAmitySquare:
    Message AmitySquare_Text_OkTheOwnerOfAmitySquare
    Return

AmitySquare_YouMayFindUsefulItemsOnTheGround:
    Message AmitySquare_Text_YouMayFindUsefulItemsOnTheGround
    Return

AmitySquare_AreYouEnjoyingYourStroll:
    Message AmitySquare_Text_AreYouEnjoyingYourStroll
    Return

AmitySquare_ItMakesMeHappySeeingAllTheCutePokemon:
    Message AmitySquare_Text_ItMakesMeHappySeeingAllTheCutePokemon
    Return

AmitySquare_YouMaySpendAllTheTimeYouLikeInAmitySquare:
    Message AmitySquare_Text_YouMaySpendAllTheTimeYouLikeInAmitySquare
    Return

AmitySquare_WestReceptionist_End:
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_RECEPTIONIST_WEST, AmitySquare_Movement_WestReceptionistFaceEast
    WaitMovement
    ReleaseAll
    End

AmitySquare_EastReceptionist_End:
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_RECEPTIONIST_EAST, AmitySquare_Movement_EastReceptionistFaceWest
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
AmitySquare_Movement_WestReceptionistFaceEast:
    FaceEast
    EndMovement

    .balign 4, 0
AmitySquare_Movement_EastReceptionistFaceWest:
    FaceWest
    EndMovement

AmitySquare_DrifloonMan:
    NPCMessage AmitySquare_Text_TheseRuinsAreFromALongLongTimeAgo
    End

AmitySquare_Drifloon:
    PokemonCryAndMessage SPECIES_DRIFLOON, AmitySquare_Text_DrifloonFoon
    End

AmitySquare_HappinyWoman:
    NPCMessage AmitySquare_Text_IComeHereWithMyHappinyEverySingleDay
    End

AmitySquare_Happiny:
    NPCMessage AmitySquare_Text_HappinyAppearsToBeDrowsy
    End

AmitySquare_PikachuMan:
    NPCMessage AmitySquare_Text_OohIJustCantBelieveIt
    End

AmitySquare_Pikachu:
    PokemonCryAndMessage SPECIES_PIKACHU, AmitySquare_Text_PikachuPikkaPika
    End

AmitySquare_ClefairyGirl:
    NPCMessage AmitySquare_Text_YouShouldTalkToYourPokemon
    End

AmitySquare_Clefairy:
    PokemonCryAndMessage SPECIES_CLEFAIRY, AmitySquare_Text_ThereIsSomethingShinyInClefairysHands
    End

AmitySquare_CheckPartyHasSpecies:
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIKACHU
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CLEFAIRY
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PSYDUCK
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PACHIRISU
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_DRIFLOON
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_BUNEARY
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_HAPPINY
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TURTWIG
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_GROTLE
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TORTERRA
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CHIMCHAR
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_MONFERNO
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_INFERNAPE
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIPLUP
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PRINPLUP
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_EMPOLEON
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    GoTo AmitySquare_ListPermittedSpecies
    End

AmitySquare_CheckPartyHasSpecies_NationalDex:
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIKACHU
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CLEFAIRY
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PSYDUCK
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PACHIRISU
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_DRIFLOON
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_BUNEARY
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_HAPPINY
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_JIGGLYPUFF
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TORCHIC
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_SKITTY
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_SHROOMISH
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TURTWIG
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_GROTLE
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TORTERRA
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CHIMCHAR
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_MONFERNO
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_INFERNAPE
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIPLUP
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PRINPLUP
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    CheckPartyHasSpecies VAR_RESULT, SPECIES_EMPOLEON
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_InitCheckAllowedMonVars
    GoTo AmitySquare_ListPermittedSpecies_NationalDex
    End

AmitySquare_CheckAllowedMon:
    GetPartyMonSpecies VAR_MAP_LOCAL_A, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_PIKACHU, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_CLEFAIRY, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_PSYDUCK, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_PACHIRISU, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_DRIFLOON, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_BUNEARY, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_HAPPINY, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_GROTLE, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_TORTERRA, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_MONFERNO, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_INFERNAPE, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_PIPLUP, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_PRINPLUP, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_EMPOLEON, AmitySquare_SetMonAllowedFlag
    SetVar VAR_RESULT, FALSE
    Return

AmitySquare_SetMonAllowedFlag:
    SetVar VAR_RESULT, TRUE
    Return

AmitySquare_CheckAllowedMon_NationalDex:
    GetPartyMonSpecies VAR_MAP_LOCAL_A, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_PIKACHU, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_CLEFAIRY, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_PSYDUCK, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_PACHIRISU, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_DRIFLOON, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_BUNEARY, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_HAPPINY, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_JIGGLYPUFF, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_TORCHIC, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_SKITTY, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_SHROOMISH, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_TURTWIG, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_GROTLE, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_TORTERRA, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_CHIMCHAR, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_MONFERNO, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_INFERNAPE, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_PIPLUP, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_PRINPLUP, AmitySquare_SetMonAllowedFlag
    GoToIfEq VAR_RESULT, SPECIES_EMPOLEON, AmitySquare_SetMonAllowedFlag
    SetVar VAR_RESULT, FALSE
    Return

AmitySquare_SetFollowerGfx:
    SetVar VAR_0x8008, VAR_FOLLOWER_MON_SPECIES
    GoToIfEq VAR_0x8008, SPECIES_PIKACHU, AmitySquare_SetFollowerGfx_Pikachu
    GoToIfEq VAR_0x8008, SPECIES_TORCHIC, AmitySquare_SetFollowerGfx_Torchic
    GoToIfEq VAR_0x8008, SPECIES_CLEFAIRY, AmitySquare_SetFollowerGfx_Clefairy
    GoToIfEq VAR_0x8008, SPECIES_PSYDUCK, AmitySquare_SetFollowerGfx_Psyduck
    GoToIfEq VAR_0x8008, SPECIES_PACHIRISU, AmitySquare_SetFollowerGfx_Pachirisu
    GoToIfEq VAR_0x8008, SPECIES_DRIFLOON, AmitySquare_SetFollowerGfx_Drifloon
    GoToIfEq VAR_0x8008, SPECIES_BUNEARY, AmitySquare_SetFollowerGfx_Buneary
    GoToIfEq VAR_0x8008, SPECIES_HAPPINY, AmitySquare_SetFollowerGfx_Happiny
    GoToIfEq VAR_0x8008, SPECIES_JIGGLYPUFF, AmitySquare_SetFollowerGfx_Jigglypuff
    GoToIfEq VAR_0x8008, SPECIES_SKITTY, AmitySquare_SetFollowerGfx_Skitty
    GoToIfEq VAR_0x8008, SPECIES_SHROOMISH, AmitySquare_SetFollowerGfx_Shroomish
    GoToIfEq VAR_0x8008, SPECIES_TURTWIG, AmitySquare_SetFollowerGfx_Turtwig
    GoToIfEq VAR_0x8008, SPECIES_GROTLE, AmitySquare_SetFollowerGfx_Grottle
    GoToIfEq VAR_0x8008, SPECIES_TORTERRA, AmitySquare_SetFollowerGfx_Torterra
    GoToIfEq VAR_0x8008, SPECIES_CHIMCHAR, AmitySquare_SetFollowerGfx_Chimchar
    GoToIfEq VAR_0x8008, SPECIES_MONFERNO, AmitySquare_SetFollowerGfx_Monferno
    GoToIfEq VAR_0x8008, SPECIES_INFERNAPE, AmitySquare_SetFollowerGfx_Infernape
    GoToIfEq VAR_0x8008, SPECIES_PIPLUP, AmitySquare_SetFollowerGfx_Piplup
    GoToIfEq VAR_0x8008, SPECIES_PRINPLUP, AmitySquare_SetFollowerGfx_Prinplup
    GoToIfEq VAR_0x8008, SPECIES_EMPOLEON, AmitySquare_SetFollowerGfx_Empoleon
    GoTo AmitySquare_FadeIn
    End

AmitySquare_SetFollowerGfx_Pikachu:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PIKACHU
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Torchic:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_TORCHIC
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Clefairy:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_CLEFAIRY
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Psyduck:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PSYDUCK
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Pachirisu:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PACHIRISU
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Drifloon:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_DRIFLOON
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Buneary:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_BUNEARY
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Happiny:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_HAPPINY
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Jigglypuff:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_JIGGLYPUFF
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Skitty:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_SKITTY
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Shroomish:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_SHROOMISH
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Turtwig:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_TURTWIG
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Grottle:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_GROTLE
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Torterra:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_TORTERRA
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Chimchar:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_CHIMCHAR
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Monferno:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_MONFERNO
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Infernape:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_INFERNAPE
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Piplup:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PIPLUP
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Prinplup:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PRINPLUP
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_SetFollowerGfx_Empoleon:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_EMPOLEON
    GoTo AmitySquare_PrepareShowFollower
    End

AmitySquare_PrepareShowFollower:
    SetVar LOCAL_VAR_FOLLOWER_MON_ID, LOCALID_FOLLOWER_MON
    ClearFlag FLAG_HIDE_AMITY_SQUARE_FOLLOWER_MON
    GoTo AmitySquare_EnterWithFollowerMon
    End

AmitySquare_FollowerMon:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPartyMonNickname 0, VAR_FOLLOWER_MON_PARTY_ID
    GetAmitySquareStepCount VAR_RESULT
    GoToIfGe VAR_RESULT, 200, AmitySquare_FollowerMon_PickUp
    GoTo AmitySquare_FollowerMon_Message
    End

AmitySquare_GiftMan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_AMITY_SQUARE_MAN_GIFT_RECEIVED, AmitySquare_GiftMan_ReceivedGift
    Message AmitySquare_Text_HelloHowDoYouDoILoveThisPark
    GetAmitySquareBerryOrAccessoryIDFromMan VAR_AMITY_SQUARE_GIFT_ID, LOCAL_VAR_ITEM_OR_ACCESSORY_ID
    GoToIfAmitySquareManGiftIsNotAccessory VAR_AMITY_SQUARE_GIFT_ID, AmitySquare_GiftMan_ItemGift
    GoTo AmitySquare_GiftMan_AccessoryGift
    End

AmitySquare_GiftMan_ItemGift:
    BufferItemName 0, LOCAL_VAR_ITEM_OR_ACCESSORY_ID
    Message AmitySquare_Text_DoYouKnowTheItemIFoundSome
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, AmitySquare_GiftMan_DeclinedGift
    SetVar LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, 5
    GoToIfCannotFitItem LOCAL_VAR_ITEM_OR_ACCESSORY_ID, LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, VAR_RESULT, AmitySquare_GiftMan_CannotFitItem
    BufferPlayerName 0
    BufferItemNamePlural 1, LOCAL_VAR_ITEM_OR_ACCESSORY_ID
    PlayFanfare SEQ_FANFA4
    Message AmitySquare_Text_PlayerReceivedItem
    WaitFanfare
    AddItem LOCAL_VAR_ITEM_OR_ACCESSORY_ID, LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, VAR_RESULT
    GoTo AmitySquare_GiftMan_ReceivedGift
    End

AmitySquare_GiftMan_AccessoryGift:
    BufferAccessoryName 0, LOCAL_VAR_ITEM_OR_ACCESSORY_ID
    Message AmitySquare_Text_DoYouKnowTheItemIFoundSome
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, AmitySquare_GiftMan_DeclinedGift
    SetVar LOCAL_VAR_ITEM_OR_ACCESSORY_COUNT, 1
    Common_GiveAccessoryWaitForConfirm
    GoTo AmitySquare_GiftMan_ReceivedGift
    End

AmitySquare_GiftMan_DeclinedGift:
    Message AmitySquare_Text_OhItsNoProblemToMe
    WaitButton
    CloseMessage
    ReleaseAll
    End

AmitySquare_Unused2:
    CloseMessage
    ReleaseAll
    End

AmitySquare_GiftMan_CannotFitItem:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

AmitySquare_GiftMan_ReceivedGift:
    SetFlag FLAG_AMITY_SQUARE_MAN_GIFT_RECEIVED
    Message AmitySquare_Text_HahahahPerhapsIllSeeYouAgainTomorrow
    WaitButton
    CloseMessage
    ReleaseAll
    End

AmitySquare_Warp1:
    SetVar VAR_0x8003, 1
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp2:
    SetVar VAR_0x8003, 2
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp3:
    SetVar VAR_0x8003, 3
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp4:
    SetVar VAR_0x8003, 4
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp5:
    SetVar VAR_0x8003, 5
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp6:
    SetVar VAR_0x8003, 6
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp7:
    SetVar VAR_0x8003, 7
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp8:
    SetVar VAR_0x8003, 8
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp9:
    SetVar VAR_0x8003, 9
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp10:
    SetVar VAR_0x8003, 10
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp11:
    SetVar VAR_0x8003, 11
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp12:
    SetVar VAR_0x8003, 12
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp13:
    SetVar VAR_0x8003, 13
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp14:
    SetVar VAR_0x8003, 14
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp15:
    SetVar VAR_0x8003, 15
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp16:
    SetVar VAR_0x8003, 16
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp17:
    SetVar VAR_0x8003, 17
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp18:
    SetVar VAR_0x8003, 18
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp19:
    SetVar VAR_0x8003, 19
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp20:
    SetVar VAR_0x8003, 20
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp21:
    SetVar VAR_0x8003, 21
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp22:
    SetVar VAR_0x8003, 22
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp23:
    SetVar VAR_0x8003, 23
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp24:
    SetVar VAR_0x8003, 24
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp25:
    SetVar VAR_0x8003, 25
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp26:
    SetVar VAR_0x8003, 26
    GoTo AmitySquare_DoWarp
    End

AmitySquare_Warp27:
    SetVar VAR_0x8003, 27
    GoTo AmitySquare_DoWarp
    End

AmitySquare_DoWarp:
    FadeScreenOut
    WaitFadeScreen
    LockAll
    WaitTime 1, VAR_RESULT
    ScrCmd_32D
    ScrCmd_338
    ApplyMovement LOCALID_FOLLOWER_MON, AmitySquare_Movement_FollowerMonFaceSouthSetInvisible
    WaitMovement
    PlaySE SEQ_SE_DP_GYURU
    CallIfEq VAR_0x8003, 1, AmitySquare_SetPositionsWarp1
    CallIfEq VAR_0x8003, 2, AmitySquare_SetPositionsWarp2
    CallIfEq VAR_0x8003, 3, AmitySquare_SetPositionsWarp3
    CallIfEq VAR_0x8003, 4, AmitySquare_SetPositionsWarp4
    CallIfEq VAR_0x8003, 5, AmitySquare_SetPositionsWarp5
    CallIfEq VAR_0x8003, 6, AmitySquare_SetPositionsWarp6
    CallIfEq VAR_0x8003, 7, AmitySquare_SetPositionsWarp7
    CallIfEq VAR_0x8003, 8, AmitySquare_SetPositionsWarp8
    CallIfEq VAR_0x8003, 9, AmitySquare_SetPositionsWarp9
    CallIfEq VAR_0x8003, 10, AmitySquare_SetPositionsWarp10
    CallIfEq VAR_0x8003, 11, AmitySquare_SetPositionsWarp11
    CallIfEq VAR_0x8003, 12, AmitySquare_SetPositionsWarp12
    CallIfEq VAR_0x8003, 13, AmitySquare_SetPositionsWarp13
    CallIfEq VAR_0x8003, 14, AmitySquare_SetPositionsWarp14
    CallIfEq VAR_0x8003, 15, AmitySquare_SetPositionsWarp15
    CallIfEq VAR_0x8003, 16, AmitySquare_SetPositionsWarp16
    CallIfEq VAR_0x8003, 17, AmitySquare_SetPositionsWarp17
    CallIfEq VAR_0x8003, 18, AmitySquare_SetPositionsWarp18
    CallIfEq VAR_0x8003, 19, AmitySquare_SetPositionsWarp19
    CallIfEq VAR_0x8003, 20, AmitySquare_SetPositionsWarp20
    CallIfEq VAR_0x8003, 21, AmitySquare_SetPositionsWarp21
    CallIfEq VAR_0x8003, 22, AmitySquare_SetPositionsWarp22
    CallIfEq VAR_0x8003, 23, AmitySquare_SetPositionsWarp23
    CallIfEq VAR_0x8003, 24, AmitySquare_SetPositionsWarp24
    CallIfEq VAR_0x8003, 25, AmitySquare_SetPositionsWarp25
    CallIfEq VAR_0x8003, 26, AmitySquare_SetPositionsWarp26
    CallIfEq VAR_0x8003, 27, AmitySquare_SetPositionsWarp27
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_FaceSouthSetVisible
    WaitMovement
    FadeScreenIn
    WaitFadeScreen
    ApplyMovement LOCALID_FOLLOWER_MON, AmitySquare_Movement_FaceSouthSetVisible
    WaitMovement
    ReleaseAll
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerExitHutWalkSouth
    WaitMovement
    ScrCmd_32E
    ScrCmd_339
    WaitTime 2, VAR_RESULT
    End

AmitySquare_SetPositionsWarp1:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp1
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 35, 2, 15, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp2:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp2
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 35, 2, 15, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp3:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp3
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 35, 2, 15, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp4:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp4
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 17, 2, 16, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp5:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp5
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 17, 2, 16, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp6:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp6
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 17, 2, 16, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp7:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp7
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 47, 4, 8, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp8:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp8
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 33, 5, 7, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp9:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp9
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 15, 4, 10, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp10:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp10
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 52, 4, 25, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp11:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp11
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 15, 4, 10, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp12:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp12
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 33, 5, 7, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp13:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp13
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 52, 4, 25, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp14:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp14
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 26, 6, 9, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp15:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp15
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 41, 3, 16, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp16:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp16
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 52, 4, 25, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp17:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp17
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 41, 3, 16, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp18:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp18
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 26, 6, 9, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp19:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp19
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 47, 4, 8, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp20:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp20
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 47, 2, 34, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp21:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp21
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 15, 4, 10, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp22:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp22
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 47, 4, 8, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp23:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp23
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 33, 5, 7, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp24:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp24
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 47, 2, 34, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp25:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp25
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 52, 4, 25, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp26:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp26
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 15, 4, 10, DIR_SOUTH
    Return

AmitySquare_SetPositionsWarp27:
    ApplyMovement LOCALID_PLAYER, AmitySquare_Movement_PlayerGoToDestinationWarp27
    WaitMovement
    SetPosition LOCALID_FOLLOWER_MON, 33, 5, 7, DIR_SOUTH
    Return

_174A:
    LockAll
    SetVar VAR_UNK_0x40AC, 0
    ReleaseAll
    End

    .balign 4, 0
AmitySquare_Movement_FollowerMonFaceSouthSetInvisible:
    FaceSouth
    SetInvisible
    EndMovement

    .balign 4, 0
AmitySquare_Movement_FaceSouthSetVisible:
    FaceSouth
    SetVisible
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerExitHutWalkSouth:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp1:
    WalkFasterEast 18
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp2:
    WalkFasterEast 19
    WalkFasterNorth
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp3:
    WalkFasterEast 17
    WalkFasterNorth
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp4:
    WalkFasterWest 18
    WalkFasterSouth 2
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp5:
    WalkFasterWest 17
    WalkFasterSouth
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp6:
    WalkFasterWest 19
    WalkFasterSouth
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp7:
    WalkFasterWest 5
    WalkFasterNorth 16
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp8:
    WalkFasterWest 18
    WalkFasterNorth 18
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp9:
    WalkFasterWest 38
    WalkFasterNorth 15
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp10:
    WalkFasterEast 5
    WalkFasterSouth 18
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp11:
    WalkFasterWest 31
    WalkFasterSouth 2
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp12:
    WalkFasterWest 15
    WalkFasterNorth
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp13:
    WalkFasterEast 37
    WalkFasterSouth 16
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp14:
    WalkFasterEast 12
    WalkFasterNorth
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp15:
    WalkFasterEast 25
    WalkFasterSouth 6
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp16:
    WalkFasterEast 19
    WalkFasterSouth 19
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp17:
    WalkFasterEast 9
    WalkFasterSouth 9
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp18:
    WalkFasterWest 8
    WalkFasterSouth 2
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp19:
    WalkFasterEast 21
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp20:
    WalkFasterEast 22
    WalkFasterSouth 25
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp21:
    WalkFasterWest 12
    WalkFasterSouth
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp22:
    WalkFasterEast 6
    WalkFasterNorth 7
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp23:
    WalkFasterWest 7
    WalkFasterNorth 9
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp24:
    WalkFasterEast 5
    WalkFasterSouth 18
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp25:
    WalkFasterEast 5
    WalkFasterNorth 8
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp26:
    WalkFasterWest 31
    WalkFasterNorth 24
    EndMovement

    .balign 4, 0
AmitySquare_Movement_PlayerGoToDestinationWarp27:
    WalkFasterWest 15
    WalkFasterNorth 27
    EndMovement
