#include "macros/scrcmd.inc"
#include "res/text/bank/amity_square.h"

#define LOCALID_HAS_NATIONAL_DEX     VAR_MAP_LOCAL_0
#define LOCALID_ITEM_OR_ACCESSORY_ID VAR_0x8004
#define LOCALID_COUNT                VAR_0x8005
#define PICKUP_TYPE_ITEM             0
#define PICKUP_TYPE_ACCESORY         1

    .data

    ScriptEntry _00B6
    ScriptEntry _0126
    ScriptEntry _0365
    ScriptEntry _0140
    ScriptEntry _0365
    ScriptEntry _1084
    ScriptEntry _07F2
    ScriptEntry _0800
    ScriptEntry _08D8
    ScriptEntry _08EB
    ScriptEntry _090A
    ScriptEntry _091D
    ScriptEntry _0930
    ScriptEntry _0943
    ScriptEntry _0962
    ScriptEntry _0975
    ScriptEntry _10AA
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

_0126:
    LockAll
    SetVar VAR_0x8001, 1
    ApplyMovement LOCALID_PLAYER, _03B0
    WaitMovement
    GoTo _015A
    End

_0140:
    LockAll
    SetVar VAR_0x8001, 2
    ApplyMovement LOCALID_PLAYER, _03B8
    WaitMovement
    GoTo _015A
    End

_015A:
    ScrCmd_22D 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0195
    GoTo _0174
    End

_0174:
    SetVar LOCALID_HAS_NATIONAL_DEX, FALSE
    GoTo _0994
    End

_0182:
    Message AmitySquare_Text_PermittedList
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _03C0
    WaitMovement
    ReleaseAll
    End

_0195:
    SetVar LOCALID_HAS_NATIONAL_DEX, TRUE
    GoTo AmitySquare_CheckPartyHasSpecies_NationalDex
    End

_01A3:
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
    CallIfEq LOCALID_HAS_NATIONAL_DEX, FALSE, _0C50
    CallIfEq LOCALID_HAS_NATIONAL_DEX, TRUE, _0D36
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
    GoTo _0E48
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
    SetVar VAR_UNK_0x4099, 1
    ClearAmitySquareStepCount
    Call _03DC
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

_0365:
    LockAll
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ClearHasPartner
    GoTo _037D
    End

_037D:
    RemoveObject 5
    GoTo _0389
    End

_0389:
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar VAR_UNK_0x4099, 0
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

_03DC:
    GetRandom VAR_RESULT, 5
    CallIfEq VAR_RESULT, 0, _040A
    CallIfNe VAR_RESULT, 0, _0412
    CalcAmitySquareFoundAccessory VAR_FOLLOWER_MON_PICKUP_ACCESSORY_ID, VAR_FOLLOWER_MON_SPECIES
    GoTo _041A
    End

_040A:
    SetVar VAR_FOLLOWER_MON_NEXT_PICKUP_TYPE, PICKUP_TYPE_ITEM
    Return

_0412:
    SetVar VAR_FOLLOWER_MON_NEXT_PICKUP_TYPE, PICKUP_TYPE_ACCESORY
    Return

_041A:
    GetRandom VAR_RESULT, 100
    GoToIfLt VAR_RESULT, 20, _0490
    GoToIfLt VAR_RESULT, 35, _0498
    GoToIfLt VAR_RESULT, 50, _04A0
    GoToIfLt VAR_RESULT, 65, _04A8
    GoToIfLt VAR_RESULT, 72, _04B0
    GoToIfLt VAR_RESULT, 79, _04B8
    GoToIfLt VAR_RESULT, 86, _04C0
    GoToIfLt VAR_RESULT, 93, _04C8
    GoTo _04D0
    End

_0490:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_MAGOST_BERRY
    Return

_0498:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_CORNN_BERRY
    Return

_04A0:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_RABUTA_BERRY
    Return

_04A8:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_NOMEL_BERRY
    Return

_04B0:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_SPELON_BERRY
    Return

_04B8:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_PAMTRE_BERRY
    Return

_04C0:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_WATMEL_BERRY
    Return

_04C8:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_DURIN_BERRY
    Return

_04D0:
    SetVar VAR_FOLLOWER_MON_PICKUP_ITEM_ID, ITEM_BELUE_BERRY
    Return

