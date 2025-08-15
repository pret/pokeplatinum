#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_ruins_room_1.h"


    ScriptEntry _000A
    ScriptEntry _0010
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09C9
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_26D 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
