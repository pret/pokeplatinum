#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_1.h"

    .data

    ScriptEntry _001D
    ScriptEntry _000A
    ScriptEntryEnd

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
    ShowSignpostMessage 1, SIGNPOST_BUILDING_INFO
    ScrCmd_038 3
    ScrCmd_039
    ScrCmd_03B 0x800C
    CallCommonScript 0x7D0
    End
