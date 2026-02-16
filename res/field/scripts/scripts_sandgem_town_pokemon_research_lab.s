#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_pokemon_research_lab.h"
#include "res/field/events/events_sandgem_town_pokemon_research_lab.h"


    ScriptEntry SandgemTownLab_OnTransition
    ScriptEntry SandgemTownLab_OnFrameGetPokedex
    ScriptEntry SandgemTownLab_ProfRowan
    ScriptEntry _01AC
    ScriptEntry SandgemTownLab_ScientistM
    ScriptEntry SandgemTownLab_ScientistF
    ScriptEntry _0592
    ScriptEntry SandgemTownLab_BookshelfAdventureRuleNo1
    ScriptEntry SandgemTownLab_BookshelfAdventureRuleNo2
    ScriptEntry SandgemTownLab_BookshelfBooks
    ScriptEntry SandgemTownLab_BookshelfReferenceMaterial
    ScriptEntry SandgemTownLab_PC
    ScriptEntry _05EC
    ScriptEntry SandgemTownLab_Refrigerator
    ScriptEntry SandgemTownLab_OnFrameReturnedFromDistortionWorld
    ScriptEntryEnd

SandgemTownLab_OnTransition:
    CallIfEq VAR_SANDGEM_TOWN_LAB_STATE, 2, SandgemTownLab_SetProfRowanAndCounterpartPositions
    CallIfEq VAR_SANDGEM_TOWN_LAB_STATE, 3, SandgemTownLab_SetProfRowanAndCounterpartPositions
    End

SandgemTownLab_SetProfRowanAndCounterpartPositions:
    ClearFlag FLAG_HIDE_SANDGEM_TOWN_LAB_PROF_ROWAN
    SetObjectEventPos LOCALID_PROF_ROWAN, 7, 14
    SetObjectEventDir LOCALID_PROF_ROWAN, DIR_SOUTH
    SetObjectEventMovementType LOCALID_PROF_ROWAN, MOVEMENT_TYPE_LOOK_SOUTH
    ClearFlag FLAG_HIDE_SANDGEM_TOWN_LAB_COUNTERPART
    SetObjectEventPos LOCALID_COUNTERPART, 6, 14
    SetObjectEventDir LOCALID_COUNTERPART, DIR_SOUTH
    SetObjectEventMovementType LOCALID_COUNTERPART, MOVEMENT_TYPE_LOOK_SOUTH
    Return

SandgemTownLab_ProfRowan:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call SandgemTownLab_SetVarIfArrivedInSunyshoreCity
    GoToIfEq VAR_0x8006, TRUE, SandgemTownLab_IfYouSeeCynthiaGiveHerMyBestRegards
    GoTo SandgemTownLab_ProfRowanReactToPokedex
    End

SandgemTownLab_IncreaseExitedDistortionWorldState:
    SetVar VAR_EXITED_DISTORTION_WORLD_STATE, 3
    Return

SandgemTownLab_ProfRowanReactToPokedex:
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownLab_ThereAreManyMorePokemon
    GoToIfUnset FLAG_FIRST_ARRIVAL_ETERNA_CITY, SandgemTownLab_CheckShouldRatePokedex
    CheckLocalDexCompleted VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownLab_ShowCompleteLocalDex
SandgemTownLab_CheckShouldRatePokedex:
    GoToIfGe VAR_SANDGEM_TOWN_STATE, 2, SandgemTownLab_CheckPokedexRatings
    BufferPlayerName 0
    Message SandgemTownLab_Text_GoOnYourGrandAdventureAwaitsYou
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_CheckPokedexRatings:
    CallCommonScript 0x26DE
    End

SandgemTownLab_IfYouSeeCynthiaGiveHerMyBestRegards:
    BufferPlayerName 0
    Message SandgemTownLab_Text_IfYouSeeCynthiaGiveHerMyBestRegards
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_OnFrameReturnedFromDistortionWorld:
    LockAll
    CallIfEq VAR_EXITED_DISTORTION_WORLD_STATE, 2, SandgemTownLab_IncreaseExitedDistortionWorldState
    BufferPlayerName 1
    Message SandgemTownLab_Text_YouReallyHaveDoneIt
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartTurnOnSpot
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownLab_DawnImGladToSeeYouSafe
    GoTo SandgemTownLab_LucasImGladToSeeYouBackSafe
    End

