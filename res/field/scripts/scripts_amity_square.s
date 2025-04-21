#include "macros/scrcmd.inc"
#include "res/text/bank/amity_square.h"
#include "generated/object_events.h"

#define LOCALID_HAS_NATIONAL_DEX     VAR_MAP_LOCAL_0
#define LOCALID_ITEM_OR_ACCESSORY_ID VAR_0x8004
#define LOCALID_COUNT                VAR_0x8005
#define PICKUP_TYPE_ITEM             0
#define PICKUP_TYPE_ACCESORY         1

    .data

    ScriptEntry _00B6
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
    ScriptEntry _118B
    ScriptEntry _1199
    ScriptEntry _11A7
    ScriptEntry _11B5
    ScriptEntry _11C3
    ScriptEntry _11D1
    ScriptEntry _11DF
    ScriptEntry _11ED
    ScriptEntry _11FB
    ScriptEntry _1209
    ScriptEntry _1217
    ScriptEntry _1225
    ScriptEntry _1233
    ScriptEntry _1241
    ScriptEntry _124F
    ScriptEntry _125D
    ScriptEntry _126B
    ScriptEntry _1279
    ScriptEntry _1287
    ScriptEntry _1295
    ScriptEntry _12A3
    ScriptEntry _12B1
    ScriptEntry _12BF
    ScriptEntry _12CD
    ScriptEntry _12DB
    ScriptEntry _12E9
    ScriptEntry _12F7
    ScriptEntry _174A
    ScriptEntryEnd

_00B6:
    SetFlag FLAG_UNK_0x09CC
    SetFlag FLAG_UNK_0x02A1
    CalcAmitySquareBerryAndAccessoryManOptionID VAR_AMITY_SQUARE_GIFT_ID
    GetRandom VAR_MAP_LOCAL_2, 5
    GoToIfEq VAR_MAP_LOCAL_2, 0, _00FE
    GoToIfEq VAR_MAP_LOCAL_2, 1, _0108
    GoToIfEq VAR_MAP_LOCAL_2, 2, _0112
    GoToIfEq VAR_MAP_LOCAL_2, 3, _011C
    End

_00FE:
    SetObjectEventPos 15, 28, 14
    End

_0108:
    SetObjectEventPos 15, 38, 8
    End

_0112:
    SetObjectEventPos 15, 40, 21
    End

_011C:
    SetObjectEventPos 15, 48, 41
    End

AmitySquare_Trigger_WestGate:
    LockAll
    SetVar VAR_0x8001, 1
    ApplyMovement LOCALID_PLAYER, _03B0
    WaitMovement
    GoTo AmitySquare_CheckHasNationalDex
    End

AmitySquare_Trigger_EastGate:
    LockAll
    SetVar VAR_0x8001, 2
    ApplyMovement LOCALID_PLAYER, _03B8
    WaitMovement
    GoTo AmitySquare_CheckHasNationalDex
    End

AmitySquare_CheckHasNationalDex:
    GetSetNationalDexEnabled 2, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, AmitySquare_HasNationalDex
    GoTo AmitySquare_DoesntHaveNationalDex
    End

AmitySquare_DoesntHaveNationalDex:
    SetVar LOCALID_HAS_NATIONAL_DEX, FALSE
    GoTo AmitySquare_CheckPartyHasSpecies
    End

AmitySquare_ListPermittedSpecies:
    Message AmitySquare_Text_PermittedList
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _03C0
    WaitMovement
    ReleaseAll
    End

AmitySquare_HasNationalDex:
    SetVar LOCALID_HAS_NATIONAL_DEX, TRUE
    GoTo AmitySquare_CheckPartyHasSpecies_NationalDex
    End

AmitySquare_ListPermittedSpecies_NationalDex:
    Message AmitySquare_Text_PermittedListNationalDex
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _03C0
    WaitMovement
    ReleaseAll
    End

_01B6:
    SetVar VAR_MAP_LOCAL_A, 0
    GetPartyCount VAR_MAP_LOCAL_B
    SetVar VAR_MAP_LOCAL_C, 0
    GoTo _01CE
    End

