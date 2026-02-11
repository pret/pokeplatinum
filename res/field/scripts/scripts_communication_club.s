#include "macros/scrcmd.inc"
#include "res/text/bank/communication_club.h"


    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0046
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0021:
    LockAll
    Message 9
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0046
    GoToIfEq VAR_RESULT, MENU_NO, _0059
    End

_0046:
    ScrCmd_0A2
    Message 12
    ScrCmd_135 94
    CloseMessage
    ScrCmd_2BB
    ScrCmd_204
    ReleaseAll
    End

_0059:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
