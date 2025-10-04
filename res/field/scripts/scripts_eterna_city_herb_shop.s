#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_herb_shop.h"


    ScriptEntry EternaCityHerbShop_Vendor
    ScriptEntry EternaCityHerbShop_ExpertF
    ScriptEntry EternaCityHerbShop_ExpertM
    ScriptEntryEnd

EternaCityHerbShop_Vendor:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message EternaCityHerbShop_Text_Welcome
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_ETERNA_HOUSE
    ReleaseAll
    End

EternaCityHerbShop_ExpertF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message EternaCityHerbShop_Text_YourPokemonWontLikeThem
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaCityHerbShop_ExpertM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message EternaCityHerbShop_Text_NonBitterWouldBeMedicalBreakthrough
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