_01CE:
    GetPartyMonSpecies VAR_MAP_LOCAL_A, VAR_RESULT
    GoToIfEq VAR_RESULT, SPECIES_NONE, _026D
    CallIfEq LOCALID_HAS_NATIONAL_DEX, FALSE, AmitySquare_CheckAllowedMon
    CallIfEq LOCALID_HAS_NATIONAL_DEX, TRUE, AmitySquare_CheckAllowedMon_NationalDex
    GoToIfEq VAR_RESULT, 0, _026D
    BufferPartyMonNickname 0, VAR_MAP_LOCAL_A
    GoToIfEq VAR_MAP_LOCAL_C, 0, _0229
    GoToIfNe VAR_MAP_LOCAL_C, 0, _024B
    End

_0229:
    AddVar VAR_MAP_LOCAL_C, 1
    Message AmitySquare_Text_OkWouldYouLikeToGoForAStrollWithYourPokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0299
    GoTo _026D
    End

_024B:
    AddVar VAR_MAP_LOCAL_C, 1
    Message AmitySquare_Text_OhOkThenYouWouldRatherGoForAStrollWithYourPokemon
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0299
    GoTo _026D
    End

_026D:
    AddVar VAR_MAP_LOCAL_A, 1
    SubVar VAR_MAP_LOCAL_B, 1
    GoToIfNe VAR_MAP_LOCAL_B, 0, _01CE
    Message AmitySquare_Text_ISeePleaseComeBack
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _03C0
    WaitMovement
    ReleaseAll
    End

_0299:
    HealParty
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    SetVar VAR_FOLLOWER_MON_PARTY_ID, VAR_MAP_LOCAL_A
    GetPartyMonSpecies VAR_MAP_LOCAL_A, VAR_FOLLOWER_MON_SPECIES
    GoTo AmitySquare_SetFollowerGfx
    End

_02BB:
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_02C9:
    AddObject VAR_0x8002
    CallIfEq VAR_0x8001, 1, _032A
    CallIfEq VAR_0x8001, 2, _0338
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar VAR_FOLLOWER_MON_ACTIVE, TRUE
    ClearAmitySquareStepCount
    Call AmitySquare_FollowerMon_SetNextPickUpType
    ScrCmd_27C 0, VAR_FOLLOWER_MON_PARTY_ID
    Message AmitySquare_Text_PleaseDoEnjoyYourTimeTogether
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _03C8
    ApplyMovement VAR_0x8002, _03C8
    WaitMovement
    SetHasPartner
    ScrCmd_06D VAR_0x8002, 48
    ReleaseAll
    End

_032A:
    ScrCmd_187 VAR_0x8002, 12, 2, 47, 2
    Return

_0338:
    ScrCmd_187 VAR_0x8002, 51, 2, 47, 3
    Return

    .byte 188
    .byte 0
    .byte 6
    .byte 0
    .byte 1
    .byte 0
    .byte 1
    .byte 0
    .byte 0
    .byte 0
    .byte 189
    .byte 0
    .byte 44
    .byte 0
    .byte 5
    .byte 52
    .byte 0
    .byte 94
    .byte 0
    .byte 0xFF
    .byte 0
    .byte 97
    .byte 0
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

AmitySquare_Trigger_ExitAmitySquare:
    LockAll
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ClearHasPartner
    GoTo AmitySquare_RemoveFollower
    End

AmitySquare_RemoveFollower:
    RemoveObject 5
    GoTo AmitySquare_Trigger_ExitAmitySquare_End
    End

AmitySquare_Trigger_ExitAmitySquare_End:
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar VAR_FOLLOWER_MON_ACTIVE, FALSE
    Message AmitySquare_Text_AreYouFeelingRefreshedPleaseComeAgainOk
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _03C0
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_03B0:
    MoveAction_034
    EndMovement

    .balign 4, 0
_03B8:
    MoveAction_035
    EndMovement

    .balign 4, 0
_03C0:
    MoveAction_013
    EndMovement

    .balign 4, 0
