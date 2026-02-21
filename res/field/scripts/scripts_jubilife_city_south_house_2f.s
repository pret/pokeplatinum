#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_south_house_2f.h"


    ScriptEntry JubilifeCitySouthHouse2F_Youngster
    ScriptEntry JubilifeCitySouthHouse2F_PokefanF
    ScriptEntry JubilifeCitySouthHouse2F_PokemonBreederF
    ScriptEntryEnd

JubilifeCitySouthHouse2F_Youngster:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthHouse2F_SomeKindsOfPokemonEvolveWhenTheyGetStrongerFromBattling
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCitySouthHouse2F_PokefanF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthHouse2F_EvolutionMakesPokemonJustThatMuchMoreFascinating
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCitySouthHouse2F_PokemonBreederF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthHouse2F_DidntProfRowanConductResearchWithProfOak
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
