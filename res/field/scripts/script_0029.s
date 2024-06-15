    .include "macros/scrcmd.inc"

    .data

    ScriptEntry _0107
    ScriptEntry _003A
    ScriptEntry _004D
    ScriptEntry _0060
    ScriptEntry _0073
    ScriptEntry _0086
    ScriptEntry _0099
    ScriptEntry _00AC
    ScriptEntry _00BF
    ScriptEntry _00D2
    ScriptEntry _00E5
    ScriptEntry _00F6
    ScriptEntry _0109
    ScriptEntry _0193
    .short 0xFD13

_003A:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 0
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_004D:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 1
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0060:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 2
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0073:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 3
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0086:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 4
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0099:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 5
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00AC:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 6
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00BF:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 7
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00D2:
    PlayFanfare 0x5DC
    LockAll
    FacePlayer
    Message 8
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00E5:
    PlayFanfare 0x5DC
    LockAll
    Message 9
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_00F6:
    PlayFanfare 0x5DC
    LockAll
    Message 10
    WaitButtonPress
    CloseMessage
    ReleaseAll
    End

_0107:
    End

_0109:
    PlayFanfare 0x5DC
    LockAll
    SetVar 0x8005, 6
    GoTo _011D
    End

_011D:
    Message 13
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 15, 0
    ScrCmd_042 16, 1
    ScrCmd_042 17, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0167
    GoToIfEq 0x8008, 1, _0188
    GoTo _0161
    End

_0161:
    CloseMessage
    ReleaseAll
    End

_0167:
    ScrCmd_014 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _0161
    CloseMessage
    ScrCmd_014 0x802
    ReleaseAll
    End

_0188:
    Message 14
    GoTo _011D
    End

_0193:
    PlayFanfare 0x5DC
    LockAll
    SetVar 0x8005, 5
    GoTo _01A7
    End

_01A7:
    Message 11
    ScrCmd_041 31, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 15, 0
    ScrCmd_042 16, 1
    ScrCmd_042 17, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01F1
    GoToIfEq 0x8008, 1, _0212
    GoTo _01EB
    End

_01EB:
    CloseMessage
    ReleaseAll
    End

_01F1:
    ScrCmd_014 0x7D6
    SetVar 0x800C, 0x4000
    GoToIfEq 0x800C, 0, _01EB
    CloseMessage
    ScrCmd_014 0x802
    ReleaseAll
    End

_0212:
    Message 12
    GoTo _01A7

    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 0
