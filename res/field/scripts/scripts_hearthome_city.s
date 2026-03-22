#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city.h"
#include "res/field/events/events_hearthome_city.h"
#include "generated/goods.h"


    ScriptEntry HearthomeCity_OnTransition
    ScriptEntry HearthomeCity_PokefanM2
    ScriptEntry HearthomeCity_Hiker2
    ScriptEntry HearthomeCity_Hiker3
    ScriptEntry HearthomeCity_PokefanM1
    ScriptEntry HearthomeCity_PokemonBreederM1
    ScriptEntry HearthomeCity_BattleGirl1
    ScriptEntry HearthomeCity_BattleGirl2
    ScriptEntry HearthomeCity_Hiker1
    ScriptEntry HearthomeCity_Pachirisu
    ScriptEntry HearthomeCity_Fisherman
    ScriptEntry HearthomeCity_PokemonBreederF1
    ScriptEntry HearthomeCity_PokefanF
    ScriptEntry HearthomeCity_BabyInPram1
    ScriptEntry HearthomeCity_MrGoods
    ScriptEntry HearthomeCity_Artist
    ScriptEntry HearthomeCity_PokemonBreederM2
    ScriptEntry HearthomeCity_BabyInPram2
    ScriptEntry HearthomeCity_BlackBelt1
    ScriptEntry HearthomeCity_PokemonBreederF2
    ScriptEntry HearthomeCity_TriggerBunearyAndKeira
    ScriptEntry HearthomeCity_MapSignpost
    ScriptEntry HearthomeCity_GymSignpost
    ScriptEntry HearthomeCity_SignPokemonContestHall
    ScriptEntry HearthomeCity_SignPokemonFanClub
    ScriptEntry HearthomeCity_ArrowSignpostWest
    ScriptEntry HearthomeCity_ArrowSignpostEast
    ScriptEntry HearthomeCity_SignAmitySquareWestGate
    ScriptEntry HearthomeCity_SignAmitySquareEastGate
    ScriptEntry HearthomeCity_SignPoffinHouse
    ScriptEntry HearthomeCity_GymGuide
    ScriptEntry HearthomeCity_BlackBelt2
    ScriptEntryEnd

HearthomeCity_OnTransition:
    End

HearthomeCity_PokefanM2:
    NPCMessage HearthomeCity_Text_TheyFoundAnEggAtTheDayCare
    End

HearthomeCity_Hiker2:
    NPCMessage HearthomeCity_Text_TheyFindEggsInJohtoToo
    End

HearthomeCity_Hiker3:
    NPCMessage HearthomeCity_Text_SometimesEggsAreFoundAtTheDayCare
    End

HearthomeCity_PokefanM1:
    NPCMessage HearthomeCity_Text_EitherTheGymOrAContest
    End

HearthomeCity_PokemonBreederM1:
    NPCMessage HearthomeCity_Text_AtTheLostTowerPeopleUnburdenThemselves
    End

HearthomeCity_BattleGirl1:
    NPCMessage HearthomeCity_Text_ICantDecideWhatAccessories
    End

HearthomeCity_BattleGirl2:
    NPCMessage HearthomeCity_Text_IUsedAFireStoneToEvolve
    End

HearthomeCity_Hiker1:
    NPCMessage HearthomeCity_Text_IWentForAStrollWithPachirisu
    End

HearthomeCity_Pachirisu:
    PokemonCryAndMessage SPECIES_PACHIRISU, HearthomeCity_Text_PachirisuCryKyukyuuh
    End

HearthomeCity_Fisherman:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0001, HearthomeCity_ItMakesMeHappy
    Message HearthomeCity_Text_MayIShowYouToTheContestHall
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, HearthomeCity_IDoApologize
    Message HearthomeCity_Text_PleaseFollowMe
    CloseMessage
    WaitTime 15, VAR_RESULT
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, DIR_NORTH, HearthomeCity_WalkToContestHallNorth
    GoToIfEq VAR_0x8004, DIR_SOUTH, HearthomeCity_WalkToContestHallSouth
    GoToIfEq VAR_0x8004, DIR_WEST, HearthomeCity_WalkToContestHallWest
    GoToIfEq VAR_0x8004, DIR_EAST, HearthomeCity_WalkToContestHallEast
    End