SandgemTownLab_DawnImGladToSeeYouSafe:
    BufferPlayerName 1
    Message SandgemTownLab_Text_DawnImGladToSeeYouSafe
    GoTo SandgemTownLab_WhyNotObtainSunyshoresBadge
    End

SandgemTownLab_LucasImGladToSeeYouBackSafe:
    BufferPlayerName 1
    Message SandgemTownLab_Text_LucasImGladToSeeYouBackSafe
    GoTo SandgemTownLab_WhyNotObtainSunyshoresBadge
    End

SandgemTownLab_WhyNotObtainSunyshoresBadge:
    GetLocalDexSeenCount VAR_RESULT
    BufferNumber 1, VAR_RESULT
    Message SandgemTownLab_Text_WhyNotObtainSunyshoresBadge
    WaitABXPadPress
    CloseMessage
    SetFlag FLAG_HIDE_VALOR_LAKEFRONT_COLLECTOR
    SetVar VAR_UNK_0x4112, 1
    ClearFlag FLAG_MESPRIT_DISAPPEARED
    ClearFlag FLAG_AZELF_DISAPPEARED
    ClearFlag FLAG_UXIE_DISAPPEARED
    SetVar VAR_SANDGEM_TOWN_LAB_STATE, 3
    ReleaseAll
    End

    .balign 4, 0
SandgemTownLab_Movement_CounterpartTurnOnSpot:
    WalkOnSpotNormalEast
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

_01AC:
    End

SandgemTownLab_OnFrameGetPokedex:
    LockAll
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkToProfRowan
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerWalkToProfRowan
    WaitMovement
    BufferPlayerName 0
    Message SandgemTownLab_Text_LetsHaveALookAtYourPokemon
    CloseMessage
    SetPlayerState PLAYER_TRANSITION_HEALING
    ChangePlayerState
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerGive
    WaitMovement
    SetVar VAR_0x8004, 0
    GetPartyMonSpecies VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, SPECIES_TURTWIG, SandgemTownLab_ThisPokemonSeemstoBeRatherHappy
    GoToIfEq VAR_0x8008, SPECIES_CHIMCHAR, SandgemTownLab_ThisPokemonSeemstoBeRatherHappy
    GoToIfEq VAR_0x8008, SPECIES_PIPLUP, SandgemTownLab_ThisPokemonSeemstoBeRatherHappy
    GoTo SandgemTownLab_YouveMadeYourPokemonEvolveAlready

SandgemTownLab_ThisPokemonSeemstoBeRatherHappy:
    Message SandgemTownLab_Text_ThisPokemonSeemstoBeRatherHappy
    GoTo SandgemTownLab_WouldYouLikeToGiveItANickname

SandgemTownLab_YouveMadeYourPokemonEvolveAlready:
    Message SandgemTownLab_Text_YouveMadeYourPokemonEvolveAlready
    GoTo SandgemTownLab_WouldYouLikeToGiveItANickname

SandgemTownLab_WouldYouLikeToGiveItANickname:
    CloseMessage
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerReceive
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    BufferPartyMonSpecies 0, 0
    Message SandgemTownLab_Text_EntrustingYouWithThatStarterWasNoMistake
    Message SandgemTownLab_Text_WouldYouLikeToGiveItANickname
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SandgemTownLab_CherishThatStarterOfYours
    GoTo SandgemTownLab_NicknameStarter
    End

SandgemTownLab_NicknameStarter:
    SetVar VAR_RESULT, 0
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    OpenPokemonNamingScreen 0, VAR_RESULT
    SetVar VAR_0x8002, VAR_RESULT
    FadeScreenIn
    WaitFadeScreen
    Message SandgemTownLab_Text_AskAndYoureHappyWithThatNickName
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SandgemTownLab_NicknameStarter
    CallIfNe VAR_0x8002, 1, SandgemTownLab_IncrementRecordPokemonNicknamed
    GoTo SandgemTownLab_CherishThatStarterOfYours
    End

