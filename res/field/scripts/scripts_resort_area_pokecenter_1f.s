#include "macros/scrcmd.inc"
#include "res/text/bank/resort_area_pokecenter_1f.h"


    ScriptEntry _000E
    ScriptEntry _001A
    ScriptEntry _002D
    ScriptEntryEnd

_000E:
    SetVar VAR_0x8007, 0
    CallCommonScript CommonScript_Unk02
    End

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
