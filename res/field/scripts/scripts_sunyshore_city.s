#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city.h"
#include "res/field/events/events_sunyshore_city.h"


    ScriptEntry SunyshoreCity_OnFrameFlint
    ScriptEntry SunyshoreCity_Unused2
    ScriptEntry SunyshoreCity_Sailor2
    ScriptEntry SunyshoreCity_Sailor1
    ScriptEntry SunyshoreCity_Worker
    ScriptEntry SunyshoreCity_PokefanF
    ScriptEntry SunyshoreCity_PokemonBreederF
    ScriptEntry SunyshoreCity_TriggerRivalAndJasmine
    ScriptEntry SunyshoreCity_Jasmine
    ScriptEntry SunyshoreCity_MapSign
    ScriptEntry SunyshoreCity_GymSign
    ScriptEntry SunyshoreCity_SignVistaLighthouse
    ScriptEntry SunyshoreCity_SignSunyshoreMarket
    ScriptEntry SunyshoreCity_SignJuliasHouse
    ScriptEntry SunyshoreCity_SignBlank
    ScriptEntry SunyshoreCity_SignPokemonRock
    ScriptEntry SunyshoreCity_UnusedSealMerchant
    ScriptEntry SunyshoreCity_Flint
    ScriptEntry SunyshoreCity_OnTransition
    ScriptEntryEnd

SunyshoreCity_OnTransition:
    CallIfEq VAR_SANDGEM_TOWN_LAB_STATE, 2, SunyshoreCity_HideSandgemTownLabCounterpart
    CallIfEq VAR_SANDGEM_TOWN_LAB_STATE, 3, SunyshoreCity_HideSandgemTownLabCounterpart
    GoToIfEq VAR_SUNYSHORE_STATE, 0, SunyshoreCity_SetFlintPositionAtGate
    End

SunyshoreCity_HideSandgemTownLabCounterpart:
    SetFlag FLAG_HIDE_SANDGEM_TOWN_LAB_COUNTERPART
    SetVar VAR_SANDGEM_TOWN_LAB_STATE, 4
    Return

SunyshoreCity_SetFlintPositionAtGate:
    SetObjectEventPos LOCALID_FLINT, 841, 790
    SetObjectEventMovementType LOCALID_FLINT, MOVEMENT_TYPE_LOOK_WEST
    SetObjectEventDir LOCALID_FLINT, DIR_WEST
    End

SunyshoreCity_TriggerRivalAndJasmine:
    LockAll
    ApplyMovement LOCALID_JASMINE, SunyshoreCity_Movement_JasmineNoticePlayer
    WaitMovement
    ClearFlag FLAG_HIDE_SUNYSHORE_CITY_RIVAL
    AddObject LOCALID_RIVAL
    LockObject LOCALID_RIVAL
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 853, SunyshoreCity_RivalEnterX853
    GoToIfEq VAR_0x8004, 854, SunyshoreCity_RivalEnterX854
    GoToIfEq VAR_0x8004, 855, SunyshoreCity_RivalEnterX855
    GoToIfEq VAR_0x8004, 856, SunyshoreCity_RivalEnterX856
    GoToIfEq VAR_0x8004, 857, SunyshoreCity_RivalEnterX857
    End

SunyshoreCity_RivalEnterX853:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalEnterX853
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchRivalEnterWest
    WaitMovement
    GoTo SunyshoreCity_RivalAndJasmine
    End

SunyshoreCity_RivalEnterX854:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalEnterX854
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchRivalEnterWest
    WaitMovement
    GoTo SunyshoreCity_RivalAndJasmine
    End

SunyshoreCity_RivalEnterX855:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalEnterX855
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchRivalEnterX855
    WaitMovement
    GoTo SunyshoreCity_RivalAndJasmine
    End

SunyshoreCity_RivalEnterX856:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalEnterX856
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchRivalEnterEast
    WaitMovement
    GoTo SunyshoreCity_RivalAndJasmine
    End

SunyshoreCity_RivalEnterX857:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalEnterX857
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchRivalEnterEast
    WaitMovement
    GoTo SunyshoreCity_RivalAndJasmine
    End