HearthomeCity_ItMakesMeHappy:
    Message HearthomeCity_Text_ItMakesMeHappy
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCity_IDoApologize:
    Message HearthomeCity_Text_IDoApologize
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCity_WalkToContestHallNorth:
    ApplyMovement LOCALID_FISHERMAN, HearthomeCity_Movement_FishermanWalkToContestHallNorthSouthWest
    ApplyMovement LOCALID_PLAYER, HearthomeCity_Movement_PlayerWalkToContestHallNorth
    WaitMovement
    GoTo HearthomeCity_ThisIsTheContestHall
    End

HearthomeCity_WalkToContestHallSouth:
    ApplyMovement LOCALID_FISHERMAN, HearthomeCity_Movement_FishermanWalkToContestHallNorthSouthWest
    ApplyMovement LOCALID_PLAYER, HearthomeCity_Movement_PlayerWalkToContestHallSouth
    WaitMovement
    GoTo HearthomeCity_ThisIsTheContestHall
    End

HearthomeCity_WalkToContestHallWest:
    ApplyMovement LOCALID_FISHERMAN, HearthomeCity_Movement_FishermanWalkToContestHallNorthSouthWest
    ApplyMovement LOCALID_PLAYER, HearthomeCity_Movement_PlayerWalkToContestHallWest
    WaitMovement
    GoTo HearthomeCity_ThisIsTheContestHall
    End

HearthomeCity_WalkToContestHallEast:
    ApplyMovement LOCALID_FISHERMAN, HearthomeCity_Movement_FishermanWalkToContestHallEast
    ApplyMovement LOCALID_PLAYER, HearthomeCity_Movement_PlayerWalkToContestHallEast
    WaitMovement
    GoTo HearthomeCity_ThisIsTheContestHall
    End

HearthomeCity_ThisIsTheContestHall:
    SetFlag FLAG_UNK_0x0001
    Message HearthomeCity_Text_ThisIsTheContestHall
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCity_UnusedMovement:
    EmoteExclamationMark
    Delay16
    EndMovement

    .balign 4, 0
HearthomeCity_Movement_FishermanWalkToContestHallNorthSouthWest:
    WalkNormalWest 20
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
HearthomeCity_Movement_FishermanWalkToContestHallEast:
    WalkNormalNorth
    WalkNormalWest 2
    WalkNormalSouth
    WalkNormalWest 18
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
HearthomeCity_Movement_PlayerWalkToContestHallNorth:
    WalkNormalNorth
    WalkNormalWest 20
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
HearthomeCity_Movement_PlayerWalkToContestHallSouth:
    WalkNormalSouth
    WalkNormalWest 20
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
HearthomeCity_Movement_PlayerWalkToContestHallWest:
    WalkNormalWest
    WalkNormalWest 20
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
HearthomeCity_Movement_PlayerWalkToContestHallEast:
    Delay8 2
    Delay4
    WalkOnSpotNormalWest
    WalkNormalWest 19
    WalkNormalNorth 13
    WalkNormalEast 12
    WalkNormalNorth 3
    EndMovement

HearthomeCity_PokemonBreederF1:
    NPCMessage HearthomeCity_Text_INoticeThingsLikeStairs
    End

HearthomeCity_PokefanF:
    NPCMessage HearthomeCity_Text_HowManyPokemonAreThere
    End

HearthomeCity_BabyInPram1:
    EventMessage HearthomeCity_Text_Apapapu
    End

HearthomeCity_MrGoods:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message HearthomeCity_Text_TheyCallMeMrGoods
    Message HearthomeCity_Text_Hmhmhmhm
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_GLOBE, HearthomeCity_TryGiveGlobe
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_GYM_STATUE, HearthomeCity_TryGiveGlobe
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_CUTE_CUP, HearthomeCity_TryGiveGlobe
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_COOL_CUP, HearthomeCity_TryGiveGlobe
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_BEAUTY_CUP, HearthomeCity_TryGiveGlobe
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_TOUGH_CUP, HearthomeCity_TryGiveGlobe
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_CLEVER_CUP, HearthomeCity_TryGiveGlobe
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_BLUE_CRYSTAL, HearthomeCity_TryGiveGlobe
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_PINK_CRYSTAL, HearthomeCity_TryGiveGlobe
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_RED_CRYSTAL, HearthomeCity_TryGiveGlobe
    GoToIfUnset FLAG_RECEIVED_HEARTHOME_CITY_YELLOW_CRYSTAL, HearthomeCity_TryGiveGlobe
    SetFlag FLAG_RECEIVED_ALL_HEARTHOME_CITY_GOODS
    GoTo HearthomeCity_TalkToMeSomeOtherTime

