    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0016
    ScriptEntry _0078
    ScriptEntry _008B
    ScriptEntry _009E
    ScriptEntry _00B1
    .short 0xFD13

_0016:
    PlayFanfare 0x5DC
    LockAll
    ScrCmd_072 20, 2
    Message 0
    ScrCmd_03E 0x800C
    CloseMessage
    GoToIfEq 0x800C, 0, _003E
    ScrCmd_073
    ReleaseAll
    End

_003E:
    ScrCmd_071 0x800C, 100
    GoToIfEq 0x800C, 0, _006B
    ScrCmd_070 100
    ScrCmd_074
    PlayFanfare 0x644
    ScrCmd_04B 0x644
    ScrCmd_073
    ScrCmd_206
    ReleaseAll
    End

_006B:
    Message 1
    WaitButtonPress
    CloseMessage
    ScrCmd_073
    ReleaseAll
    End

_0078:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_008B:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_009E:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00B1:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 5
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End