SunyshoreCity_RivalAndJasmine:
    BufferRivalName 0
    BufferPlayerName 1
    Message SunyshoreCity_Text_YouGotAllBadges
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalWalkOnSpotSouth
    WaitMovement
    Message SunyshoreCity_Text_YouWatchMe
    CallIfEq VAR_0x8004, 853, SunyshoreCity_RivalFacePlayerX853
    CallIfEq VAR_0x8004, 854, SunyshoreCity_RivalFacePlayerX854
    CallIfEq VAR_0x8004, 855, SunyshoreCity_RivalFacePlayerX855
    CallIfEq VAR_0x8004, 856, SunyshoreCity_RivalFacePlayerX856
    CallIfEq VAR_0x8004, 857, SunyshoreCity_RivalFacePlayerX857
    Message SunyshoreCity_Text_HurryToPokemonLeague
    CloseMessage
    CallIfEq VAR_0x8004, 853, SunyshoreCity_RivalLeaveX853
    CallIfEq VAR_0x8004, 854, SunyshoreCity_RivalLeaveX854
    CallIfEq VAR_0x8004, 855, SunyshoreCity_RivalLeaveX855
    CallIfEq VAR_0x8004, 856, SunyshoreCity_RivalLeaveX856
    CallIfEq VAR_0x8004, 857, SunyshoreCity_RivalLeaveX857
    RemoveObject LOCALID_RIVAL
    CallIfEq VAR_0x8004, 853, SunyshoreCity_JasmineWalkToPlayerX853
    CallIfEq VAR_0x8004, 854, SunyshoreCity_JasmineWalkToPlayerX854
    CallIfEq VAR_0x8004, 855, SunyshoreCity_JasmineWalkToPlayerX855
    CallIfEq VAR_0x8004, 856, SunyshoreCity_JasmineWalkToPlayerX856
    CallIfEq VAR_0x8004, 857, SunyshoreCity_JasmineWalkToPlayerX857
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    Message SunyshoreCity_Text_HaveThisAsMyThanks
    Call SunyshoreCity_GiveWaterfall
    CloseMessage
    CallIfEq VAR_0x8004, 853, SunyshoreCity_JasmineLeaveX853
    CallIfEq VAR_0x8004, 854, SunyshoreCity_JasmineLeaveX854
    CallIfEq VAR_0x8004, 855, SunyshoreCity_JasmineLeaveX855
    CallIfEq VAR_0x8004, 856, SunyshoreCity_JasmineLeaveX856
    CallIfEq VAR_0x8004, 857, SunyshoreCity_JasmineLeaveX857
    SetVar VAR_SUNYSHORE_STATE, 3
    ReleaseAll
    End

SunyshoreCity_RivalFacePlayerX853:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalWalkOnSpotWest
    WaitMovement
    Return

SunyshoreCity_RivalFacePlayerX854:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalWalkOnSpotWest
    WaitMovement
    Return

SunyshoreCity_RivalFacePlayerX855:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalWalkOnSpotNorth
    WaitMovement
    Return

SunyshoreCity_RivalFacePlayerX856:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalWalkOnSpotEast
    WaitMovement
    Return

SunyshoreCity_RivalFacePlayerX857:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalWalkOnSpotEast
    WaitMovement
    Return

SunyshoreCity_RivalLeaveX853:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalLeaveX853
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchRivalLeave
    WaitMovement
    Return

SunyshoreCity_RivalLeaveX854:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalLeaveX854
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchRivalLeave
    WaitMovement
    Return

SunyshoreCity_RivalLeaveX855:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalLeaveX855
    WaitMovement
    Return

SunyshoreCity_RivalLeaveX856:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalLeaveX856
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchRivalLeave
    WaitMovement
    Return

SunyshoreCity_RivalLeaveX857:
    ApplyMovement LOCALID_RIVAL, SunyshoreCity_Movement_RivalLeaveX857
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchRivalLeave
    WaitMovement
    Return

SunyshoreCity_JasmineWalkToPlayerX853:
    ApplyMovement LOCALID_JASMINE, SunyshoreCity_Movement_JasmineWalkToPlayerX853
    WaitMovement
    Return

SunyshoreCity_JasmineWalkToPlayerX854:
    ApplyMovement LOCALID_JASMINE, SunyshoreCity_Movement_JasmineWalkToPlayerX854
    WaitMovement
    Return