SandgemTownLab_IncrementRecordPokemonNicknamed:
    IncrementGameRecord RECORD_POKEMON_NICKNAMED
    Return

SandgemTownLab_CherishThatStarterOfYours:
    BufferPartyMonSpecies 0, 0
    BufferRivalName 1
    Message SandgemTownLab_Text_CherishThatStarterOfYours
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkOnSpotWest
    WaitMovement
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerFaceCounterpart
    WaitMovement
    WaitTime 15, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownLab_DawnImSoGladThatYourKindTowardPokemon
    GoTo SandgemTownLab_LucasBoyAmIGladYoureKindTowardPokemon
    End

SandgemTownLab_DawnImSoGladThatYourKindTowardPokemon:
    BufferCounterpartName 0
    Message SandgemTownLab_Text_DawnImSoGladThatYourKindTowardPokemon
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkOnSpotWest2
    WaitMovement
    GoTo SandgemTownLab_WillYouRecordDataOnAllPokemonInSinnoh
    End

SandgemTownLab_LucasBoyAmIGladYoureKindTowardPokemon:
    BufferCounterpartName 0
    Message SandgemTownLab_Text_LucasBoyAmIGladYoureKindTowardPokemon
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkOnSpotWest2
    WaitMovement
    GoTo SandgemTownLab_WillYouRecordDataOnAllPokemonInSinnoh
    End

SandgemTownLab_WillYouRecordDataOnAllPokemonInSinnoh:
    FadeOutBGM 0, 40
    ApplyMovement LOCALID_PROF_ROWAN, SandgemTownLab_Movement_ProfRowanWalkOnSpotSouth
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerFaceProfRowan
    WaitMovement
    WaitTime 35, VAR_RESULT
    SetFlag FLAG_ALT_MUSIC_ROWANS_LAB
    PlayMusic SEQ_OPENING2
    Message SandgemTownLab_Text_ThereIsSomethingIWantYouToDo
    Message SandgemTownLab_Text_WillYouRecordDataOnAllPokemonInSinnoh
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SandgemTownLab_LetMeAskYouAgain
    GoTo SandgemTownLab_ObtainPokedex
    End

SandgemTownLab_LetMeAskYouAgain:
    BufferPlayerName 0
    Message SandgemTownLab_Text_LetMeAskYouAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SandgemTownLab_LetMeAskYouAgain
    GoTo SandgemTownLab_ObtainPokedex
    End

SandgemTownLab_ObtainPokedex:
    Message SandgemTownLab_Text_GoodAnswer
    GivePokedex
    SetFlag FLAG_HAS_POKEDEX
    BufferPlayerName 0
    Message SandgemTownLab_Text_PlayerObtainedThePokedex
    PlaySound SEQ_FANFA4
    WaitSound
    BufferPlayerName 0
    Message SandgemTownLab_Text_MeetEveryKindOfPokemonInThisRegion
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkOnSpotWest3
    WaitMovement
    WaitTime 15, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownLab_DawnIveGotOneToo
    GoTo SandgemTownLab_LucasIveGotTheSameKindOfPokedex
    End

SandgemTownLab_DawnIveGotOneToo:
    BufferCounterpartName 0
    Message SandgemTownLab_Text_DawnIveGotOneToo
    GoTo SandgemTownLab_YourGrandAdventureBeginsRightNow
    End

SandgemTownLab_LucasIveGotTheSameKindOfPokedex:
    BufferCounterpartName 0
    Message SandgemTownLab_Text_LucasIveGotTheSameKindOfPokedex
    GoTo SandgemTownLab_YourGrandAdventureBeginsRightNow
    End

SandgemTownLab_YourGrandAdventureBeginsRightNow:
    BufferPlayerName 0
    Message SandgemTownLab_Text_YourGrandAdventureBeginsRightNow
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkOnSpotWest3
    WaitMovement
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerFaceCounterpart
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownLab_DawnIllBeHappyToTeachYouThings
    GoTo SandgemTownLab_LucasIllTeachYouStuffLater
    End

