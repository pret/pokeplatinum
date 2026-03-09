#include "macros/scrcmd.inc"
#include "res/text/bank/old_chateau_back_middle_west_room.h"


    ScriptEntry OldChateauBackMiddleWestRoom_TV
    ScriptEntryEnd

OldChateauBackMiddleWestRoom_TV:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_CAUGHT_OLD_CHATEAU_ROTOM, OldChateauBackMiddleWestRoom_TheTVHasAnOddlyMalevolentFeel
    GoToIfSet FLAG_BATTLED_OLD_CHATEAU_ROTOM, OldChateauBackMiddleWestRoom_TheTVHasAnOddlyMalevolentFeel
    GetTimeOfDay VAR_RESULT
    GoToIfLt VAR_RESULT, TIMEOFDAY_NIGHT, OldChateauBackMiddleWestRoom_TheTVHasAnOddlyMalevolentFeel
    Message OldChateauBackMiddleWestRoom_Text_ThereAppearsToBeAPokemonWantToThumpTheTV
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, OldChateauBackMiddleWestRoom_End
    BufferPlayerName 0
    Message OldChateauBackMiddleWestRoom_Text_PlayerThumpedTheTVSet
    CloseMessage
    PlayCry SPECIES_ROTOM
    WaitCry
    SetFlag FLAG_BATTLED_OLD_CHATEAU_ROTOM
    StartWildBattle SPECIES_ROTOM, 20
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, OldChateauBackMiddleWestRoom_BlackOut
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, OldChateauBackMiddleWestRoom_RotomDisappearedIntoTheTVSet
    SetFlag FLAG_CAUGHT_OLD_CHATEAU_ROTOM
    ReleaseAll
    End

OldChateauBackMiddleWestRoom_RotomDisappearedIntoTheTVSet:
    Message OldChateauBackMiddleWestRoom_Text_RotomDisappearedIntoTheTVSet
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OldChateauBackMiddleWestRoom_End:
    CloseMessage
    ReleaseAll
    End

OldChateauBackMiddleWestRoom_TheTVHasAnOddlyMalevolentFeel:
    Message OldChateauBackMiddleWestRoom_Text_TheTVHasAnOddlyMalevolentFeel
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OldChateauBackMiddleWestRoom_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