_03C8:
    MoveAction_012
    EndMovement

    .byte 85
    .byte 0
    .byte 2
    .byte 0
    .byte 2
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

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
    SetVar VAR_FOLLOWER_MON_NEXT_PICKUP_TYPE, PICKUP_TYPE_ACCESORY
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
    SetVar LOCALID_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ITEM_ID
    SetVar LOCALID_COUNT, 1
    GoToIfCannotFitItem LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT, AmitySquare_FollowerMon_PickUp_FailedItem_TryAccessory
    GoTo AmitySquare_FollowerMon_PickUp_GiveItem
    End

AmitySquare_FollowerMon_PickUp_FailedAccessory_TryItem:
    SetVar LOCALID_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ITEM_ID
    SetVar LOCALID_COUNT, 1
    GoToIfCannotFitItem LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT, AmitySquare_FollowerMon_Message
    GoTo AmitySquare_FollowerMon_PickUp_GiveItem
    End

AmitySquare_FollowerMon_PickUp_GiveItem:
    PlayCry VAR_FOLLOWER_MON_SPECIES
    Message AmitySquare_Text_OhPokemonIsHoldingSomething
    WaitCry
    ScrCmd_27C 1, LOCALID_ITEM_OR_ACCESSORY_ID
    IncrementGameRecord RECORD_UNK_051
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

AmitySquare_FollowerMon_PickUp_TryAccessory:
    SetVar LOCALID_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ACCESSORY_ID
    SetVar LOCALID_COUNT, 1
    CanFitAccessory LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, AmitySquare_FollowerMon_PickUp_FailedAccessory_TryItem
    GoTo AmitySquare_FollowerMon_PickUp_GiveAccessory
    End

AmitySquare_FollowerMon_PickUp_FailedItem_TryAccessory:
    SetVar LOCALID_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ACCESSORY_ID
    SetVar LOCALID_COUNT, 1
    CanFitAccessory LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, AmitySquare_FollowerMon_Message
    GoTo AmitySquare_FollowerMon_PickUp_GiveAccessory
    End

AmitySquare_FollowerMon_PickUp_GiveAccessory:
    PlayCry VAR_FOLLOWER_MON_SPECIES
    Message AmitySquare_Text_OhPokemonIsHoldingSomething
    WaitCry
    ScrCmd_27C 2, LOCALID_ITEM_OR_ACCESSORY_ID
    IncrementGameRecord RECORD_UNK_051
    CallCommonScript 0x7DF
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
    WaitABXPadPress
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
    PlayFanfare SEQ_SE_CONFIRM
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
    WaitABXPadPress
    CloseMessage
    ApplyMovement 0, _08C8
    WaitMovement
    ReleaseAll
    End

AmitySquare_EastReceptionist_End:
    WaitABXPadPress
    CloseMessage
    ApplyMovement 1, _08D0
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_08C8:
    MoveAction_003
    EndMovement

    .balign 4, 0
_08D0:
    MoveAction_002
    EndMovement

AmitySquare_DrifloonMan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message AmitySquare_Text_TheseRuinsAreFromALongLongTimeAgo
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

AmitySquare_Drifloon:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_DRIFLOON
    Message AmitySquare_Text_DrifloonFoon
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

AmitySquare_HappinyWoman:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message AmitySquare_Text_IComeHereWithMyHappinyEverySingleDay
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

AmitySquare_Happiny:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message AmitySquare_Text_HappinyAppearsToBeDrowsy
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

AmitySquare_PikachuMan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message AmitySquare_Text_OohIJustCantBelieveIt
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

AmitySquare_Pikachu:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PIKACHU
    Message AmitySquare_Text_PikachuPikkaPika
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

AmitySquare_ClefairyGirl:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message AmitySquare_Text_YouShouldTalkToYourPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

AmitySquare_Clefairy:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message AmitySquare_Text_ThereIsSomethingShinyInClefairysHands
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