SandgemTownLab_DawnIllBeHappyToTeachYouThings:
    BufferPlayerName 0
    BufferPlayerCounterpartStarterSpeciesNameWithArticle 1
    Message SandgemTownLab_Text_DawnIllBeHappyToTeachYouThings
    GoTo SandgemTownLab_CounterpartLeave
    End

SandgemTownLab_LucasIllTeachYouStuffLater:
    BufferPlayerName 0
    BufferRivalStarterSpeciesName 1
    Message SandgemTownLab_Text_LucasIllTeachYouStuffLater
    GoTo SandgemTownLab_CounterpartLeave
    End

SandgemTownLab_CounterpartLeave:
    CloseMessage
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerWatchCounterpartLeave
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartLeave
    WaitMovement
    RemoveObject LOCALID_COUNTERPART
    ClearFlag FLAG_HIDE_SANDGEM_TOWN_COUNTERPART
    SetVar VAR_SANDGEM_TOWN_LAB_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
SandgemTownPokemonResearchLab_UnusedMovement:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_ProfRowanWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_CounterpartWalkToProfRowan:
    Delay16
    WalkNormalNorth 8
    WalkNormalEast
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_CounterpartWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_CounterpartWalkOnSpotWest3:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerWalkToProfRowan:
    Delay16
    WalkNormalNorth 9
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerFaceProfRowan:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerFaceCounterpart:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerWatchCounterpartLeave:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_CounterpartWalkOnSpotWest2:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_CounterpartLeave:
    WalkNormalSouth 10
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerGive:
    PlayerGive
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerReceive:
    PlayerReceive
    EndMovement

SandgemTownLab_ScientistM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call SandgemTownLab_SetVarIfArrivedInSunyshoreCity
    GoToIfEq VAR_0x8006, TRUE, SandgemTownLab_ImStunnedByYourGreatness
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownLab_YouveBeenGreatForTheProfsResearch
    BufferCounterpartName 0
    Message SandgemTownLab_Text_ImCounterpartsFather
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_YouveBeenGreatForTheProfsResearch:
    BufferCounterpartName 0
    Message SandgemTownLab_Text_YouveBeenGreatForTheProfsResearch
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_ImStunnedByYourGreatness:
    Message SandgemTownLab_Text_ImStunnedByYourGreatness
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_ScientistF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call SandgemTownLab_SetVarIfArrivedInSunyshoreCity
    GoToIfEq VAR_0x8006, TRUE, SandgemTownLab_HearingWhatWasHappeningGaveMeShivers
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownLab_ProfessorRowanHasBeenStudyingPokedexSystems
    Message SandgemTownLab_Text_ItsAnHonorToBeAnAssistant
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_ProfessorRowanHasBeenStudyingPokedexSystems:
    Message SandgemTownLab_Text_ProfessorRowanHasBeenStudyingPokedexSystems
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_HearingWhatWasHappeningGaveMeShivers:
    Message SandgemTownLab_Text_HearingWhatWasHappeningGaveMeShivers
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0592:
    End

SandgemTownLab_BookshelfAdventureRuleNo1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message SandgemTownLab_Text_AdventureRuleNo1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_BookshelfAdventureRuleNo2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message SandgemTownLab_Text_AdventureRuleNo2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_BookshelfBooks:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message SandgemTownLab_Text_ItsCrammedFullOfBooks
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_BookshelfReferenceMaterial:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message SandgemTownLab_Text_ThereALotOfReferenceMaterial
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_PC:
    BufferPlayerName 0
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message SandgemTownLab_Text_PlayerCheckedThePC
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05EC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message SandgemTownLab_Text_ResearchMaterialsAreCarefullyTuckedAway
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_Refrigerator:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message SandgemTownLab_Text_TheRefrigeratorIsFilledWithTastySweets
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_ShowCompleteLocalDex:
    GoToIfSet FLAG_SHOWN_COMPLETE_LOCAL_DEX, SandgemTownLab_YouveMetEveryKindOfPokemonInTheSinnohRegion
    GoTo SandgemTownLab_AskYouveComeToShowMeYourProgressOnThePokedex
    End

