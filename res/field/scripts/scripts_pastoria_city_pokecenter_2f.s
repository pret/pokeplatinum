#include "macros/scrcmd.inc"
#include "res/text/bank/pastoria_city_pokecenter_2f.h"

    .data

    ScriptEntry _0006
    TableEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
