    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _0016
    ScriptEntry _001A
    ScriptEntry _002B
    .short 0xFD13

_0012:
    ScrCmd_171
    End

_0016:
    ScrCmd_172
    End

_001A:
    LockAll
    PlayFanfare 0x624
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_002B:
    PlayFanfare 0x5DC
    LockAll
    Message 0
    PlayFanfare 0x637
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End
