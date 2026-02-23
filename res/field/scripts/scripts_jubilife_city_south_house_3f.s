#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_south_house_3f.h"


    ScriptEntry JubilifeCitySouthHouse3F_PokefanM
    ScriptEntryEnd

JubilifeCitySouthHouse3F_PokefanM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCitySouthHouse3F_WhenIGiveMyPokemonNicknamesItsLikeTheyreMyVeryOwn
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
