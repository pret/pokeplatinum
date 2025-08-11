#include "macros/scrcmd.inc"
#include "res/text/bank/old_chateau_back_middle_west_room.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_UNK_0x0149, _009C
    GoToIfSet FLAG_UNK_0x0AB0, _009C
    GetTimeOfDay VAR_RESULT
    GoToIfLt VAR_RESULT, 3, _009C
    Message 1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0096
    BufferPlayerName 0
    Message 2
    CloseMessage
    PlayCry SPECIES_ROTOM
    WaitCry
    SetFlag FLAG_UNK_0x0AB0
    StartWildBattle SPECIES_ROTOM, 20
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _00A7
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _008B
    SetFlag FLAG_UNK_0x0149
    ReleaseAll
    End

_008B:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0096:
    CloseMessage
    ReleaseAll
    End

_009C:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A7:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
