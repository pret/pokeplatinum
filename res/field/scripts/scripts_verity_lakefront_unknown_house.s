#include "macros/scrcmd.inc"
#include "res/text/bank/verity_lakefront_unknown_house.h"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    BufferPlayerName 0
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