_04D8:
    SetVar VAR_0x8000, VAR_FOLLOWER_MON_NEXT_PICKUP_TYPE
    ClearAmitySquareStepCount
    Call _03DC
    GoToIfEq VAR_0x8000, PICKUP_TYPE_ITEM, _04FB
    GoTo _056C
    End

_04FB:
    SetVar LOCALID_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ITEM_ID
    SetVar LOCALID_COUNT, 1
    GoToIfCannotFitItem LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT, _0595
    GoTo _054D
    End

_0524:
    SetVar LOCALID_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ITEM_ID
    SetVar LOCALID_COUNT, 1
    GoToIfCannotFitItem LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT, _05DD
    GoTo _054D
    End

_054D:
    PlayCry VAR_FOLLOWER_MON_SPECIES
    Message AmitySquare_Text_OhPokemonIsHoldingSomething
    WaitCry
    ScrCmd_27C 1, LOCALID_ITEM_OR_ACCESSORY_ID
    IncrementGameRecord RECORD_UNK_051
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_056C:
    SetVar LOCALID_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ACCESSORY_ID
    SetVar LOCALID_COUNT, 1
    CanFitAccessory LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0524
    GoTo _05BE
    End

_0595:
    SetVar LOCALID_ITEM_OR_ACCESSORY_ID, VAR_FOLLOWER_MON_PICKUP_ACCESSORY_ID
    SetVar LOCALID_COUNT, 1
    CanFitAccessory LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _05DD
    GoTo _05BE
    End

_05BE:
    PlayCry VAR_FOLLOWER_MON_SPECIES
    Message AmitySquare_Text_OhPokemonIsHoldingSomething
    WaitCry
    ScrCmd_27C 2, LOCALID_ITEM_OR_ACCESSORY_ID
    IncrementGameRecord RECORD_UNK_051
    CallCommonScript 0x7DF
    CloseMessage
    ReleaseAll
    End

_05DD:
    BufferPartyMonNickname 0, VAR_FOLLOWER_MON_PARTY_ID
    PlayCry VAR_FOLLOWER_MON_SPECIES
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_GROTLE, _0719
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_TORTERRA, _0719
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_MONFERNO, _0719
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_INFERNAPE, _0719
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_PRINPLUP, _0719
    GoToIfEq VAR_FOLLOWER_MON_SPECIES, SPECIES_EMPOLEON, _0719
    GetRandom VAR_RESULT, 9
    GoToIfEq VAR_RESULT, 0, _06AC
    GoToIfEq VAR_RESULT, 1, _06B7
    GoToIfEq VAR_RESULT, 2, _06C2
    GoToIfEq VAR_RESULT, 3, _06CD
    GoToIfEq VAR_RESULT, 4, _06D8
    GoToIfEq VAR_RESULT, 5, _06E3
    GoToIfEq VAR_RESULT, 6, _06EE
    GoToIfEq VAR_RESULT, 7, _06F9
    GoTo _0704
    End

_06AC:
    Message AmitySquare_Text_PokemonIsHappilyKeepingUp
    GoTo _070F
    End

_06B7:
    Message AmitySquare_Text_PokemonAppearsToBeVeryHappy
    GoTo _070F
    End

_06C2:
    Message AmitySquare_Text_PokemonAppearsToBeFeelingGood
    GoTo _070F
    End

_06CD:
    Message AmitySquare_Text_PokemonIsLookingEndearinglyAtYou
    GoTo _070F
    End

_06D8:
    Message AmitySquare_Text_PokemonIsPickingAtTheGroundForSomeReason
    GoTo _070F
    End

_06E3:
    Message AmitySquare_Text_PokemonAlmostTripped
    GoTo _070F
    End

_06EE:
    Message AmitySquare_Text_PokemonIsSkippingHappily
    GoTo _070F
    End

_06F9:
    Message AmitySquare_Text_PokemonSeemsToBeSoHappyItCantKeepStill
    GoTo _070F
    End

_0704:
    Message AmitySquare_Text_PokemonSeemsToBeEnjoyingTheWalk
    GoTo _070F
    End

_070F:
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0719:
    GetRandom VAR_RESULT, 9
    GoToIfEq VAR_RESULT, 0, _078F
    GoToIfEq VAR_RESULT, 1, _079A
    GoToIfEq VAR_RESULT, 2, _07A5
    GoToIfEq VAR_RESULT, 3, _07B0
    GoToIfEq VAR_RESULT, 4, _07BB
    GoToIfEq VAR_RESULT, 5, _07C6
    GoToIfEq VAR_RESULT, 6, _07D1
    GoToIfEq VAR_RESULT, 7, _07DC
    GoTo _07E7
    End

