#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0006
    .short 0xFD13

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0xAA4, _006A
    GoToIfSet 0xAA7, _005F
    GoToIfUnset 247, _004C
    ScrCmd_247 0x8002
    Call _0070
    GoToIfEq 0x800C, 1, _0136
    GoTo _0146

_004C:
    SetFlag 247
    SetFlag 0xAA7
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005F:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006A:
    GoTo _012B

_0070:
    ScrCmd_234 0x800C
    GoToIfEq 0x800C, 0, _00C8
    GoToIfEq 0x800C, 1, _00D2
    GoToIfEq 0x800C, 2, _00DC
    GoToIfEq 0x800C, 3, _00E6
    GoToIfEq 0x800C, 4, _00F0
    GoToIfEq 0x800C, 5, _00FA
    GoTo _0104

_00C8:
    ScrCmd_230 0x800C, 0x8002, 65
    Return

_00D2:
    ScrCmd_230 0x800C, 0x8002, 59
    Return

_00DC:
    ScrCmd_230 0x800C, 0x8002, 60
    Return

_00E6:
    ScrCmd_230 0x800C, 0x8002, 61
    Return

_00F0:
    ScrCmd_230 0x800C, 0x8002, 62
    Return

_00FA:
    ScrCmd_230 0x800C, 0x8002, 63
    Return

_0104:
    ScrCmd_230 0x800C, 0x8002, 64
    Return

_010E:
    BufferPartyMonSpecies 1, 0x8002
    BufferPlayerName 2
    Message 4
    PlaySound SEQ_FANFA1
    Message 5
    WaitSound
    Message 6
    GoTo _012B

_012B:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0136:
    BufferPartyMonSpecies 1, 0x8002
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0146:
    ScrCmd_234 0x800C
    GoToIfEq 0x800C, 0, _019E
    GoToIfEq 0x800C, 1, _01F2
    GoToIfEq 0x800C, 2, _0246
    GoToIfEq 0x800C, 3, _029A
    GoToIfEq 0x800C, 4, _02EE
    GoToIfEq 0x800C, 5, _0342
    GoTo _0396

_019E:
    Message 20
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    Message 21
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 65
    ScrCmd_232 3, 65
    GoTo _010E

_01F2:
    Message 2
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    Message 3
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 59
    ScrCmd_232 3, 59
    GoTo _010E

_0246:
    Message 10
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    Message 11
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 60
    ScrCmd_232 3, 60
    GoTo _010E

_029A:
    Message 12
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    Message 13
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 61
    ScrCmd_232 3, 61
    GoTo _010E

_02EE:
    Message 14
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    Message 15
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 62
    ScrCmd_232 3, 62
    GoTo _010E

_0342:
    Message 16
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    Message 17
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 63
    ScrCmd_232 3, 63
    GoTo _010E

_0396:
    Message 18
    WaitABPress
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, 0x800C, 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0, _03EA
    ScrCmd_245 0, 0x8000
    Message 19
    SetFlag 0xAA4
    ScrCmd_231 0x8002, 64
    ScrCmd_232 3, 64
    GoTo _010E

_03EA:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
