#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_1.h"


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
    ShowLandmarkSign 1
    End
