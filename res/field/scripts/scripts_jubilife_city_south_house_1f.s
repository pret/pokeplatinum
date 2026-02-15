#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_south_house_1f.h"


    ScriptEntry JubilifeCitySouthHouse1F_AceTrainerM
    ScriptEntry JubilifeCitySouthHouse1F_Lass
    ScriptEntry JubilifeCitySouthHouse1F_Pachirisu
    ScriptEntryEnd

JubilifeCitySouthHouse1F_AceTrainerM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthHouse1F_PokemonAreWonderfulDeeplyMysteriousCreatures
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCitySouthHouse1F_Lass:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthHouse1F_TalkToEveryoneYouSee
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCitySouthHouse1F_Pachirisu:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_PACHIRISU
    Message JubilifeCitySouthHouse1F_PachirisuKukkuuh
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
