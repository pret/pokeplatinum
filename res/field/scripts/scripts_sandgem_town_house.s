#include "macros/scrcmd.inc"
#include "res/text/bank/sandgem_town_house.h"


    ScriptEntry SandgemTownHouse_BreederM
    ScriptEntry SandgemTownHouse_BreederF
    ScriptEntryEnd

SandgemTownHouse_BreederM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTownHouse_Text_PokemonGrowStrongerFromBattlingOtherPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SandgemTownHouse_BreederF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message SandgemTownHouse_Text_AGoodTrainerTakesCareToNotLetTheirPokemonFaint
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
