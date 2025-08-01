#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0007.h"


    ScriptEntry _000A
    ScriptEntry _001C
    ScriptEntryEnd

_000A:
    LockAll
    BufferNumber 0, VAR_0x8000
    Message 106
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_001C:
    LockAll
    Message 107
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
