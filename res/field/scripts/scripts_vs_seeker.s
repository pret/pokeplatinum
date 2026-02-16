#include "macros/scrcmd.inc"
#include "res/text/bank/vs_seeker.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    SetVar VAR_RESULT, 0
    ScrCmd_20A VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0043
    GoToIfEq VAR_0x8008, 1, _0047
    GoToIfEq VAR_0x8008, 2, _0050
    GoTo _0059

_0043:
    ReleaseAll
    End

_0047:
    Message 0
    GoTo _0068

_0050:
    Message 1
    GoTo _0068

_0059:
    WaitTime 30, VAR_RESULT
    Message 2
    GoTo _0068

_0068:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
