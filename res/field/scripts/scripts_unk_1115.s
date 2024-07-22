#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_1E5 48
    ScrCmd_235 0, 0x800C
    Dummy1 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _005C
    GoToIfEq 0x8008, 1, _0074
    GoToIfEq 0x8008, 2, _0092
    GoToIfEq 0x8008, 3, _00AA
    GoTo _005C
    End

_005C:
    ScrCmd_235 4, 0x8004, 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    WaitABXPadPress
    GoTo _0129
    End

_0074:
    ScrCmd_235 1, 2, 0x8004, 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    WaitABXPadPress
    ScrCmd_235 2
    GoTo _0129
    End

_0092:
    ScrCmd_235 1, 0, 0x8004, 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    GoTo _00AA
    End

_00AA:
    ScrCmd_235 6, 0x8006
    GoToIfNe 0x8006, 0, _00EB
    GoTo _00C5
    End

_00C5:
    ScrCmd_235 1, 3, 0x8004, 0x8005
    Dummy1 0x8004
    Dummy1 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    ScrCmd_235 2
    WaitABXPadPress
    GoTo _0129
    End

_00EB:
    ScrCmd_235 1, 1, 0x8004, 0x8005
    Dummy1 0x8004
    Dummy1 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    ScrCmd_235 3, 0x8006, 0x8004, 0x8005
    Dummy1 0x8006
    Dummy1 0x8004
    Dummy1 0x8005
    ScrCmd_1FB 0x8004, 0x8005
    WaitABXPadPress
    GoTo _0129
    End

_0129:
    CloseMessage
    ReleaseAll
    End

    .byte 0
