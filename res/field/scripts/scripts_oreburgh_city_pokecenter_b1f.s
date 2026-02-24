#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_pokecenter_b1f.h"


    ScriptEntry OreburghCityPokecenterB1F_BattleGirl
    ScriptEntryEnd

OreburghCityPokecenterB1F_BattleGirl:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityPokecenterB1F_Text_IWantToBecomeFriendsWithAnExperiencedTrainerIReallyAdmire
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