_078F:
    Message AmitySquare_Text_PokemonIsFollowingAlongRelaxedAndCasual
    GoTo _070F
    End

_079A:
    Message AmitySquare_Text_PokemonAppearsToBeVeryHappy
    GoTo _070F
    End

_07A5:
    Message AmitySquare_Text_PokemonAppearsToBeFeelingGood
    GoTo _070F
    End

_07B0:
    Message AmitySquare_Text_PokemonSnuggledUpClose
    GoTo _070F
    End

_07BB:
    Message AmitySquare_Text_PokemonIsPickingAtTheGroundForSomeReason
    GoTo _070F
    End

_07C6:
    Message AmitySquare_Text_PokemonPretendedToTrip
    GoTo _070F
    End

_07D1:
    Message AmitySquare_Text_PokemonGaveAContentedYawn
    GoTo _070F
    End

_07DC:
    Message AmitySquare_Text_PokemonIsSniffingAtTheGrass
    GoTo _070F
    End

_07E7:
    Message AmitySquare_Text_PokemonSeemsToBeEnjoyingTheWalk
    GoTo _070F
    End

_07F2:
    SetVar VAR_MAP_LOCAL_A, 0
    GoTo _080E
    End

_0800:
    SetVar VAR_MAP_LOCAL_A, 1
    GoTo _080E
    End

_080E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPartyMonNickname 0, VAR_FOLLOWER_MON_PARTY_ID
    GetRandom VAR_RESULT, 6
    CallIfEq VAR_RESULT, 0, _0884
    CallIfEq VAR_RESULT, 1, _0889
    CallIfEq VAR_RESULT, 2, _088E
    CallIfEq VAR_RESULT, 3, _0893
    CallIfEq VAR_RESULT, 4, _0898
    CallIfEq VAR_RESULT, 5, _089D
    GoToIfEq VAR_MAP_LOCAL_A, 0, _08A2
    GoTo _08B4
    End

_0884:
    Message AmitySquare_Text_YourPokemonLooksQuitePleasedFollowingYouAround
    Return

_0889:
    Message AmitySquare_Text_OkTheOwnerOfAmitySquare
    Return

_088E:
    Message AmitySquare_Text_YouMayFindUsefulItemsOnTheGround
    Return

_0893:
    Message AmitySquare_Text_AreYouEnjoyingYourStroll
    Return

_0898:
    Message AmitySquare_Text_ItMakesMeHappySeeingAllTheCutePokemon
    Return

_089D:
    Message AmitySquare_Text_YouMaySpendAllTheTimeYouLikeInAmitySquare
    Return

_08A2:
    WaitABXPadPress
    CloseMessage
    ApplyMovement 0, _08C8
    WaitMovement
    ReleaseAll
    End

_08B4:
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

_08D8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message AmitySquare_Text_TheseRuinsAreFromALongLongTimeAgo
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_08EB:
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

_090A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message AmitySquare_Text_IComeHereWithMyHappinyEverySingleDay
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_091D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message AmitySquare_Text_HappinyAppearsToBeDrowsy
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0930:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message AmitySquare_Text_OohIJustCantBelieveIt
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0943:
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

_0962:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message AmitySquare_Text_YouShouldTalkToYourPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0975:
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

_0994:
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIKACHU
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CLEFAIRY
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PSYDUCK
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PACHIRISU
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_DRIFLOON
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_BUNEARY
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_HAPPINY
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TURTWIG
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_GROTLE
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TORTERRA
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CHIMCHAR
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_MONFERNO
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_INFERNAPE
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIPLUP
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PRINPLUP
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_EMPOLEON
    GoToIfEq VAR_RESULT, 1, _01B6
    GoTo _0182
    End

_0ACC:
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIKACHU
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CLEFAIRY
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PSYDUCK
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PACHIRISU
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_DRIFLOON
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_BUNEARY
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_HAPPINY
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_JIGGLYPUFF
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TORCHIC
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_SKITTY
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_SHROOMISH
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TURTWIG
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_GROTLE
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_TORTERRA
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_CHIMCHAR
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_MONFERNO
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_INFERNAPE
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PIPLUP
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_PRINPLUP
    GoToIfEq VAR_RESULT, 1, _01B6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_EMPOLEON
    GoToIfEq VAR_RESULT, 1, _01B6
    GoTo _01A3
    End

