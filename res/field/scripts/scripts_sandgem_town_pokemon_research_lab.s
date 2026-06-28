#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_pokemon_research_lab.h"
#include "res/field/events/events_sandgem_town_pokemon_research_lab.h"


    ScriptEntry SandgemTownLab_OnTransition
    ScriptEntry SandgemTownLab_OnFrame_GetPokedex
    ScriptEntry SandgemTownLab_ProfRowan
    ScriptEntry SandgemTownLab_Dummy4
    ScriptEntry SandgemTownLab_ScientistM
    ScriptEntry SandgemTownLab_ScientistF
    ScriptEntry SandgemTownLab_Dummy7
    ScriptEntry SandgemTownLab_BookshelfAdventureRuleNo1
    ScriptEntry SandgemTownLab_BookshelfAdventureRuleNo2
    ScriptEntry SandgemTownLab_BookshelfBooks
    ScriptEntry SandgemTownLab_BookshelfReferenceMaterial
    ScriptEntry SandgemTownLab_PC
    ScriptEntry SandgemTownLab_ResearchMaterials_Unused
    ScriptEntry SandgemTownLab_Refrigerator
    ScriptEntry SandgemTownLab_OnFrame_ReturnedFromDistortionWorld
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
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call SandgemTownLab_SetVarIfArrivedInSunyshoreCity
    GoToIfEq VAR_0x8006, TRUE, SandgemTownLab_GiveCynthiaMyBestRegards
    GoTo SandgemTownLab_ProfRowanReactToPokedex
    End

SandgemTownLab_IncreaseExitedDistortionWorldState:
    SetVar VAR_EXITED_DISTORTION_WORLD_STATE, 3
    Return

SandgemTownLab_ProfRowanReactToPokedex:
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownLab_ManyMorePokemon
    GoToIfUnset FLAG_FIRST_ARRIVAL_ETERNA_CITY, SandgemTownLab_CheckShouldRatePokedex
    CheckLocalDexCompleted VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownLab_ShowCompleteLocalDex
SandgemTownLab_CheckShouldRatePokedex:
    GoToIfGe VAR_SANDGEM_TOWN_STATE, 2, SandgemTownLab_CheckPokedexRatings
    BufferPlayerName 0
    Message SandgemTownLab_Text_GrandAdventureAwaitsYou
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_CheckPokedexRatings:
    CallCommonScript 0x26DE
    End

SandgemTownLab_GiveCynthiaMyBestRegards:
    BufferPlayerName 0
    Message SandgemTownLab_Text_GiveCynthiaMyBestRegards
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_OnFrame_ReturnedFromDistortionWorld:
    LockAll
    CallIfEq VAR_EXITED_DISTORTION_WORLD_STATE, 2, SandgemTownLab_IncreaseExitedDistortionWorldState
    BufferPlayerName 1
    Message SandgemTownLab_Text_YouReallyHaveDoneIt
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartTurnOnSpot
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownLab_DawnGladToSeeYouSafe
    GoTo SandgemTownLab_LucasGladToSeeYouSafe
    End

SandgemTownLab_DawnGladToSeeYouSafe:
    BufferPlayerName 1
    Message SandgemTownLab_Text_DawnGladToSeeYouSafe
    GoTo SandgemTownLab_ObtainSunyshoresBadge
    End

SandgemTownLab_LucasGladToSeeYouSafe:
    BufferPlayerName 1
    Message SandgemTownLab_Text_LucasGladToSeeYouSafe
    GoTo SandgemTownLab_ObtainSunyshoresBadge
    End

SandgemTownLab_ObtainSunyshoresBadge:
    GetLocalDexSeenCount VAR_RESULT
    BufferNumber 1, VAR_RESULT
    Message SandgemTownLab_Text_ObtainSunyshoresBadge
    WaitButton
    CloseMessage
    SetFlag FLAG_HIDE_VALOR_LAKEFRONT_COLLECTOR
    SetVar VAR_VALOR_LAKEFRONT_BLOCK_SUNYSHORE_STATE, 1
    ClearFlag FLAG_HIDE_VERITY_CAVERN_MESPRIT
    ClearFlag FLAG_HIDE_VALOR_CAVERN_AZELF
    ClearFlag FLAG_HIDE_ACUITY_CAVERN_UXIE
    SetVar VAR_SANDGEM_TOWN_LAB_STATE, 3
    ReleaseAll
    End

    .balign 4, 0
