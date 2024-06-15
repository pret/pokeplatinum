    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _00C2
    ScriptEntry _00D5
    .short 0xFD13

_000E:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    GoToIfSet 133, _00B7
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _003B
    GoTo _00AC

_003B:
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_2A5
    ScrCmd_193 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0xFF, _00AC
    ScrCmd_226 0
    SetVar 0x8004, 0x800C
    ScrCmd_198 0x8004, 0x8005
    ScrCmd_228 0x800C
    GoToIfNe 0x8005, 0x800C, _009F
    ScrCmd_229 0x8004
    ScrCmd_22A
    SetFlag 133
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_009F:
    ScrCmd_22A
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00AC:
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00B7:
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00C2:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 5
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00D5:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 6
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End