SandgemTownLab_YouveMetEveryKindOfPokemonInTheSinnohRegion:
    BufferPlayerName 0
    Message SandgemTownLab_Text_YouveMetEveryKindOfPokemonInTheSinnohRegion
    CloseMessage
    GoTo SandgemTownLab_EnableNationalDex
    End

SandgemTownLab_AskYouveComeToShowMeYourProgressOnThePokedex:
    BufferPlayerName 0
    Message SandgemTownLab_Text_AskYouveComeToShowMeYourProgressOnThePokedex
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SandgemTownLab_WhatsWrong
    GoTo SandgemTownLab_SoYouveSeenAllPokemon
    End

SandgemTownLab_WhatsWrong:
    Message SandgemTownLab_Text_WhatsWrong
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_SoYouveSeenAllPokemon:
    GetLocalDexSeenCount VAR_RESULT
    BufferNumber 0, VAR_RESULT
    Message SandgemTownLab_Text_SoYouveSeenXPokemon
    BufferPlayerName 0
    Message SandgemTownLab_Text_ThePokemonOfTheSInnohRegionAreBeingAdded
    CloseMessage
    GoTo SandgemTownLab_EnableNationalDex
    End

SandgemTownLab_EnableNationalDex:
    GetPlayerDir VAR_0x8007
    CallIfEq VAR_0x8007, DIR_NORTH, SandgemTownLab_PlayerWalkFromSouthToSouthFromProfRowan
    CallIfEq VAR_0x8007, DIR_SOUTH, SandgemTownLab_PlayerWalkFromNorthToSouthFromProfRowan
    CallIfEq VAR_0x8007, DIR_WEST, SandgemTownLab_PlayerWalkFromEastToSouthFromProfRowan
    CallIfEq VAR_0x8007, DIR_EAST, SandgemTownLab_PlayerWalkFromWestToSouthFromProfRowan
    ClearFlag FLAG_HIDE_SANDGEM_TOWN_LAB_PROF_OAK
    AddObject LOCALID_PROF_OAK
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerMoveAwayForProfOak
    ApplyMovement LOCALID_PROF_OAK, SandgemTownLab_Movement_ProfOakEnter
    ApplyMovement LOCALID_PROF_ROWAN, SandgemTownLab_Movement_ProfRowanNoticeProfOak
    WaitMovement
    Message SandgemTownLab_Text_GreetingsProfessorRowan
    Message SandgemTownLab_Text_IfItIsntMyOldColleagueProfessorOak
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, SandgemTownLab_Movement_ProfRowanTurnOnSpot
    WaitMovement
    WaitTime 15, VAR_RESULT
    Message SandgemTownLab_Text_LetMeIntroduceYouToMyYoungAssistant
    CloseMessage
    ApplyMovement LOCALID_PROF_OAK, SandgemTownLab_Movement_ProfOakWalkToPlayer
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerFaceProfOak
    WaitMovement
    Message SandgemTownLab_Text_LetMeUpgradeYourPokedex
    CallIfSet FLAG_GAME_COMPLETED, SandgemTownLab_GameCompletedReturn
    CallIfGe VAR_UNK_0x4081, 2, _079C
    SetNationalDexEnabled
    BufferPlayerName 0
    PlaySound SEQ_FANFA4
    Message SandgemTownLab_Text_PlayersPokedexWasUpgradedWithTheNationalMode
    WaitSound
    Message SandgemTownLab_Text_ItWontBeEasyToCompleteTheNationalPokedex
    Message SandgemTownLab_Text_PlayerWillGetTheJobDone
    Message SandgemTownLab_Text_IveHeardThatThePalParkIsNowOpen
    BufferPlayerName 0
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, SandgemTownLab_MaleYouShouldVisitThePalParkToo
    CallIfEq VAR_0x8004, GENDER_FEMALE, SandgemTownLab_FemaleYouShouldVisitThePalParkToo
    CloseMessage
    ApplyMovement LOCALID_PROF_OAK, SandgemTownLab_Movement_ProfOakLeave
    WaitMovement
    RemoveObject 4
    Message SandgemTownLab_Text_OffHeGoesAsBusyAsEver
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerWalkBackToProfRowan
    WaitMovement
    BufferPlayerName 0
    Message SandgemTownLab_Text_IHaveAGiftForCompletingTheSinnohPokedex
    SetVar VAR_0x8004, ITEM_POKE_RADAR
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    Message SandgemTownLab_Text_ThatsThePokemonRadar
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_079C:
    SetFlag FLAG_UNK_0x0294
    Return