SunyshoreCity_JasmineWalkToPlayerX855:
    ApplyMovement LOCALID_JASMINE, SunyshoreCity_Movement_JasmineWalkToPlayerX855
    WaitMovement
    Return

SunyshoreCity_JasmineWalkToPlayerX856:
    ApplyMovement LOCALID_JASMINE, SunyshoreCity_Movement_JasmineWalkToPlayerX856
    WaitMovement
    Return

SunyshoreCity_JasmineWalkToPlayerX857:
    ApplyMovement LOCALID_JASMINE, SunyshoreCity_Movement_JasmineWalkToPlayerX857
    WaitMovement
    Return

SunyshoreCity_JasmineLeaveX853:
    ApplyMovement LOCALID_JASMINE, SunyshoreCity_Movement_JasmineLeaveX853
    WaitMovement
    Return

SunyshoreCity_JasmineLeaveX854:
    ApplyMovement LOCALID_JASMINE, SunyshoreCity_Movement_JasmineLeaveX854
    WaitMovement
    Return

SunyshoreCity_JasmineLeaveX855:
    ApplyMovement LOCALID_JASMINE, SunyshoreCity_Movement_JasmineLeaveX855
    WaitMovement
    Return

SunyshoreCity_JasmineLeaveX856:
    ApplyMovement LOCALID_JASMINE, SunyshoreCity_Movement_JasmineLeaveX856
    WaitMovement
    Return

SunyshoreCity_JasmineLeaveX857:
    ApplyMovement LOCALID_JASMINE, SunyshoreCity_Movement_JasmineLeaveX857
    WaitMovement
    Return

    .balign 4, 0
SunyshoreCity_Movement_JasmineWalkToPlayerX853:
    WalkNormalWest 4
    WalkNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_JasmineWalkToPlayerX854:
    WalkNormalWest 3
    WalkNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_JasmineWalkToPlayerX855:
    WalkNormalWest 2
    WalkNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_JasmineWalkToPlayerX856:
    WalkNormalWest
    WalkNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_JasmineWalkToPlayerX857:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_JasmineLeaveX853:
    WalkNormalNorth
    WalkNormalEast 4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_JasmineLeaveX854:
    WalkNormalNorth
    WalkNormalEast 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_JasmineLeaveX855:
    WalkNormalNorth
    WalkNormalEast 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_JasmineLeaveX856:
    WalkNormalNorth
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_JasmineLeaveX857:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalEnterX853:
    Delay8
    WalkFastNorth 4
    WalkFastWest
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalEnterX854:
    Delay8
    WalkFastNorth 4
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalEnterX855:
    Delay8
    WalkFastNorth 3
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalEnterX856:
    Delay8
    WalkFastNorth 4
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalEnterX857:
    Delay8
    WalkFastNorth 4
    WalkFastEast
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalWalkOnSpotSouth:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalWalkOnSpotWest:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalWalkOnSpotNorth:
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalWalkOnSpotEast:
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalLeaveX853:
    WalkFastSouth 8
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalLeaveX854:
    WalkFastSouth 8
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalLeaveX855:
    WalkFastSouth 8
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalLeaveX856:
    WalkFastSouth 8
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_RivalLeaveX857:
    WalkFastSouth 8
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_JasmineNoticePlayer:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_PlayerWatchRivalEnterWest:
    WalkOnSpotNormalSouth
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_PlayerWatchRivalEnterX855:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_PlayerWatchRivalEnterEast:
    WalkOnSpotNormalSouth
    Delay8 2
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_PlayerWatchRivalLeave:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

SunyshoreCity_Jasmine:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_SUNYSHORE_CITY_HM07, SunyshoreCity_ICameToGetStronger
    Message SunyshoreCity_Text_FeelAtHome
    CheckBadgeAcquired BADGE_ID_BEACON, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, SunyshoreCity_ForcedToTurnBack
    GoTo SunyshoreCity_ICameToGetStronger
    End

SunyshoreCity_ForcedToTurnBack:
    Message SunyshoreCity_Text_ForcedToTurnBack
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCity_ICameToGetStronger:
    Message SunyshoreCity_Text_ICameToGetStronger
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCity_GiveWaterfall:
    Message SunyshoreCity_Text_ThisIsntMuchBut
    SetVar VAR_0x8004, ITEM_HM07
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_SUNYSHORE_CITY_HM07
    Message SunyshoreCity_Text_ThatHMContainsWaterfall
    Return

