#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_counterpart_house_1f.h"


    ScriptEntry SandgemTownCounterpartHouse1F_ExpertM
    ScriptEntry SandgemTownCounterpartHouse1F_Twin
    ScriptEntryEnd

SandgemTownCounterpartHouse1F_ExpertM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownCounterpartHouse1F_YouveGotANationalPokedex
    Message SandgemTownCounterpartHouse1F_Text_RowanIsBack
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownCounterpartHouse1F_YouveGotANationalPokedex:
    Message SandgemTownCounterpartHouse1F_Text_YouveGotANationalPokedex
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownCounterpartHouse1F_Twin:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, SandgemTownCounterpartHouse1F_TwinNationalDex
    GoTo SandgemTownCounterpartHouse1F_SameAsMyBigSibling

SandgemTownCounterpartHouse1F_SameAsMyBigSibling:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownCounterpartHouse1F_SameAsMyBigSister
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTownCounterpartHouse1F_SameAsMyBigBrother
    End

SandgemTownCounterpartHouse1F_SameAsMyBigSister:
    BufferPlayerName 0
    Message SandgemTownCounterpartHouse1F_Text_SameAsMyBigSister
    GoTo SandgemTownCounterpartHouse1F_CloseMessageSameAsMyBigSibling

SandgemTownCounterpartHouse1F_SameAsMyBigBrother:
    BufferPlayerName 0
    Message SandgemTownCounterpartHouse1F_Text_SameAsMyBigBrother
    GoTo SandgemTownCounterpartHouse1F_CloseMessageSameAsMyBigSibling

SandgemTownCounterpartHouse1F_CloseMessageSameAsMyBigSibling:
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownCounterpartHouse1F_TwinNationalDex:
    GoToIfUnset FLAG_GAME_COMPLETED, SandgemTownCounterpartHouse1F_SameAsMyBigSibling
    GoToIfSet FLAG_TALKED_TO_COUNTERPART_SISTER_WITH_NATIONAL_DEX, SandgemTownCounterpartHouse1F_BufferSwarmMapAndSpecies
    SetFlag FLAG_TALKED_TO_COUNTERPART_SISTER_WITH_NATIONAL_DEX
    EnableSwarms
    BufferPlayerName 0
    Message SandgemTownCounterpartHouse1F_Text_MassiveOutbreakOfPokemon
    WaitButton
    CloseMessage
    ReleaseAll
    End

SandgemTownCounterpartHouse1F_BufferSwarmMapAndSpecies:
    BufferPlayerName 0
    GetSwarmMapAndSpecies VAR_MAP_LOCAL_0x01, VAR_MAP_LOCAL_0x00
    BufferMapName 1, VAR_MAP_LOCAL_0x01
    BufferSpeciesNameFromVar 2, VAR_MAP_LOCAL_0x00, 0, 1
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, SandgemTownCounterpartHouse1F_BunchOfPokemonAtLocationMale
    GoToIfEq VAR_RESULT, GENDER_FEMALE, SandgemTownCounterpartHouse1F_BunchOfPokemonAtLocationFemale
    End

SandgemTownCounterpartHouse1F_BunchOfPokemonAtLocationMale:
    Message SandgemTownCounterpartHouse1F_Text_BunchOfPokemonAtLocationMale
    GoTo SandgemTownCounterpartHouse1F_CloseMessageBunchOfPokemonAtLocation

SandgemTownCounterpartHouse1F_BunchOfPokemonAtLocationFemale:
    BufferPlayerName 0
    Message SandgemTownCounterpartHouse1F_Text_BunchOfPokemonAtLocationFemale
    GoTo SandgemTownCounterpartHouse1F_CloseMessageBunchOfPokemonAtLocation

SandgemTownCounterpartHouse1F_CloseMessageBunchOfPokemonAtLocation:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