AmitySquare_CheckPartyHasSpecies:
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIKACHU
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CLEFAIRY
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PSYDUCK
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PACHIRISU
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_DRIFLOON
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_BUNEARY
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_HAPPINY
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TURTWIG
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_GROTLE
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TORTERRA
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CHIMCHAR
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_MONFERNO
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_INFERNAPE
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIPLUP
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PRINPLUP
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_EMPOLEON
    GoToIfEq VAR_RESULT, TRUE, _01B6
    GoTo AmitySquare_ListPermittedSpecies
    End

AmitySquare_CheckPartyHasSpecies_NationalDex:
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIKACHU
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CLEFAIRY
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PSYDUCK
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PACHIRISU
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_DRIFLOON
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_BUNEARY
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_HAPPINY
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_JIGGLYPUFF
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TORCHIC
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_SKITTY
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_SHROOMISH
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TURTWIG
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_GROTLE
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TORTERRA
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CHIMCHAR
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_MONFERNO
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_INFERNAPE
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIPLUP
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PRINPLUP
    GoToIfEq VAR_RESULT, TRUE, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_EMPOLEON
    GoToIfEq VAR_RESULT, TRUE, _01B6
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
    GoTo _02BB
    End

AmitySquare_SetFollowerGfx_Pikachu:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PIKACHU
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Torchic:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_TORCHIC
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Clefairy:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_CLEFAIRY
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Psyduck:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PSYDUCK
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Pachirisu:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PACHIRISU
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Drifloon:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_DRIFLOON
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Buneary:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_BUNEARY
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Happiny:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_HAPPINY
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Jigglypuff:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_JIGGLYPUFF
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Skitty:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_SKITTY
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Shroomish:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_SHROOMISH
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Turtwig:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_TURTWIG
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Grottle:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_GROTLE
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Torterra:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_TORTERRA
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Chimchar:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_CHIMCHAR
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Monferno:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_MONFERNO
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Infernape:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_INFERNAPE
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Piplup:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PIPLUP
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Prinplup:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PRINPLUP
    GoTo _1072
    End

AmitySquare_SetFollowerGfx_Empoleon:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_EMPOLEON
    GoTo _1072
    End

_1072:
    SetVar VAR_0x8002, 5
    ClearFlag FLAG_UNK_0x02A1
    GoTo _02C9
    End

AmitySquare_FollowerMon:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPartyMonNickname 0, VAR_FOLLOWER_MON_PARTY_ID
    GetAmitySquareStepCount VAR_RESULT
    GoToIfGe VAR_RESULT, 200, AmitySquare_FollowerMon_PickUp
    GoTo AmitySquare_FollowerMon_Message
    End

AmitySquare_GiftMan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_AMITY_SQUARE_MAN_GIFT_RECEIVED, AmitySquare_GiftMan_ReceivedGift
    Message AmitySquare_Text_HelloHowDoYouDoILoveThisPark
    GetAmitySquareBerryOrAccessoryIDFromMan VAR_AMITY_SQUARE_GIFT_ID, LOCALID_ITEM_OR_ACCESSORY_ID
    GoToIfAmitySquareManGiftIsNotAccesory VAR_AMITY_SQUARE_GIFT_ID, AmitySquare_GiftMan_ItemGift
    GoTo AmitySquare_GiftMan_AccessoryGift
    End

AmitySquare_GiftMan_ItemGift:
    BufferItemName 0, LOCALID_ITEM_OR_ACCESSORY_ID
    Message AmitySquare_Text_DoYouKnowTheItemIFoundSome
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, AmitySquare_GiftMan_DeclinedGift
    SetVar LOCALID_COUNT, 5
    GoToIfCannotFitItem LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT, AmitySquare_GiftMan_CannotFitItem
    BufferPlayerName 0
    BufferItemNamePlural 1, LOCALID_ITEM_OR_ACCESSORY_ID
    PlaySound SEQ_FANFA4
    Message AmitySquare_Text_PlayerReceivedItem
    WaitSound
    AddItem LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT
    GoTo AmitySquare_GiftMan_ReceivedGift
    End

