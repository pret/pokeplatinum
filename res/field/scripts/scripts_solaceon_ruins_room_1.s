#include "macros/scrcmd.inc"
#include "res/text/gmm/message_bank_solaceon_ruins_room_1.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0010
    .short 0xFD13

_000A:
    SetFlag 0x9C9
    End

_0010:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_26D 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
