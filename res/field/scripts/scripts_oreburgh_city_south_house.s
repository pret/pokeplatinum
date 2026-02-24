#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_south_house.h"


    ScriptEntry OreburghCitySouthHouse_Worker
    ScriptEntryEnd

OreburghCitySouthHouse_Worker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghCitySouthHouse_Text_YoureTakingATourOfOurCoalMine
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