AmitySquare_GiftMan_AccessoryGift:
    BufferAccessoryName 0, LOCALID_ITEM_OR_ACCESSORY_ID
    Message AmitySquare_Text_DoYouKnowTheItemIFoundSome
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, AmitySquare_GiftMan_DeclinedGift
    SetVar LOCALID_COUNT, 1
    CallCommonScript 0x7DF
    GoTo AmitySquare_GiftMan_ReceivedGift
    End

AmitySquare_GiftMan_DeclinedGift:
    Message AmitySquare_Text_OhItsNoProblemToMe
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

AmitySquare_GiftMan_CannotFitItem:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

AmitySquare_GiftMan_ReceivedGift:
    SetFlag FLAG_AMITY_SQUARE_MAN_GIFT_RECEIVED
    Message AmitySquare_Text_HahahahPerhapsIllSeeYouAgainTomorrow
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_118B:
    SetVar VAR_0x8003, 1
    GoTo _1305
    End

_1199:
    SetVar VAR_0x8003, 2
    GoTo _1305
    End

_11A7:
    SetVar VAR_0x8003, 3
    GoTo _1305
    End

_11B5:
    SetVar VAR_0x8003, 4
    GoTo _1305
    End

_11C3:
    SetVar VAR_0x8003, 5
    GoTo _1305
    End

_11D1:
    SetVar VAR_0x8003, 6
    GoTo _1305
    End

_11DF:
    SetVar VAR_0x8003, 7
    GoTo _1305
    End

_11ED:
    SetVar VAR_0x8003, 8
    GoTo _1305
    End

_11FB:
    SetVar VAR_0x8003, 9
    GoTo _1305
    End

_1209:
    SetVar VAR_0x8003, 10
    GoTo _1305
    End

_1217:
    SetVar VAR_0x8003, 11
    GoTo _1305
    End

_1225:
    SetVar VAR_0x8003, 12
    GoTo _1305
    End

_1233:
    SetVar VAR_0x8003, 13
    GoTo _1305
    End

_1241:
    SetVar VAR_0x8003, 14
    GoTo _1305
    End

_124F:
    SetVar VAR_0x8003, 15
    GoTo _1305
    End

_125D:
    SetVar VAR_0x8003, 16
    GoTo _1305
    End

_126B:
    SetVar VAR_0x8003, 17
    GoTo _1305
    End

_1279:
    SetVar VAR_0x8003, 18
    GoTo _1305
    End

_1287:
    SetVar VAR_0x8003, 19
    GoTo _1305
    End

_1295:
    SetVar VAR_0x8003, 20
    GoTo _1305
    End

_12A3:
    SetVar VAR_0x8003, 21
    GoTo _1305
    End

_12B1:
    SetVar VAR_0x8003, 22
    GoTo _1305
    End

_12BF:
    SetVar VAR_0x8003, 23
    GoTo _1305
    End

_12CD:
    SetVar VAR_0x8003, 24
    GoTo _1305
    End

_12DB:
    SetVar VAR_0x8003, 25
    GoTo _1305
    End

_12E9:
    SetVar VAR_0x8003, 26
    GoTo _1305
    End

_12F7:
    SetVar VAR_0x8003, 27
    GoTo _1305
    End