_0C50:
    GetPartyMonSpecies VAR_MAP_LOCAL_A, VAR_RESULT
    GoToIfEq VAR_RESULT, 25, _0D2E
    GoToIfEq VAR_RESULT, 35, _0D2E
    GoToIfEq VAR_RESULT, 54, _0D2E
    GoToIfEq VAR_RESULT, 0x1A1, _0D2E
    GoToIfEq VAR_RESULT, 0x1A9, _0D2E
    GoToIfEq VAR_RESULT, 0x1AB, _0D2E
    GoToIfEq VAR_RESULT, 0x1B8, _0D2E
    GoToIfEq VAR_RESULT, 0x183, _0D2E
    GoToIfEq VAR_RESULT, 0x184, _0D2E
    GoToIfEq VAR_RESULT, 0x185, _0D2E
    GoToIfEq VAR_RESULT, 0x186, _0D2E
    GoToIfEq VAR_RESULT, 0x187, _0D2E
    GoToIfEq VAR_RESULT, 0x188, _0D2E
    GoToIfEq VAR_RESULT, 0x189, _0D2E
    GoToIfEq VAR_RESULT, 0x18A, _0D2E
    GoToIfEq VAR_RESULT, 0x18B, _0D2E
    SetVar VAR_RESULT, 0
    Return

_0D2E:
    SetVar VAR_RESULT, 1
    Return

_0D36:
    GetPartyMonSpecies VAR_MAP_LOCAL_A, VAR_RESULT
    GoToIfEq VAR_RESULT, 25, _0D2E
    GoToIfEq VAR_RESULT, 35, _0D2E
    GoToIfEq VAR_RESULT, 54, _0D2E
    GoToIfEq VAR_RESULT, 0x1A1, _0D2E
    GoToIfEq VAR_RESULT, 0x1A9, _0D2E
    GoToIfEq VAR_RESULT, 0x1AB, _0D2E
    GoToIfEq VAR_RESULT, 0x1B8, _0D2E
    GoToIfEq VAR_RESULT, 39, _0D2E
    GoToIfEq VAR_RESULT, 0xFF, _0D2E
    GoToIfEq VAR_RESULT, 0x12C, _0D2E
    GoToIfEq VAR_RESULT, 0x11D, _0D2E
    GoToIfEq VAR_RESULT, 0x183, _0D2E
    GoToIfEq VAR_RESULT, 0x184, _0D2E
    GoToIfEq VAR_RESULT, 0x185, _0D2E
    GoToIfEq VAR_RESULT, 0x186, _0D2E
    GoToIfEq VAR_RESULT, 0x187, _0D2E
    GoToIfEq VAR_RESULT, 0x188, _0D2E
    GoToIfEq VAR_RESULT, 0x189, _0D2E
    GoToIfEq VAR_RESULT, 0x18A, _0D2E
    GoToIfEq VAR_RESULT, 0x18B, _0D2E
    SetVar VAR_RESULT, 0
    Return

_0E48:
    SetVar VAR_0x8008, VAR_FOLLOWER_MON_SPECIES
    GoToIfEq VAR_0x8008, 25, _0F5A
    GoToIfEq VAR_0x8008, 0xFF, _0F68
    GoToIfEq VAR_0x8008, 35, _0F76
    GoToIfEq VAR_0x8008, 54, _0F84
    GoToIfEq VAR_0x8008, 0x1A1, _0F92
    GoToIfEq VAR_0x8008, 0x1A9, _0FA0
    GoToIfEq VAR_0x8008, 0x1AB, _0FAE
    GoToIfEq VAR_0x8008, 0x1B8, _0FBC
    GoToIfEq VAR_0x8008, 39, _0FCA
    GoToIfEq VAR_0x8008, 0x12C, _0FD8
    GoToIfEq VAR_0x8008, 0x11D, _0FE6
    GoToIfEq VAR_0x8008, 0x183, _0FF4
    GoToIfEq VAR_0x8008, 0x184, _1002
    GoToIfEq VAR_0x8008, 0x185, _1010
    GoToIfEq VAR_0x8008, 0x186, _101E
    GoToIfEq VAR_0x8008, 0x187, _102C
    GoToIfEq VAR_0x8008, 0x188, _103A
    GoToIfEq VAR_0x8008, 0x189, _1048
    GoToIfEq VAR_0x8008, 0x18A, _1056
    GoToIfEq VAR_0x8008, 0x18B, _1064
    GoTo _02BB
    End

