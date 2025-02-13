#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_4.h"

    .data

    ScriptEntry _000A
    ScriptEntry _001D
    TableEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_001D:
    ScrCmd_036 1, 2, 0, 0x800C
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End
