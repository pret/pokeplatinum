#include "macros/scrcmd.inc"
#include "res/text/bank/grand_lake_route_213_east_house.h"


    ScriptEntry GrandLakeRoute213EastHouse_MiddleAgedMan
    ScriptEntryEnd

GrandLakeRoute213EastHouse_MiddleAgedMan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message GrandLakeRoute213EastHouse_Text_YoureATraveler
    GetRandom VAR_RESULT, 4
    GoToIfEq VAR_RESULT, 0, GrandLakeRoute213EastHouse_MtMoonKanto
    GoToIfEq VAR_RESULT, 1, GrandLakeRoute213EastHouse_TinTowerJohto
    GoToIfEq VAR_RESULT, 2, GrandLakeRoute213EastHouse_SpaceCenterHoenn
    GoTo GrandLakeRoute213EastHouse_WhirlIslandsJohto

GrandLakeRoute213EastHouse_MtMoonKanto:
    Message GrandLakeRoute213EastHouse_Text_MtMoonKanto
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213EastHouse_TinTowerJohto:
    Message GrandLakeRoute213EastHouse_Text_TinTowerJohto
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213EastHouse_SpaceCenterHoenn:
    Message GrandLakeRoute213EastHouse_Text_SpaceCenterHoenn
    WaitButton
    CloseMessage
    ReleaseAll
    End

GrandLakeRoute213EastHouse_WhirlIslandsJohto:
    Message GrandLakeRoute213EastHouse_Text_WhirlIslandsJohto
    WaitButton
    CloseMessage
    ReleaseAll
    End