_0F5A:
    SetVar VAR_OBJ_GFX_ID_0, 71
    GoTo _1072
    End

_0F68:
    SetVar VAR_OBJ_GFX_ID_0, 78
    GoTo _1072
    End

_0F76:
    SetVar VAR_OBJ_GFX_ID_0, 72
    GoTo _1072
    End

_0F84:
    SetVar VAR_OBJ_GFX_ID_0, 74
    GoTo _1072
    End

_0F92:
    SetVar VAR_OBJ_GFX_ID_0, 204
    GoTo _1072
    End

_0FA0:
    SetVar VAR_OBJ_GFX_ID_0, 185
    GoTo _1072
    End

_0FAE:
    SetVar VAR_OBJ_GFX_ID_0, 206
    GoTo _1072
    End

_0FBC:
    SetVar VAR_OBJ_GFX_ID_0, 207
    GoTo _1072
    End

_0FCA:
    SetVar VAR_OBJ_GFX_ID_0, 73
    GoTo _1072
    End

_0FD8:
    SetVar VAR_OBJ_GFX_ID_0, 79
    GoTo _1072
    End

_0FE6:
    SetVar VAR_OBJ_GFX_ID_0, 205
    GoTo _1072
    End

_0FF4:
    SetVar VAR_OBJ_GFX_ID_0, 220
    GoTo _1072
    End

_1002:
    SetVar VAR_OBJ_GFX_ID_0, 221
    GoTo _1072
    End

_1010:
    SetVar VAR_OBJ_GFX_ID_0, 222
    GoTo _1072
    End

_101E:
    SetVar VAR_OBJ_GFX_ID_0, 223
    GoTo _1072
    End

_102C:
    SetVar VAR_OBJ_GFX_ID_0, 224
    GoTo _1072
    End

_103A:
    SetVar VAR_OBJ_GFX_ID_0, 225
    GoTo _1072
    End

_1048:
    SetVar VAR_OBJ_GFX_ID_0, 226
    GoTo _1072
    End

_1056:
    SetVar VAR_OBJ_GFX_ID_0, 227
    GoTo _1072
    End

_1064:
    SetVar VAR_OBJ_GFX_ID_0, 228
    GoTo _1072
    End

_1072:
    SetVar VAR_0x8002, 5
    ClearFlag FLAG_UNK_0x02A1
    GoTo _02C9
    End

_1084:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPartyMonNickname 0, VAR_FOLLOWER_MON_PARTY_ID
    GetAmitySquareStepCount VAR_RESULT
    GoToIfGe VAR_RESULT, 200, _04D8
    GoTo _05DD
    End

_10AA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_AMITY_SQUARE_MAN_GIFT_RECEIVED, _117C
    Message AmitySquare_Text_HelloHowDoYouDoILoveThisPark
    GetAmitySquareBerryOrAccessoryIDFromMan VAR_AMITY_SQUARE_GIFT_ID, LOCALID_ITEM_OR_ACCESSORY_ID
    GoToIfAmitySquareManGiftIsNotAccesory VAR_AMITY_SQUARE_GIFT_ID, _10E1
    GoTo _1136
    End

_10E1:
    BufferItemName 0, LOCALID_ITEM_OR_ACCESSORY_ID
    Message AmitySquare_Text_DoYouKnowTheItemIFoundSome
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _1161
    SetVar LOCALID_COUNT, 5
    GoToIfCannotFitItem LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT, _1172
    BufferPlayerName 0
    BufferItemNamePlural 1, LOCALID_ITEM_OR_ACCESSORY_ID
    PlaySound SEQ_FANFA4
    Message AmitySquare_Text_PlayerReceivedItem
    WaitSound
    AddItem LOCALID_ITEM_OR_ACCESSORY_ID, LOCALID_COUNT, VAR_RESULT
    GoTo _117C
    End

_1136:
    BufferAccessoryName 0, LOCALID_ITEM_OR_ACCESSORY_ID
    Message AmitySquare_Text_DoYouKnowTheItemIFoundSome
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _1161
    SetVar LOCALID_COUNT, 1
    CallCommonScript 0x7DF
    GoTo _117C
    End

_1161:
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

_1172:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_117C:
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
