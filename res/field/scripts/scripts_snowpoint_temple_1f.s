#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_temple_1f.h"


    ScriptEntry _000A
    ScriptEntry _0010
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09D6
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

SnowpointTemple1F_Unused:
    End
    
    .balign 4, 0
