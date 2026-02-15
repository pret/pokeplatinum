#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_condominiums_2f.h"


    ScriptEntry JubilifeCityCondominiums2F_BugCatcher
    ScriptEntry JubilifeCityCondominiums2F_PokemonBreederM
    ScriptEntryEnd

JubilifeCityCondominiums2F_BugCatcher:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCityCondominiums2F_Text_ILikeHowPokemonCanUseAttacks
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCityCondominiums2F_PokemonBreederM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCityCondominiums2F_Text_DidYouBuySomeHealBallsAtThePokeMart
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