HearthomeCity_TryGiveGlobe:
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_GLOBE, HearthomeCity_TryGiveGymStatue
    GoToIfUnset FLAG_CONNECTED_TO_WIFI, HearthomeCity_TryGiveGymStatue
    Message HearthomeCity_Text_YourAdventureHasGoneGlobal
    SetVar VAR_0x8004, UG_GOOD_GLOBE
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCity_YourUndergroundPCIsFull
    Common_SendToUndergroundPC
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_GLOBE
    CloseMessage
    ReleaseAll
    End

HearthomeCity_TryGiveGymStatue:
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_GYM_STATUE, HearthomeCity_TryGiveCuteCup
    CountBadgesAcquired VAR_RESULT
    GoToIfLt VAR_RESULT, 8, HearthomeCity_TryGiveCuteCup
    Message HearthomeCity_Text_ConqueredAllGyms
    SetVar VAR_0x8004, UG_GOOD_GYM_STATUE
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCity_YourUndergroundPCIsFull
    Common_SendToUndergroundPC
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_GYM_STATUE
    CloseMessage
    ReleaseAll
    End

HearthomeCity_TryGiveCuteCup:
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_CUTE_CUP, HearthomeCity_TryGiveCoolCup
    GoToIfUnset FLAG_CONTEST_MASTER_CUTE, HearthomeCity_TryGiveCoolCup
    Message HearthomeCity_Text_ConqueredMasterRankCuteContest
    SetVar VAR_0x8004, UG_GOOD_CUTE_CUP
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCity_YourUndergroundPCIsFull
    Common_SendToUndergroundPC
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_CUTE_CUP
    CloseMessage
    ReleaseAll
    End

HearthomeCity_TryGiveCoolCup:
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_COOL_CUP, HearthomeCity_TryGiveBeautyCup
    GoToIfUnset FLAG_CONTEST_MASTER_COOL, HearthomeCity_TryGiveBeautyCup
    Message HearthomeCity_Text_ConqueredMasterRankCoolContest
    SetVar VAR_0x8004, UG_GOOD_COOL_CUP
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCity_YourUndergroundPCIsFull
    Common_SendToUndergroundPC
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_COOL_CUP
    CloseMessage
    ReleaseAll
    End

HearthomeCity_TryGiveBeautyCup:
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_BEAUTY_CUP, HearthomeCity_TryGiveToughCup
    GoToIfUnset FLAG_CONTEST_MASTER_BEAUTY, HearthomeCity_TryGiveToughCup
    Message HearthomeCity_Text_ConqueredMasterRankBeautyContest
    SetVar VAR_0x8004, UG_GOOD_BEAUTY_CUP
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCity_YourUndergroundPCIsFull
    Common_SendToUndergroundPC
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_BEAUTY_CUP
    CloseMessage
    ReleaseAll
    End

HearthomeCity_TryGiveToughCup:
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_TOUGH_CUP, HearthomeCity_TryGiveSmartCup
    GoToIfUnset FLAG_CONTEST_MASTER_TOUGH, HearthomeCity_TryGiveSmartCup
    Message HearthomeCity_Text_ConqueredMasterRankToughContest
    SetVar VAR_0x8004, UG_GOOD_TOUGH_CUP
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCity_YourUndergroundPCIsFull
    Common_SendToUndergroundPC
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_TOUGH_CUP
    CloseMessage
    ReleaseAll
    End

HearthomeCity_TryGiveSmartCup:
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_CLEVER_CUP, HearthomeCity_TryGiveBlueCrystal
    GoToIfUnset FLAG_CONTEST_MASTER_SMART, HearthomeCity_TryGiveBlueCrystal
    Message HearthomeCity_Text_ConqueredMasterRankSmartContest
    SetVar VAR_0x8004, UG_GOOD_CLEVER_CUP
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCity_YourUndergroundPCIsFull
    Common_SendToUndergroundPC
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_CLEVER_CUP
    CloseMessage
    ReleaseAll
    End

HearthomeCity_TryGiveBlueCrystal:
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_BLUE_CRYSTAL, HearthomeCity_TryGivePinkCrystal
    GetUndergroundTalkCounter VAR_RESULT
    GoToIfLt VAR_RESULT, 100, HearthomeCity_TryGivePinkCrystal
    Message HearthomeCity_Text_YouveMetManyPeopleUnderground
    SetVar VAR_0x8004, UG_GOOD_BLUE_CRYSTAL
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCity_YourUndergroundPCIsFull
    Common_SendToUndergroundPC
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_BLUE_CRYSTAL
    CloseMessage
    ReleaseAll
    End