SunyshoreCity_OnFrameFlint:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 790, SunyshoreCity_FlintWalkToPlayerZ790
    GoToIfEq VAR_0x8005, 791, SunyshoreCity_FlintWalkToPlayerZ791
    End

SunyshoreCity_FlintWalkToPlayerZ790:
    ApplyMovement LOCALID_FLINT, SunyshoreCity_Movement_FlintWalkToPlayerZ790
    WaitMovement
    GoTo SunyshoreCity_GiveVolknerHotBattle

SunyshoreCity_FlintWalkToPlayerZ791:
    ApplyMovement LOCALID_FLINT, SunyshoreCity_Movement_FlintWalkToPlayerZ791
    WaitMovement
    GoTo SunyshoreCity_GiveVolknerHotBattle

SunyshoreCity_GiveVolknerHotBattle:
    Message SunyshoreCity_Text_TheNamesFlint
    CloseMessage
    ApplyMovement LOCALID_FLINT, SunyshoreCity_Movement_FlintWalkOnSpotNormalSouth
    WaitMovement
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_FLINT, SunyshoreCity_Movement_FlintWalkOnSpotNormalWest
    WaitMovement
    Message SunyshoreCity_Text_GiveVolknerHotBattle
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_FLINT, SunyshoreCity_Movement_FlintLeave
    WaitMovement
    RemoveObject LOCALID_FLINT
    WaitTime 1, VAR_RESULT
    SetObjectEventPos LOCALID_FLINT, 845, 748
    SetObjectEventMovementType LOCALID_FLINT, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectEventDir LOCALID_FLINT, DIR_SOUTH
    ClearFlag FLAG_HIDE_SUNYSHORE_CITY_FLINT
    AddObject LOCALID_FLINT
    SetVar VAR_SUNYSHORE_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
SunyshoreCity_Movement_FlintWalkToPlayerZ790:
    WalkNormalWest 3
    WalkOnSpotNormalWest
    EmoteExclamationMark
    WalkNormalWest 5
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_FlintWalkToPlayerZ791:
    WalkNormalSouth
    WalkNormalWest 3
    WalkOnSpotNormalWest
    EmoteExclamationMark
    WalkNormalWest 5
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_FlintWalkOnSpotNormalSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_FlintWalkOnSpotNormalWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_FlintLeave:
    WalkNormalEast 9
    EndMovement

SunyshoreCity_Unused2:
    NPCMessage SunyshoreCity_Text_Dummy14
    End

SunyshoreCity_Sailor2:
    NPCMessage SunyshoreCity_Text_PeopleAndPokemonAdapt
    End

SunyshoreCity_Sailor1:
    NPCMessage SunyshoreCity_Text_ThatGiantRock
    End

SunyshoreCity_Worker:
    NPCMessage SunyshoreCity_Text_GymUsesTooMuchElectricity
    End

SunyshoreCity_PokefanF:
    NPCMessage SunyshoreCity_Text_CityUsesALotOfElectricity
    End

SunyshoreCity_PokemonBreederF:
    NPCMessage SunyshoreCity_Text_MajorPortTown
    End

SunyshoreCity_MapSign:
    ShowMapSign SunyshoreCity_Text_MapSign
    End

SunyshoreCity_GymSign:
    ShowScrollingSign SunyshoreCity_Text_SignPokemonGym
    End

SunyshoreCity_SignVistaLighthouse:
    ShowLandmarkSign SunyshoreCity_Text_SignVistaLighthouse
    End

SunyshoreCity_SignSunyshoreMarket:
    ShowLandmarkSign SunyshoreCity_Text_SignSunyshoreMarket
    End

SunyshoreCity_SignJuliasHouse:
    ShowLandmarkSign SunyshoreCity_Text_SignJuliasHouse
    End

SunyshoreCity_SignBlank:
    ShowLandmarkSign SunyshoreCity_Text_SignBlank
    End

SunyshoreCity_SignPokemonRock:
    ShowLandmarkSign SunyshoreCity_Text_SignPokemonRock
    End

