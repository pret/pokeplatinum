#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_north_house.h"


    ScriptEntry CelesticTownNorthHouse_ExpertM
    ScriptEntry CelesticTownNorthHouse_Elder
    ScriptEntry CelesticTownNorthHouse_Lass
    ScriptEntry CelesticTownNorthHouse_Scroll
    ScriptEntry CelesticTownNorthHouse_OnTransition
    ScriptEntry CelesticTownNorthHouse_Book
    ScriptEntryEnd

CelesticTownNorthHouse_OnTransition:
    End

CelesticTownNorthHouse_ExpertM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message CelesticTownNorthHouse_Text_LikeToKnowMesprit
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, CelesticTownNorthHouse_YouWouldnt
    Message CelesticTownNorthHouse_Text_MespritInfo
    GoTo CelesticTownNorthHouse_ExpertMEnd
    End

CelesticTownNorthHouse_YouWouldnt:
    Message CelesticTownNorthHouse_Text_YouWouldnt
    GoTo CelesticTownNorthHouse_ExpertMEnd
    End

CelesticTownNorthHouse_ExpertMEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTownNorthHouse_Elder:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GAME_COMPLETED, CelesticTownNorthHouse_IDidSomeResearch
    GoToIfSet FLAG_FIRST_ARRIVAL_CANALAVE_CITY, CelesticTownNorthHouse_CelesticOldestTown
    Message CelesticTownNorthHouse_Text_UsingSurfGoPlaces
    GoTo CelesticTownNorthHouse_ElderEnd
    End

CelesticTownNorthHouse_IDidSomeResearch:
    SetFlag FLAG_UNLOCKED_DIALGA_PALKIA_SPEAR_PILLAR
    Message CelesticTownNorthHouse_Text_IDidSomeResearch
    GoTo CelesticTownNorthHouse_ElderEnd
    End

CelesticTownNorthHouse_CelesticOldestTown:
    Message CelesticTownNorthHouse_Text_CelesticOldestTown
    GoTo CelesticTownNorthHouse_ElderEnd
    End

CelesticTownNorthHouse_ElderEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

CelesticTownNorthHouse_Lass:
    NPCMessage CelesticTownNorthHouse_Text_MySisterStudiesMyths
    End

CelesticTownNorthHouse_Scroll:
    EventMessage CelesticTownNorthHouse_Text_InvaluableScroll
    End

CelesticTownNorthHouse_Book:
    BufferPlayerName 0
    NPCMessage CelesticTownNorthHouse_Text_OldBook
    End

    .balign 4, 0
