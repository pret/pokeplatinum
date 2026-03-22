#include "macros/scrcmd.inc"
#include "res/text/bank/route_213_gate_to_pastoria_city.h"


    ScriptEntry _000A
    ScriptEntry _001D
    ScriptEntryEnd

_000A:
    NPCMessage 0
    End

_001D:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0044
    Message 2
    GoTo _004F
    End

_0044:
    Message 3
    GoTo _004F
    End

_004F:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