SunyshoreCity_UnusedSealMerchant:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Common_VendorGreeting
    CloseMessageWithoutErasing
    GetDayOfWeek VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_SUNDAY, SunyshoreCity_UnusedSealMerchantSunday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_MONDAY, SunyshoreCity_UnusedSealMerchantMonday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_TUESDAY, SunyshoreCity_UnusedSealMerchantTuesday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_WEDNESDAY, SunyshoreCity_UnusedSealMerchantWednesday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_THURSDAY, SunyshoreCity_UnusedSealMerchantThursday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_FRIDAY, SunyshoreCity_UnusedSealMerchantFriday
    GoToIfEq VAR_0x8008, DAY_OF_WEEK_SATURDAY, SunyshoreCity_UnusedSealMerchantSaturday
    End

SunyshoreCity_UnusedSealMerchantSunday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_MONDAY
    GoTo SunyshoreCity_UnusedSealMerchantEnd

SunyshoreCity_UnusedSealMerchantMonday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_TUESDAY
    GoTo SunyshoreCity_UnusedSealMerchantEnd

SunyshoreCity_UnusedSealMerchantTuesday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_WEDNESDAY
    GoTo SunyshoreCity_UnusedSealMerchantEnd

SunyshoreCity_UnusedSealMerchantWednesday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_THURSDAY
    GoTo SunyshoreCity_UnusedSealMerchantEnd

SunyshoreCity_UnusedSealMerchantThursday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_FRIDAY
    GoTo SunyshoreCity_UnusedSealMerchantEnd

SunyshoreCity_UnusedSealMerchantFriday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_SATURDAY
    GoTo SunyshoreCity_UnusedSealMerchantEnd

SunyshoreCity_UnusedSealMerchantSaturday:
    PokeMartSeal MART_SEAL_ID_SUNYSHORE_SUNDAY
    GoTo SunyshoreCity_UnusedSealMerchantEnd

SunyshoreCity_UnusedSealMerchantEnd:
    ReleaseAll
    End

SunyshoreCity_Flint:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_VOLKNER_RETURNED_TO_GYM, SunyshoreCity_VolknerFinallyCameBack
    Message SunyshoreCity_Text_VolknerNotBackYet
    WaitButton
    CloseMessage
    ReleaseAll
    End

SunyshoreCity_VolknerFinallyCameBack:
    Message SunyshoreCity_Text_VolknerFinallyCameBack
    CloseMessage
    WaitTime 15, VAR_RESULT
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, SunyshoreCity_FlintLeaveNorth
    GoToIfEq VAR_RESULT, DIR_WEST, SunyshoreCity_FlintLeaveWest
    GoToIfEq VAR_RESULT, DIR_EAST, SunyshoreCity_FlintLeaveEast
    End

SunyshoreCity_FlintLeaveNorth:
    ApplyMovement LOCALID_FLINT, SunyshoreCity_Movement_FlintLeaveNorth
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchFlintLeaveNorthEast
    WaitMovement
    GoTo SunyshoreCity_RemoveVolkner

SunyshoreCity_FlintLeaveWest:
    ApplyMovement LOCALID_FLINT, SunyshoreCity_Movement_FlintLeaveWestEast
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchFlintLeaveWest
    WaitMovement
    GoTo SunyshoreCity_RemoveVolkner

SunyshoreCity_FlintLeaveEast:
    ApplyMovement LOCALID_FLINT, SunyshoreCity_Movement_FlintLeaveWestEast
    ApplyMovement LOCALID_PLAYER, SunyshoreCity_Movement_PlayerWatchFlintLeaveNorthEast
    WaitMovement
    GoTo SunyshoreCity_RemoveVolkner

SunyshoreCity_RemoveVolkner:
    RemoveObject LOCALID_FLINT
    ReleaseAll
    End

    .balign 4, 0
SunyshoreCity_Movement_FlintLeaveNorth:
    WalkNormalEast
    WalkNormalSouth 2
    WalkNormalEast 8
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_FlintLeaveWestEast:
    WalkNormalSouth 2
    WalkNormalEast 9
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_PlayerWatchFlintLeaveNorthEast:
    Delay8
    FaceEast
    EndMovement

    .balign 4, 0
SunyshoreCity_Movement_PlayerWatchFlintLeaveWest:
    Delay8
    WalkOnSpotNormalSouth
    WalkOnSpotNormalEast
    EndMovement
