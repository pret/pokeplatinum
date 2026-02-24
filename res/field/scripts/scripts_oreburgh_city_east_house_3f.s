#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_east_house_3f.h"


    ScriptEntry OreburghCityEastHouse3F_ScientistM
    ScriptEntry OreburghCityEastHouse3F_AceTrainerM
    ScriptEntryEnd

OreburghCityEastHouse3F_ScientistM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityEastHouse3F_Text_TheCoalMineHeresFullyAutomated
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghCityEastHouse3F_AceTrainerM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCityEastHouse3F_Text_YouRemindMeSoMuchOfTheTimeIGotMyFirstPokemon
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
