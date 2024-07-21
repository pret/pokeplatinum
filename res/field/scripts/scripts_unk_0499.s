#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_294 21, 1
    GoToIfSet 114, _0031
    SetFlag 114
    BufferNumber 0, 1
    Message 15
    GoTo _0041
    End

_0031:
    BufferNumber 0, 1
    Message 0
    GoTo _0041
    End

_0041:
    Message 1
    ScrCmd_041 30, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 2, 0
    ScrCmd_042 3, 1
    ScrCmd_042 4, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0085
    GoToIfEq 0x8008, 1, _015D
    GoTo _0152
    End

_0085:
    BufferNumber 2, 1
    Message 7
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _0152
    ScrCmd_29A 1, 0x800C
    GoToIfEq 0x800C, 0, _0147
    ScrCmd_299 1
    ScrCmd_296
    Message 10
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_295
    CloseMessage
    ScrCmd_2E2
    ScrCmd_2E4 0, 0x4000, 0x4001
    ScrCmd_2E4 1, 0x4002, 0x4003
    ScrCmd_2E4 2, 0x4004, 0x4005
    ScrCmd_2E3
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetVar 0x8000, 0
    Call _017A
    GoToIfEq 0x8000, 0, _01AB
    BufferNumber 0, 0x8000
    Message 11
    CallIfNe 0x4001, 0, _01B6
    CallIfNe 0x4003, 0, _0200
    CallIfNe 0x4005, 0, _024A
    Message 5
    GoTo _0172
    End

_0147:
    Message 14
    GoTo _0168
    End

_0152:
    Message 5
    GoTo _0168
    End

_015D:
    Message 6
    GoTo _0041
    End

_0168:
    WaitABXPadPress
    CloseMessage
    ScrCmd_295
    ReleaseAll
    End

_0172:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_017A:
    CallIfNe 0x4001, 0, _01A3
    CallIfNe 0x4003, 0, _01A3
    CallIfNe 0x4005, 0, _01A3
    Return

_01A3:
    AddVar 0x8000, 1
    Return

_01AB:
    Message 5
    GoTo _0172
    End

_01B6:
    GoToIfGt 0x4001, 1, _01CE
    BufferItemName 0, 0x4000
    GoTo _01D3

_01CE:
    ScrCmd_33D 0, 0x4000
_01D3:
    BufferNumber 1, 0x4001
    ScrCmd_07D 0x4000, 0x4001, 0x800C
    GoToIfEq 0x800C, 0, _0294
    PlaySound SEQ_FANFA4
    Message 13
    AddItem 0x4000, 0x4001, 0x800C
    WaitSound
    Return

_0200:
    GoToIfGt 0x4003, 1, _0218
    BufferItemName 0, 0x4002
    GoTo _021D

_0218:
    ScrCmd_33D 0, 0x4002
_021D:
    BufferNumber 1, 0x4003
    ScrCmd_07D 0x4002, 0x4003, 0x800C
    GoToIfEq 0x800C, 0, _0294
    PlaySound SEQ_FANFA4
    Message 13
    AddItem 0x4002, 0x4003, 0x800C
    WaitSound
    Return

_024A:
    GoToIfGt 0x4005, 1, _0262
    BufferItemName 0, 0x4004
    GoTo _0267

_0262:
    ScrCmd_33D 0, 0x4004
_0267:
    BufferNumber 1, 0x4005
    ScrCmd_07D 0x4004, 0x4005, 0x800C
    GoToIfEq 0x800C, 0, _0294
    PlaySound SEQ_FANFA4
    Message 13
    AddItem 0x4004, 0x4005, 0x800C
    WaitSound
    Return

_0294:
    Message 12
    Return

    .byte 0
    .byte 0
    .byte 0
