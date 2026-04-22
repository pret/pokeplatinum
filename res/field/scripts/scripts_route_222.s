#include "macros/scrcmd.inc"
#include "res/text/bank/route_222.h"


    ScriptEntry Route222_Fisherman
    ScriptEntry Route222_RichBoy
    ScriptEntry Route222_ArrowSignpostHotelGrandLake
    ScriptEntry Route222_ArrowSignpostSunyshoreCity
    ScriptEntry Route222_SignPikachuFanClub
    ScriptEntry Route222_SignPokemonSizeContest
    ScriptEntry Route222_PolicemanThomas
    ScriptEntry Route222_OnTransition
    ScriptEntryEnd

Route222_OnTransition:
    GetTimeOfDay VAR_MAP_LOCAL_0
    GoToIfInRange VAR_MAP_LOCAL_0, TIMEOFDAY_MORNING, TIMEOFDAY_TWILIGHT, Route222_SetPolicemanThomasNoBattle
    GoToIfInRange VAR_MAP_LOCAL_0, TIMEOFDAY_NIGHT, TIMEOFDAY_LATE_NIGHT, Route222_SetPolicemanThomasBattle
    End

Route222_SetPolicemanThomasNoBattle:
    ClearFlag FLAG_HIDE_ROUTE_222_POLICEMAN_THOMAS_NO_BATTLE
    SetFlag FLAG_HIDE_ROUTE_222_POLICEMAN_THOMAS
    End

Route222_SetPolicemanThomasBattle:
    ClearFlag FLAG_HIDE_ROUTE_222_POLICEMAN_THOMAS
    SetFlag FLAG_HIDE_ROUTE_222_POLICEMAN_THOMAS_NO_BATTLE
    End

Route222_RichBoy:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_ROUTE_222_TM56, Route222_ExplainFling
    Message Route222_Text_IGiveTMFling
    SetVar VAR_0x8004, ITEM_TM56
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, Route222_BagIsFull
    Common_GiveItemQuantity
    SetFlag FLAG_RECEIVED_ROUTE_222_TM56
    GoTo Route222_ExplainFling

Route222_ExplainFling:
    Message Route222_Text_ExplainFling
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route222_BagIsFull:
    Common_MessageBagIsFull
    CloseMessage
    ReleaseAll
    End

Route222_Fisherman:
    NPCMessage Route222_Text_CatchingMadeMeHappy
    End

Route222_ArrowSignpostHotelGrandLake:
    ShowArrowSign Route222_Text_SignRt222HotelGrandLake
    End

Route222_ArrowSignpostSunyshoreCity:
    ShowArrowSign Route222_Text_SignRt222SunyshoreCity
    End

Route222_SignPikachuFanClub:
    ShowLandmarkSign Route222_Text_SignPikachuFanClub
    End

Route222_SignPokemonSizeContest:
    ShowLandmarkSign Route222_Text_SignPokemonSizeContest
    End

Route222_PolicemanThomas:
    NPCMessage Route222_Text_MoreAgitatedAtNight
    End

    .balign 4, 0
