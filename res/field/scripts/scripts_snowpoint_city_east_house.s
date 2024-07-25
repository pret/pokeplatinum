#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _0085
    .short 0xFD13

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0xAAD, _0064
    ScrCmd_27F 0x800C
    GoToIfEq 0x800C, 1, _007A
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _006F
    ScrCmd_27D 0x800C, 0
    GoToIfEq 0x800C, -1, _007A
    SetFlag 0xAAD
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0064:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006F:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007A:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0085:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00B0
    GoToIfEq 0x800C, 1, _0296
    End

_00B0:
    Message 9
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _0296
    ScrCmd_198 0x8000, 0x8001
    GoToIfEq 0x8001, 0, _028B
    ScrCmd_2E5 0x8000, 2, 0x800C
    GoToIfEq 0x800C, 0, _02A1
    BufferPartyMonNickname 0, 0x8000
    Message 12
    ScrCmd_2E6 0x8000, 2, 0x800C
    SetVar 0x8003, 0x800C
    GoToIfEq 0x8003, -2, _0296
    ScrCmd_2EA 0x8003, 0x800C
    GoToIfEq 0x800C, 0, _02AC
    ScrCmd_1C8 0x800C, 0x8000
    SetVar 0x8002, 0x800C
    GoToIfEq 0x800C, 4, _0161
    GoTo _0256
    End

_0161:
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    Message 16
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _021B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_2E7 0x8000, 0x8003
    ScrCmd_2E8 0x8002
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8002, 4, _021B
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    Message 19
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _021B
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    Message 20
    PlayFanfare SEQ_SE_DP_KON
    WaitFanfare SEQ_SE_DP_KON
    WaitTime 30, 0x800C
    Message 21
    WaitTime 32, 0x800C
    PlaySound SEQ_FANFA1
    ScrCmd_0D4 1, 0x8003
    Message 22
    WaitSound
    WaitTime 16, 0x800C
    GoTo _0277
    End

_021B:
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    Message 17
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0241
    GoTo _0161
    End

_0241:
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    Message 18
    GoTo _0296
    End

_0256:
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    Message 15
    PlaySound SEQ_FANFA1
    WaitSound
    WaitTime 16, 0x800C
    GoTo _0277
    End

_0277:
    ScrCmd_2EB 0x8003
    ScrCmd_2E9 0x8000, 0x8002, 0x8003
    GoTo _0296
    End

_028B:
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0296:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02A1:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02AC:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
