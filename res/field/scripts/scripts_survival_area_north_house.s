#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000E
    ScriptEntry _0021
    ScriptEntry _0253
    .short 0xFD13

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0021:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _004C
    GoToIfEq 0x800C, 1, _0232
    End

_004C:
    Message 2
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    ScrCmd_193 0x8000
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8000, 0xFF, _0232
    ScrCmd_198 0x8000, 0x8001
    GoToIfEq 0x8001, 0, _0227
    ScrCmd_2E5 0x8000, 1, 0x800C
    GoToIfEq 0x800C, 0, _023D
    BufferPartyMonNickname 0, 0x8000
    Message 5
    ScrCmd_2E6 0x8000, 1, 0x800C
    SetVar 0x8003, 0x800C
    GoToIfEq 0x8003, -2, _0232
    ScrCmd_2EA 0x8003, 0x800C
    GoToIfEq 0x800C, 0, _0248
    ScrCmd_1C8 0x800C, 0x8000
    SetVar 0x8002, 0x800C
    GoToIfEq 0x800C, 4, _00FD
    GoTo _01F2
    End

_00FD:
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    Message 9
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _01B7
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_2E7 0x8000, 0x8003
    ScrCmd_2E8 0x8002
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8002, 4, _01B7
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    Message 12
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 1, _01B7
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_1CA 0x800C, 0x8000, 0x8002
    ScrCmd_0D4 1, 0x800C
    Message 13
    PlayFanfare SEQ_SE_DP_KON
    WaitFanfare SEQ_SE_DP_KON
    WaitTime 30, 0x800C
    Message 14
    WaitTime 32, 0x800C
    PlaySound SEQ_FANFA1
    ScrCmd_0D4 1, 0x8003
    Message 15
    WaitSound
    WaitTime 16, 0x800C
    GoTo _0213
    End

_01B7:
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    Message 10
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _01DD
    GoTo _00FD
    End

_01DD:
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    Message 11
    GoTo _0232
    End

_01F2:
    BufferPartyMonNickname 0, 0x8000
    ScrCmd_0D4 1, 0x8003
    Message 8
    PlaySound SEQ_FANFA1
    WaitSound
    WaitTime 16, 0x800C
    GoTo _0213
    End

_0213:
    ScrCmd_2EB 0x8003
    ScrCmd_2E9 0x8000, 0x8002, 0x8003
    GoTo _0232
    End

_0227:
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0232:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_023D:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0248:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0253:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
