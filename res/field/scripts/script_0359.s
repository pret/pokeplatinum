    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfSet 169, _002B
    SetFlag 169
    ScrCmd_0CE 0
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002B:
    ScrCmd_0CE 0
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