HearthomeCity_TryGivePinkCrystal:
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_PINK_CRYSTAL, HearthomeCity_TryGiveRedCrystal
    GetUndergroundItemsGivenAway VAR_RESULT
    GoToIfLt VAR_RESULT, 100, HearthomeCity_TryGiveRedCrystal
    Message HearthomeCity_Text_YouveGivenAwayManyItemsUnderground
    SetVar VAR_0x8004, UG_GOOD_PINK_CRYSTAL
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCity_YourUndergroundPCIsFull
    Common_SendToUndergroundPC
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_PINK_CRYSTAL
    CloseMessage
    ReleaseAll
    End

HearthomeCity_TryGiveRedCrystal:
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_RED_CRYSTAL, HearthomeCity_TryGiveYellowCrystal
    GetUndergroundFossilsUnearthed VAR_RESULT
    GoToIfLt VAR_RESULT, 100, HearthomeCity_TryGiveYellowCrystal
    Message HearthomeCity_Text_YouveDugUpManyFossilsUnderground
    SetVar VAR_0x8004, UG_GOOD_RED_CRYSTAL
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCity_YourUndergroundPCIsFull
    Common_SendToUndergroundPC
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_RED_CRYSTAL
    CloseMessage
    ReleaseAll
    End

HearthomeCity_TryGiveYellowCrystal:
    GoToIfSet FLAG_RECEIVED_HEARTHOME_CITY_YELLOW_CRYSTAL, HearthomeCity_NoGoodsToGive
    GetUndergroundTrapsSet VAR_RESULT
    GoToIfLt VAR_RESULT, 100, HearthomeCity_NoGoodsToGive
    Message HearthomeCity_Text_YouveSetManyTrapsUnderground
    SetVar VAR_0x8004, UG_GOOD_YELLOW_CRYSTAL
    SetVar VAR_0x8005, 1
    CheckHasRoomForGoodsInPC VAR_0x8004, VAR_0x8005, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, HearthomeCity_YourUndergroundPCIsFull
    Common_SendToUndergroundPC
    SetFlag FLAG_RECEIVED_HEARTHOME_CITY_YELLOW_CRYSTAL
    CloseMessage
    ReleaseAll
    End

HearthomeCity_NoGoodsToGive:
    GoTo HearthomeCity_TalkToMeSomeOtherTime2

HearthomeCity_TalkToMeSomeOtherTime:
    Message HearthomeCity_Text_TalkToMeSomeOtherTime
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCity_YourUndergroundPCIsFull:
    Message HearthomeCity_Text_YourUndergroundPCIsFull
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCity_TalkToMeSomeOtherTime2:
    Message HearthomeCity_Text_TalkToMeSomeOtherTime2
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeCity_PokemonBreederM2:
    NPCMessage HearthomeCity_Text_WhatPokemonWillMyChildBefriend
    End

HearthomeCity_BabyInPram2:
    EventMessage HearthomeCity_Text_PapaMama
    End

HearthomeCity_BlackBelt1:
    NPCMessage HearthomeCity_Text_ILivedInTotalSeclusion
    End

HearthomeCity_PokemonBreederF2:
    NPCMessage HearthomeCity_Text_IdLikeToLiveInHearthome
    End

HearthomeCity_TriggerBunearyAndKeira:
    LockAll
    ApplyMovement LOCALID_PLAYER, HearthomeCity_Movement_PlayerExclamationMark
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 725, HearthomeCity_SetBunearyAndKeiraPositionsZ725
    GoToIfEq VAR_0x8005, 726, HearthomeCity_SetBunearyAndKeiraPositionsZ726
    GoToIfEq VAR_0x8005, 727, HearthomeCity_SetBunearyAndKeiraPositionsZ727
    GoToIfEq VAR_0x8005, 728, HearthomeCity_SetBunearyAndKeiraPositionsZ728
    GoToIfEq VAR_0x8005, 729, HearthomeCity_SetBunearyAndKeiraPositionsZ729
    End

HearthomeCity_SetBunearyAndKeiraPositionsZ725:
    SetObjectEventPos LOCALID_KEIRA, 471, 725
    SetObjectEventPos LOCALID_BUNEARY, 471, 725
    GoTo HearthomeCity_BunearyAndKeira
    End

