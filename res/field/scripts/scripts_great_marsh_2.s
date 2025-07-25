#include "macros/scrcmd.inc"
#include "res/text/bank/great_marsh_2.h"


    ScriptEntry _000A
    ScriptEntry _001D
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
