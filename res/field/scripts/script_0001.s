    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0026
    ScriptEntry _0037
    ScriptEntry _0048
    ScriptEntry _0059
    ScriptEntry _006A
    ScriptEntry _007B
    ScriptEntry _008C
    ScriptEntry _009D
    ScriptEntry _00AE
    .short 0xFD13

_0026:
    PlayFanfare 0x5DC
    LockAll
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0037:
    PlayFanfare 0x5DC
    LockAll
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0048:
    PlayFanfare 0x5DC
    LockAll
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0059:
    PlayFanfare 0x5DC
    LockAll
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_006A:
    PlayFanfare 0x5DC
    LockAll
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_007B:
    PlayFanfare 0x5DC
    LockAll
    Message 5
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_008C:
    PlayFanfare 0x5DC
    LockAll
    Message 6
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_009D:
    PlayFanfare 0x5DC
    LockAll
    Message 7
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00AE:
    PlayFanfare 0x5DC
    LockAll
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0AA
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End