SandgemTownLab_Movement_CounterpartTurnOnSpot:
    WalkOnSpotNormalEast
    Delay4
    WalkOnSpotNormalSouth
    EndMovement

SandgemTownLab_Dummy4:
    End

SandgemTownLab_OnFrame_GetPokedex:
    LockAll
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkToProfRowan
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerWalkToProfRowan
    WaitMovement
    BufferPlayerName 0
    Message SandgemTownLab_Text_LookAtYourPokemon
    CloseMessage
    SetPlayerState PLAYER_TRANSITION_HEALING
    ChangePlayerState
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerGive
    WaitMovement
    SetVar VAR_0x8004, 0
    GetPartyMonSpecies VAR_0x8004, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, SPECIES_TURTWIG, SandgemTownLab_PokemonSeemsRatherHappy
    GoToIfEq VAR_0x8008, SPECIES_CHIMCHAR, SandgemTownLab_PokemonSeemsRatherHappy
    GoToIfEq VAR_0x8008, SPECIES_PIPLUP, SandgemTownLab_PokemonSeemsRatherHappy
    GoTo SandgemTownLab_PokemonEvolvedAlready

SandgemTownLab_PokemonSeemsRatherHappy:
    Message SandgemTownLab_Text_PokemonSeemsRatherHappy
    GoTo SandgemTownLab_GiveItANickname

SandgemTownLab_PokemonEvolvedAlready:
    Message SandgemTownLab_Text_PokemonEvolvedAlready
    GoTo SandgemTownLab_GiveItANickname

SandgemTownLab_GiveItANickname:
    CloseMessage
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerReceive
    WaitMovement
    SetPlayerState PLAYER_TRANSITION_WALKING
    ChangePlayerState
    BufferPartyMonSpecies 0, 0
    Message SandgemTownLab_Text_EntrustingWasNoMistake
    Message SandgemTownLab_Text_GiveItANickname
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SandgemTownLab_CherishThatStarter
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
    Message SandgemTownLab_Text_YoureHappyWithNickname
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SandgemTownLab_NicknameStarter
    CallIfNe VAR_0x8002, 1, SandgemTownLab_IncrementRecordPokemonNicknamed
    GoTo SandgemTownLab_CherishThatStarter
    End

SandgemTownLab_IncrementRecordPokemonNicknamed:
    IncrementGameRecord RECORD_POKEMON_NICKNAMED
    Return

SandgemTownLab_CherishThatStarter:
    BufferPartyMonSpecies 0, 0
    BufferRivalName 1
    Message SandgemTownLab_Text_CherishThatStarter
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkOnSpotWest
    WaitMovement
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerFaceCounterpart
    WaitMovement
    WaitTime 15, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownLab_DawnImGladYourKind
    GoTo SandgemTownLab_LucasImGladYourKind
    End

SandgemTownLab_DawnImGladYourKind:
    BufferCounterpartName 0
    Message SandgemTownLab_Text_DawnImGladYourKind
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkOnSpotWest2
    WaitMovement
    GoTo SandgemTownLab_RecordDataOnAllPokemon
    End

SandgemTownLab_LucasImGladYourKind:
    BufferCounterpartName 0
    Message SandgemTownLab_Text_LucasImGladYourKind
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkOnSpotWest2
    WaitMovement
    GoTo SandgemTownLab_RecordDataOnAllPokemon
    End

