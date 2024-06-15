    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _001E
    ScriptEntry _007A
    ScriptEntry _008B
    ScriptEntry _009C
    ScriptEntry _00AD
    ScriptEntry _00CF
    ScriptEntry _00BE
    .short 0xFD13

_001E:
    PlayFanfare 0x5DC
    LockAll
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _003E
    GoTo _0074

_003E:
    ScrCmd_0CD 0
    Message 1
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_04E 0x48E
    ScrCmd_04F
    ScrCmd_14E
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ScrCmd_0CD 0
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0074:
    CloseMessage
    ReleaseAll
    End

_007A:
    PlayFanfare 0x5DC
    LockAll
    Message 7
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_008B:
    PlayFanfare 0x5DC
    LockAll
    Message 8
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_009C:
    PlayFanfare 0x5DC
    LockAll
    Message 9
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00AD:
    PlayFanfare 0x5DC
    LockAll
    Message 10
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00BE:
    PlayFanfare 0x5DC
    LockAll
    Message 11
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00CF:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _010A
    Message 5
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _010A
    Message 6
    GoTo _010A
    End

_010A:
    ScrCmd_0CD 0
    Message 4
    GoTo _0118
    End

_0118:
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End
