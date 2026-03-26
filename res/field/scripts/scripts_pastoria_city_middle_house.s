#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_middle_house.h"


    ScriptEntry PastoriaCityMiddleHouse_OldMan
    ScriptEntry PastoriaCityMiddleHouse_BugCatcher
    ScriptEntryEnd

PastoriaCityMiddleHouse_OldMan:
    NPCMessage PastoriaCityMiddleHouse_Text_FemaleCombeeEvolves
    End

PastoriaCityMiddleHouse_BugCatcher:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_PASTORIA_CITY_MIDDLE_HOUSE_MACHO_BRACE, PastoriaCityMiddleHouse_YoureGood
    GoToIfSet FLAG_TALKED_TO_PASTORIA_CITY_MIDDLE_HOUSE_BUG_CATCHER, PastoriaCityMiddleHouse_HandlePartyCombeeGenderCount
    Message PastoriaCityMiddleHouse_Text_CatchBothGendersCombee
    SetFlag FLAG_TALKED_TO_PASTORIA_CITY_MIDDLE_HOUSE_BUG_CATCHER
    GoTo PastoriaCityMiddleHouse_BugCatcherEnd
    End

PastoriaCityMiddleHouse_HandlePartyCombeeGenderCount:
    CheckPartyCombeeGenderCount VAR_RESULT
    GoToIfEq VAR_RESULT, 0, PastoriaCityMiddleHouse_NotASingleCombee
    GoToIfEq VAR_RESULT, 1, PastoriaCityMiddleHouse_ThatsACombee
    Message PastoriaCityMiddleHouse_Text_BothGendersCombee
    SetVar VAR_0x8004, ITEM_MACHO_BRACE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, PastoriaCityMiddleHouse_BagIsFull
    SetFlag FLAG_RECEIVED_PASTORIA_CITY_MIDDLE_HOUSE_MACHO_BRACE
    Common_GiveItemQuantity
    GoTo PastoriaCityMiddleHouse_YoureGood
    End

PastoriaCityMiddleHouse_NotASingleCombee:
    Message PastoriaCityMiddleHouse_Text_NotASingleCombee
    WaitButton
    CloseMessage
    ReleaseAll
    End

PastoriaCityMiddleHouse_ThatsACombee:
    Message PastoriaCityMiddleHouse_Text_ThatsACombee
    GoTo PastoriaCityMiddleHouse_BugCatcherEnd
    End

PastoriaCityMiddleHouse_BagIsFull:
    Message PastoriaCityMiddleHouse_Text_BagIsFull
    GoTo PastoriaCityMiddleHouse_BugCatcherEnd
    End

PastoriaCityMiddleHouse_YoureGood:
    Message PastoriaCityMiddleHouse_Text_YoureGood
    GoTo PastoriaCityMiddleHouse_BugCatcherEnd
    End

PastoriaCityMiddleHouse_BugCatcherEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End