HearthomeCity_SetBunearyAndKeiraPositionsZ726:
    SetObjectEventPos LOCALID_KEIRA, 471, 726
    SetObjectEventPos LOCALID_BUNEARY, 471, 726
    GoTo HearthomeCity_BunearyAndKeira
    End

HearthomeCity_SetBunearyAndKeiraPositionsZ727:
    SetObjectEventPos LOCALID_KEIRA, 471, 727
    SetObjectEventPos LOCALID_BUNEARY, 471, 727
    GoTo HearthomeCity_BunearyAndKeira
    End

HearthomeCity_SetBunearyAndKeiraPositionsZ728:
    SetObjectEventPos LOCALID_KEIRA, 471, 728
    SetObjectEventPos LOCALID_BUNEARY, 471, 728
    GoTo HearthomeCity_BunearyAndKeira
    End

HearthomeCity_SetBunearyAndKeiraPositionsZ729:
    SetObjectEventPos LOCALID_KEIRA, 471, 729
    SetObjectEventPos LOCALID_BUNEARY, 471, 729
    GoTo HearthomeCity_BunearyAndKeira
    End

HearthomeCity_BunearyAndKeira:
    ClearFlag FLAG_HIDE_HEARTHOME_CITY_KEIRA
    ClearFlag FLAG_HIDE_HEARTHOME_CITY_BUNEARY
    AddObject LOCALID_KEIRA
    AddObject LOCALID_BUNEARY
    ApplyMovement LOCALID_BUNEARY, HearthomeCity_Movement_BunearyEnter
    WaitMovement
    PlayCry SPECIES_BUNEARY
    WaitCry
    ApplyMovement LOCALID_KEIRA, HearthomeCity_Movement_KeiraEnter
    WaitMovement
    Message HearthomeCity_Text_ThankGoodnessYoureHere
    Message HearthomeCity_Text_BackIntoThePokeBall
    PlayCry SPECIES_BUNEARY
    WaitCry
    RemoveObject LOCALID_BUNEARY
    Message HearthomeCity_Text_ImKeira
    CloseMessage
    ApplyMovement LOCALID_KEIRA, HearthomeCity_Movement_KeiraLeave
    WaitMovement
    RemoveObject LOCALID_KEIRA
    SetVar VAR_HEARTHOME_CITY_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
HearthomeCity_Movement_PlayerExclamationMark:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
HearthomeCity_Movement_BunearyEnter:
    WalkFastWest 9
    EndMovement

HearthomeCity_UnusedMovement2:
    WalkFastEast 8
    EndMovement

    .balign 4, 0
HearthomeCity_Movement_KeiraEnter:
    WalkFastWest 8
    EndMovement

    .balign 4, 0
HearthomeCity_Movement_KeiraLeave:
    WalkNormalEast 8
    EndMovement

HearthomeCity_MapSignpost:
    ShowMapSign HearthomeCity_Text_MapSign
    End

HearthomeCity_GymSignpost:
    ShowScrollingSign HearthomeCity_Text_SignHearthomeCityPokemonGym
    End

HearthomeCity_SignPokemonContestHall:
    ShowLandmarkSign HearthomeCity_Text_SignPokemonContestHall
    End

HearthomeCity_SignPokemonFanClub:
    ShowLandmarkSign HearthomeCity_Text_SignPokemonFanClub
    End

HearthomeCity_ArrowSignpostWest:
    ShowArrowSign HearthomeCity_Text_SignRt208Rt212
    End

HearthomeCity_ArrowSignpostEast:
    ShowArrowSign HearthomeCity_Text_SignRt209SolaceonTown
    End

HearthomeCity_SignAmitySquareWestGate:
    ShowLandmarkSign HearthomeCity_Text_SignAmitySquareWestGate
    End

HearthomeCity_SignAmitySquareEastGate:
    ShowLandmarkSign HearthomeCity_Text_SignAmitySquareEastGate
    End

HearthomeCity_SignPoffinHouse:
    ShowLandmarkSign HearthomeCity_Text_SignThePoffinHouse
    End

HearthomeCity_GymGuide:
    NPCMessage HearthomeCity_Text_ComeBackAnotherTime
    End

HearthomeCity_Artist:
    NPCMessage HearthomeCity_Text_ThisPlaceIsBeautiful
    End

HearthomeCity_BlackBelt2:
    NPCMessage HearthomeCity_Text_IPutMyVsSeekerThroughALot
    End

    .balign 4, 0