_1305:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    LockAll
    WaitTime 1, VAR_RESULT
    ScrCmd_32D
    ScrCmd_338
    ApplyMovement 5, _1758
    WaitMovement
    PlayFanfare SEQ_SE_DP_GYURU
    CallIfEq VAR_0x8003, 1, _14C2
    CallIfEq VAR_0x8003, 2, _14DA
    CallIfEq VAR_0x8003, 3, _14F2
    CallIfEq VAR_0x8003, 4, _150A
    CallIfEq VAR_0x8003, 5, _1522
    CallIfEq VAR_0x8003, 6, _153A
    CallIfEq VAR_0x8003, 7, _1552
    CallIfEq VAR_0x8003, 8, _156A
    CallIfEq VAR_0x8003, 9, _1582
    CallIfEq VAR_0x8003, 10, _159A
    CallIfEq VAR_0x8003, 11, _15B2
    CallIfEq VAR_0x8003, 12, _15CA
    CallIfEq VAR_0x8003, 13, _15E2
    CallIfEq VAR_0x8003, 14, _15FA
    CallIfEq VAR_0x8003, 15, _1612
    CallIfEq VAR_0x8003, 16, _162A
    CallIfEq VAR_0x8003, 17, _1642
    CallIfEq VAR_0x8003, 18, _165A
    CallIfEq VAR_0x8003, 19, _1672
    CallIfEq VAR_0x8003, 20, _168A
    CallIfEq VAR_0x8003, 21, _16A2
    CallIfEq VAR_0x8003, 22, _16BA
    CallIfEq VAR_0x8003, 23, _16D2
    CallIfEq VAR_0x8003, 24, _16EA
    CallIfEq VAR_0x8003, 25, _1702
    CallIfEq VAR_0x8003, 26, _171A
    CallIfEq VAR_0x8003, 27, _1732
    ApplyMovement LOCALID_PLAYER, _1764
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ApplyMovement 5, _1764
    WaitMovement
    ReleaseAll
    ApplyMovement LOCALID_PLAYER, _1770
    WaitMovement
    ScrCmd_32E
    ScrCmd_339
    WaitTime 2, VAR_RESULT
    End

_14C2:
    ApplyMovement LOCALID_PLAYER, _1778
    WaitMovement
    ScrCmd_187 5, 35, 2, 15, 1
    Return

_14DA:
    ApplyMovement LOCALID_PLAYER, _1780
    WaitMovement
    ScrCmd_187 5, 35, 2, 15, 1
    Return

_14F2:
    ApplyMovement LOCALID_PLAYER, _178C
    WaitMovement
    ScrCmd_187 5, 35, 2, 15, 1
    Return

_150A:
    ApplyMovement LOCALID_PLAYER, _1798
    WaitMovement
    ScrCmd_187 5, 17, 2, 16, 1
    Return

_1522:
    ApplyMovement LOCALID_PLAYER, _17A4
    WaitMovement
    ScrCmd_187 5, 17, 2, 16, 1
    Return

_153A:
    ApplyMovement LOCALID_PLAYER, _17B0
    WaitMovement
    ScrCmd_187 5, 17, 2, 16, 1
    Return

_1552:
    ApplyMovement LOCALID_PLAYER, _17BC
    WaitMovement
    ScrCmd_187 5, 47, 4, 8, 1
    Return

_156A:
    ApplyMovement LOCALID_PLAYER, _17C8
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_1582:
    ApplyMovement LOCALID_PLAYER, _17D4
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_159A:
    ApplyMovement LOCALID_PLAYER, _17E0
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_15B2:
    ApplyMovement LOCALID_PLAYER, _17EC
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_15CA:
    ApplyMovement LOCALID_PLAYER, _17F8
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_15E2:
    ApplyMovement LOCALID_PLAYER, _1804
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_15FA:
    ApplyMovement LOCALID_PLAYER, _1810
    WaitMovement
    ScrCmd_187 5, 26, 6, 9, 1
    Return

_1612:
    ApplyMovement LOCALID_PLAYER, _181C
    WaitMovement
    ScrCmd_187 5, 41, 3, 16, 1
    Return

_162A:
    ApplyMovement LOCALID_PLAYER, _1828
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_1642:
    ApplyMovement LOCALID_PLAYER, _1834
    WaitMovement
    ScrCmd_187 5, 41, 3, 16, 1
    Return

_165A:
    ApplyMovement LOCALID_PLAYER, _1840
    WaitMovement
    ScrCmd_187 5, 26, 6, 9, 1
    Return

_1672:
    ApplyMovement LOCALID_PLAYER, _184C
    WaitMovement
    ScrCmd_187 5, 47, 4, 8, 1
    Return

_168A:
    ApplyMovement LOCALID_PLAYER, _1854
    WaitMovement
    ScrCmd_187 5, 47, 2, 34, 1
    Return

_16A2:
    ApplyMovement LOCALID_PLAYER, _1860
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_16BA:
    ApplyMovement LOCALID_PLAYER, _186C
    WaitMovement
    ScrCmd_187 5, 47, 4, 8, 1
    Return

