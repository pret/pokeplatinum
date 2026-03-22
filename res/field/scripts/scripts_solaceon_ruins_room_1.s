#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_ruins_room_1.h"


    ScriptEntry _000A
    ScriptEntry _0010
    ScriptEntryEnd

_000A:
    SetFlag FLAG_FIRST_ARRIVAL_SOLACEON_RUINS
    End

_0010:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    MessageUnown 0
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