SandgemTownLab_RecordDataOnAllPokemon:
    FadeOutBGM 0, 40
    ApplyMovement LOCALID_PROF_ROWAN, SandgemTownLab_Movement_ProfRowanWalkOnSpotSouth
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerFaceProfRowan
    WaitMovement
    WaitTime 35, VAR_RESULT
    SetFlag FLAG_ALT_MUSIC_ROWANS_LAB
    PlayMusic SEQ_OPENING2
    Message SandgemTownLab_Text_SomethingIWantYouToDo
    Message SandgemTownLab_Text_RecordDataOnAllPokemon
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
    PlayFanfare SEQ_FANFA4
    WaitFanfare
    BufferPlayerName 0
    Message SandgemTownLab_Text_MeetEveryKindOfPokemon
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkOnSpotWest3
    WaitMovement
    WaitTime 15, VAR_RESULT
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownLab_DawnIveGotOneToo
    GoTo SandgemTownLab_LucasIveGotTheSamePokedex
    End

SandgemTownLab_DawnIveGotOneToo:
    BufferCounterpartName 0
    Message SandgemTownLab_Text_DawnIveGotOneToo
    GoTo SandgemTownLab_GrandAdventureBeginsNow
    End

SandgemTownLab_LucasIveGotTheSamePokedex:
    BufferCounterpartName 0
    Message SandgemTownLab_Text_LucasIveGotTheSamePokedex
    GoTo SandgemTownLab_GrandAdventureBeginsNow
    End

SandgemTownLab_GrandAdventureBeginsNow:
    BufferPlayerName 0
    Message SandgemTownLab_Text_GrandAdventureBeginsNow
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, SandgemTownLab_Movement_CounterpartWalkOnSpotWest3
    WaitMovement
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerFaceCounterpart
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownLab_DawnHappyToTeachYou
    GoTo SandgemTownLab_LucasIllTeachYouStuff
    End

SandgemTownLab_DawnHappyToTeachYou:
    BufferPlayerName 0
    BufferPlayerCounterpartStarterSpeciesNameWithArticle 1
    Message SandgemTownLab_Text_DawnHappyToTeachYou
    GoTo SandgemTownLab_CounterpartLeave
    End

SandgemTownLab_LucasIllTeachYouStuff:
    BufferPlayerName 0
    BufferRivalStarterSpeciesName 1
    Message SandgemTownLab_Text_LucasIllTeachYouStuff
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
SandgemTownLab_Movement_Unused:
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
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call SandgemTownLab_SetVarIfArrivedInSunyshoreCity
    GoToIfEq VAR_0x8006, TRUE, SandgemTownLab_StunnedByGreatness
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownLab_YouveBeenGreatForResearch
    BufferCounterpartName 0
    Message SandgemTownLab_Text_ImCounterpartsFather
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_YouveBeenGreatForResearch:
    BufferCounterpartName 0
    Message SandgemTownLab_Text_YouveBeenGreatForResearch
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_StunnedByGreatness:
    Message SandgemTownLab_Text_StunnedByGreatness
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_ScientistF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call SandgemTownLab_SetVarIfArrivedInSunyshoreCity
    GoToIfEq VAR_0x8006, TRUE, SandgemTownLab_GaveMeShivers
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownLab_StudyingPokedexSystems
    Message SandgemTownLab_Text_HonorToBeAnAssistant
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_StudyingPokedexSystems:
    Message SandgemTownLab_Text_StudyingPokedexSystems
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_GaveMeShivers:
    Message SandgemTownLab_Text_GaveMeShivers
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_Dummy7:
    End

SandgemTownLab_BookshelfAdventureRuleNo1:
    EventMessage SandgemTownLab_Text_AdventureRuleNo1
    End

SandgemTownLab_BookshelfAdventureRuleNo2:
    EventMessage SandgemTownLab_Text_AdventureRuleNo2
    End

SandgemTownLab_BookshelfBooks:
    EventMessage SandgemTownLab_Text_CrammedFullOfBooks
    End

SandgemTownLab_BookshelfReferenceMaterial:
    EventMessage SandgemTownLab_Text_ReferenceMaterial
    End

SandgemTownLab_PC:
    BufferPlayerName 0
    EventMessage SandgemTownLab_Text_PlayerCheckedThePC
    End

SandgemTownLab_ResearchMaterials_Unused:
    EventMessage SandgemTownLab_Text_ResearchMaterialsTuckedAway
    End

SandgemTownLab_Refrigerator:
    EventMessage SandgemTownLab_Text_FilledWithTastySweets
    End