SandgemTownLab_GameCompletedReturn:
    Return

SandgemTownLab_MaleYouShouldVisitThePalParkToo:
    Message SandgemTownLab_Text_MaleYouShouldVisitThePalParkToo
    Return

SandgemTownLab_FemaleYouShouldVisitThePalParkToo:
    Message SandgemTownLab_Text_FemaleYouShouldVisitThePalParkToo
    Return

SandgemTownLab_ThereAreManyMorePokemon:
    Message SandgemTownLab_Text_ThereAreManyMorePokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_PlayerWalkFromSouthToSouthFromProfRowan:
    Return

SandgemTownLab_PlayerWalkFromNorthToSouthFromProfRowan:
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerWalkFromNorthToSouthFromProfRowan
    ApplyMovement LOCALID_PROF_ROWAN, SandgemTownLab_Movement_ProfRowanFacePlayerSouth
    WaitMovement
    Return

SandgemTownLab_PlayerWalkFromEastToSouthFromProfRowan:
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerWalkFromEastToSouthFromProfRowan
    ApplyMovement LOCALID_PROF_ROWAN, SandgemTownLab_Movement_ProfRowanFacePlayerSouth
    WaitMovement
    Return

SandgemTownLab_PlayerWalkFromWestToSouthFromProfRowan:
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerWalkFromWestToSouthFromProfRowan
    ApplyMovement LOCALID_PROF_ROWAN, SandgemTownLab_Movement_ProfRowanFacePlayerSouth
    WaitMovement
    Return

    .balign 4, 0
SandgemTownLab_Movement_ProfRowanFacePlayerSouth:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_ProfRowanNoticeProfOak:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_ProfRowanTurnOnSpot:
    WalkOnSpotNormalWest
    Delay8 2
    WalkOnSpotNormalSouth
    EndMovement

SandgemTownPokemonResearchLab_UnusedMovement2:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerWalkFromNorthToSouthFromProfRowan:
    WalkNormalWest
    WalkNormalSouth 2
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerWalkFromEastToSouthFromProfRowan:
    WalkNormalSouth
    WalkNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerWalkFromWestToSouthFromProfRowan:
    WalkNormalSouth
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerMoveAwayForProfOak:
    WalkOnSpotNormalSouth
    Delay8 5
    WalkNormalWest
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerFaceProfOak:
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_PlayerWalkBackToProfRowan:
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_ProfOakEnter:
    WalkNormalNorth 7
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_ProfOakWalkToPlayer:
    WalkNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
SandgemTownLab_Movement_ProfOakLeave:
    WalkNormalSouth 9
    EndMovement

SandgemTownLab_SetVarIfArrivedInSunyshoreCity:
    SetVar VAR_0x8006, FALSE
    GoToIfEq VAR_SANDGEM_TOWN_LAB_STATE, 3, SandgemTownLab_CheckArrivedInSunyshoreCity
    Return

SandgemTownLab_CheckArrivedInSunyshoreCity:
    GoToIfUnset FLAG_FIRST_ARRIVAL_SUNYSHORE_CITY, SandgemTownLab_SetVarArrivedInSunyshoreCity
    Return

SandgemTownLab_SetVarArrivedInSunyshoreCity:
    SetVar VAR_0x8006, TRUE
    Return

    .balign 4, 0
