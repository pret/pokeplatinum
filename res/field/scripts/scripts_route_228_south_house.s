#include "macros/scrcmd.inc"
#include "res/text/bank/route_228_south_house.h"


    ScriptEntry Route228SouthHouse_Gentleman
    ScriptEntry Route228SouthHouse_BooksSpace
    ScriptEntry Route228SouthHouse_BooksTime
    ScriptEntry Route228SouthHouse_BooksMind
    ScriptEntry Route228SouthHouse_BooksMachines
    ScriptEntryEnd

Route228SouthHouse_Gentleman:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message Route228SouthHouse_Text_LendAnEar
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, Route228SouthHouse_ShouldntBurdenYou
    GoToIfEq VAR_RESULT, MENU_NO, Route228SouthHouse_PayMeNoHeed
    End

Route228SouthHouse_ShouldntBurdenYou:
    Message Route228SouthHouse_Text_ShouldntBurdenYou
    GoTo Route228SouthHouse_GentlemanEnd
    End

Route228SouthHouse_PayMeNoHeed:
    Message Route228SouthHouse_Text_PayMeNoHeed
    GoTo Route228SouthHouse_GentlemanEnd
    End

Route228SouthHouse_GentlemanEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route228SouthHouse_BooksSpace:
    EventMessage Route228SouthHouse_Text_SpaceAndTheGalaxies
    End

Route228SouthHouse_BooksTime:
    EventMessage Route228SouthHouse_Text_BeyondTimeAndSpace
    End

Route228SouthHouse_BooksMind:
    EventMessage Route228SouthHouse_Text_MindAndMatter
    End

Route228SouthHouse_BooksMachines:
    EventMessage Route228SouthHouse_Text_MachinesAndTheirConstruction
    End

    .balign 4, 0
