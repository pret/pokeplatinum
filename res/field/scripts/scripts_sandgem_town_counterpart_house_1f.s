#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_counterpart_house_1f.h"


    ScriptEntry SandgemTownCounterpartHouse1F_ExpertM
    ScriptEntry SandgemTownCounterpartHouse1F_Twin
    ScriptEntryEnd

SandgemTownCounterpartHouse1F_ExpertM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownCounterpartHouse1F_OhMyYouveGotANationalPokedex
    Message SandgemTownCounterpartHouse1F_Text_SoThatRowanFellowIsBack
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownCounterpartHouse1F_OhMyYouveGotANationalPokedex:
    Message SandgemTownCounterpartHouse1F_Text_OhMyYouveGotANationalPokedex
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownCounterpartHouse1F_Twin:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownCounterpartHouse1F_TwinNationalDex
    GoTo SandgemTownCounterpartHouse1F_WowYoureDoingTheSameAsMyBigSibling

SandgemTownCounterpartHouse1F_WowYoureDoingTheSameAsMyBigSibling:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownCounterpartHouse1F_WowYoureDoingTheSameAsMyBigSister
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTownCounterpartHouse1F_WowYoureDoingTheSameAsMyBigBrother
    End

SandgemTownCounterpartHouse1F_WowYoureDoingTheSameAsMyBigSister:
    BufferPlayerName 0
    Message SandgemTownCounterpartHouse1F_Text_WowYoureDoingTheSameAsMyBigSister
    GoTo SandgemTownCounterpartHouse1F_CloseMessageWowYoureDoingTheSameAsMyBigSibling

SandgemTownCounterpartHouse1F_WowYoureDoingTheSameAsMyBigBrother:
    BufferPlayerName 0
    Message SandgemTownCounterpartHouse1F_Text_WowYoureDoingTheSameAsMyBigBrother
    GoTo SandgemTownCounterpartHouse1F_CloseMessageWowYoureDoingTheSameAsMyBigSibling

SandgemTownCounterpartHouse1F_CloseMessageWowYoureDoingTheSameAsMyBigSibling:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownCounterpartHouse1F_TwinNationalDex:
    GoToIfUnset FLAG_GAME_COMPLETED, SandgemTownCounterpartHouse1F_WowYoureDoingTheSameAsMyBigSibling
    GoToIfSet FLAG_TALKED_TO_COUNTERPART_SISTER_WITH_NATIONAL_DEX, SandgemTownCounterpartHouse1F_BufferSwarmMapAndSpecies
    SetFlag FLAG_TALKED_TO_COUNTERPART_SISTER_WITH_NATIONAL_DEX
    EnableSwarms
    BufferPlayerName 0
    Message SandgemTownCounterpartHouse1F_Text_ThereWasNewsSayingThereIsAMassiveOutbreakOfPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownCounterpartHouse1F_BufferSwarmMapAndSpecies:
    BufferPlayerName 0
    GetSwarmMapAndSpecies VAR_MAP_LOCAL_1, VAR_MAP_LOCAL_0
    BufferMapName 1, VAR_MAP_LOCAL_1
    BufferSpeciesNameFromVar 2, VAR_MAP_LOCAL_0, 0, 1
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownCounterpartHouse1F_MaleTheresABunchOfThisPokemonAtThatLocation
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTownCounterpartHouse1F_FemaleTheresABunchOfThisPokemonAtThatLocation
    End

SandgemTownCounterpartHouse1F_MaleTheresABunchOfThisPokemonAtThatLocation:
    Message SandgemTownCounterpartHouse1F_Text_MaleTheresABunchOfThisPokemonAtThatLocation
    GoTo SandgemTownCounterpartHouse1F_CloseMessageTheresABunchOfThisPokemonAtThatLocation

SandgemTownCounterpartHouse1F_FemaleTheresABunchOfThisPokemonAtThatLocation:
    BufferPlayerName 0
    Message SandgemTownCounterpartHouse1F_Text_FemaleTheresABunchOfThisPokemonAtThatLocation
    GoTo SandgemTownCounterpartHouse1F_CloseMessageTheresABunchOfThisPokemonAtThatLocation

SandgemTownCounterpartHouse1F_CloseMessageTheresABunchOfThisPokemonAtThatLocation:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
