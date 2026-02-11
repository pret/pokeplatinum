#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_city_condominiums_3f.h"


    ScriptEntry JubilifeCityCondominiums3F_Collector
    ScriptEntry JubilifeCityCondominiums3F_Lass
    ScriptEntryEnd

JubilifeCityCondominiums3F_Collector:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCityCondominiums3F_Text_ICanTradePokemonAroundTheWorldUsingNintendoWFC
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

JubilifeCityCondominiums3F_Lass:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message JubilifeCityCondominiums3F_Text_TheWorldYouCanReachWithNintendoWFC
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