SandgemTownLab_ShowCompleteLocalDex:
    GoToIfSet FLAG_SHOWN_COMPLETE_LOCAL_DEX, SandgemTownLab_MetEverySinnohPokemon
    GoTo SandgemTownLab_YouveComeToShowProgress
    End

SandgemTownLab_MetEverySinnohPokemon:
    BufferPlayerName 0
    Message SandgemTownLab_Text_MetEverySinnohPokemon
    CloseMessage
    GoTo SandgemTownLab_EnableNationalDex
    End

SandgemTownLab_YouveComeToShowProgress:
    BufferPlayerName 0
    Message SandgemTownLab_Text_YouveComeToShowProgress
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, SandgemTownLab_WhatsWrong
    GoTo SandgemTownLab_SoYouveSeenAllPokemon
    End

SandgemTownLab_WhatsWrong:
    Message SandgemTownLab_Text_WhatsWrong
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_SoYouveSeenAllPokemon:
    GetLocalDexSeenCount VAR_RESULT
    BufferNumber 0, VAR_RESULT
    Message SandgemTownLab_Text_SoYouveSeenXPokemon
    BufferPlayerName 0
    Message SandgemTownLab_Text_ExcellentWork
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
    Message SandgemTownLab_Text_OldColleagueProfessorOak
    CloseMessage
    ApplyMovement LOCALID_PROF_ROWAN, SandgemTownLab_Movement_ProfRowanTurnOnSpot
    WaitMovement
    WaitTime 15, VAR_RESULT
    Message SandgemTownLab_Text_IntroduceYouToMyAssistant
    CloseMessage
    ApplyMovement LOCALID_PROF_OAK, SandgemTownLab_Movement_ProfOakWalkToPlayer
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerFaceProfOak
    WaitMovement
    Message SandgemTownLab_Text_LetMeUpgradeYourPokedex
    CallIfSet FLAG_GAME_COMPLETED, SandgemTownLab_GameCompletedReturn
    CallIfGe VAR_FIGHT_AREA_STATE, 2, SandgemTownLab_HideFightAreaBlockade
    SetNationalDexEnabled
    BufferPlayerName 0
    PlayFanfare SEQ_FANFA4
    Message SandgemTownLab_Text_PokedexUpgradedWithNationalMode
    WaitFanfare
    Message SandgemTownLab_Text_WontBeEasyToComplete
    Message SandgemTownLab_Text_PlayerWillGetTheJobDone
    Message SandgemTownLab_Text_PalParkIsNowOpen
    BufferPlayerName 0
    GetPlayerGender VAR_0x8004
    CallIfEq VAR_0x8004, GENDER_MALE, SandgemTownLab_VisitThePalParkMale
    CallIfEq VAR_0x8004, GENDER_FEMALE, SandgemTownLab_VisitThePalParkFemale
    CloseMessage
    ApplyMovement LOCALID_PROF_OAK, SandgemTownLab_Movement_ProfOakLeave
    WaitMovement
    RemoveObject LOCALID_PROF_OAK
    Message SandgemTownLab_Text_OffHeGoes
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, SandgemTownLab_Movement_PlayerWalkBackToProfRowan
    WaitMovement
    BufferPlayerName 0
    Message SandgemTownLab_Text_GiftForCompletingSinnohPokedex
    SetVar VAR_0x8004, ITEM_POKE_RADAR
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    Message SandgemTownLab_Text_ThatsThePokemonRadar
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownLab_HideFightAreaBlockade:
    SetFlag FLAG_HIDE_FIGHT_AREA_BLOCKADE
    Return

SandgemTownLab_GameCompletedReturn:
    Return

SandgemTownLab_VisitThePalParkMale:
    Message SandgemTownLab_Text_VisitThePalParkMale
    Return

SandgemTownLab_VisitThePalParkFemale:
    Message SandgemTownLab_Text_VisitThePalParkFemale
    Return

SandgemTownLab_ManyMorePokemon:
    Message SandgemTownLab_Text_ManyMorePokemon
    WaitButton
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

SandgemTownLab_Movement_Unused2:
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
