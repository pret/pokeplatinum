#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0046
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0021:
    LockAll
    Message 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0046
    GoToIfEq 0x800C, 1, _0059
    End

_0046:
    ScrCmd_0A2
    Message 12
    ScrCmd_135 94
    CloseMessage
    ScrCmd_2BB
    ScrCmd_204
    ReleaseAll
    End

_0059:
    CloseMessage
    ReleaseAll
    End

    .byte 0