_16D2:
    ApplyMovement LOCALID_PLAYER, _1878
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_16EA:
    ApplyMovement LOCALID_PLAYER, _1884
    WaitMovement
    ScrCmd_187 5, 47, 2, 34, 1
    Return

_1702:
    ApplyMovement LOCALID_PLAYER, _1890
    WaitMovement
    ScrCmd_187 5, 52, 4, 25, 1
    Return

_171A:
    ApplyMovement LOCALID_PLAYER, _189C
    WaitMovement
    ScrCmd_187 5, 15, 4, 10, 1
    Return

_1732:
    ApplyMovement LOCALID_PLAYER, _18A8
    WaitMovement
    ScrCmd_187 5, 33, 5, 7, 1
    Return

_174A:
    LockAll
    SetVar VAR_UNK_0x40AC, 0
    ReleaseAll
    End

    .balign 4, 0
_1758:
    MoveAction_001
    MoveAction_069
    EndMovement

    .balign 4, 0
_1764:
    MoveAction_001
    MoveAction_070
    EndMovement

    .balign 4, 0
_1770:
    MoveAction_013
    EndMovement

    .balign 4, 0
_1778:
    MoveAction_023 18
    EndMovement

    .balign 4, 0
_1780:
    MoveAction_023 19
    MoveAction_020
    EndMovement

    .balign 4, 0
_178C:
    MoveAction_023 17
    MoveAction_020
    EndMovement

    .balign 4, 0
_1798:
    MoveAction_022 18
    MoveAction_021 2
    EndMovement

    .balign 4, 0
_17A4:
    MoveAction_022 17
    MoveAction_021
    EndMovement

    .balign 4, 0
_17B0:
    MoveAction_022 19
    MoveAction_021
    EndMovement

    .balign 4, 0
_17BC:
    MoveAction_022 5
    MoveAction_020 16
    EndMovement

    .balign 4, 0
_17C8:
    MoveAction_022 18
    MoveAction_020 18
    EndMovement

    .balign 4, 0
_17D4:
    MoveAction_022 38
    MoveAction_020 15
    EndMovement

    .balign 4, 0
_17E0:
    MoveAction_023 5
    MoveAction_021 18
    EndMovement

    .balign 4, 0
_17EC:
    MoveAction_022 31
    MoveAction_021 2
    EndMovement

    .balign 4, 0
_17F8:
    MoveAction_022 15
    MoveAction_020
    EndMovement

    .balign 4, 0
_1804:
    MoveAction_023 37
    MoveAction_021 16
    EndMovement

    .balign 4, 0
_1810:
    MoveAction_023 12
    MoveAction_020
    EndMovement

    .balign 4, 0
_181C:
    MoveAction_023 25
    MoveAction_021 6
    EndMovement

    .balign 4, 0
_1828:
    MoveAction_023 19
    MoveAction_021 19
    EndMovement

    .balign 4, 0
_1834:
    MoveAction_023 9
    MoveAction_021 9
    EndMovement

    .balign 4, 0
_1840:
    MoveAction_022 8
    MoveAction_021 2
    EndMovement

    .balign 4, 0
_184C:
    MoveAction_023 21
    EndMovement

    .balign 4, 0
_1854:
    MoveAction_023 22
    MoveAction_021 25
    EndMovement

    .balign 4, 0
_1860:
    MoveAction_022 12
    MoveAction_021
    EndMovement

    .balign 4, 0
_186C:
    MoveAction_023 6
    MoveAction_020 7
    EndMovement

    .balign 4, 0
_1878:
    MoveAction_022 7
    MoveAction_020 9
    EndMovement

    .balign 4, 0
_1884:
    MoveAction_023 5
    MoveAction_021 18
    EndMovement

    .balign 4, 0
_1890:
    MoveAction_023 5
    MoveAction_020 8
    EndMovement

    .balign 4, 0
_189C:
    MoveAction_022 31
    MoveAction_020 24
    EndMovement

    .balign 4, 0
_18A8:
    MoveAction_022 15
    MoveAction_020 27
    EndMovement
