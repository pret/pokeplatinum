#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0042
    ScriptEntry _0223
    ScriptEntry _0314
    ScriptEntry _040E
    ScriptEntry _04DD
    ScriptEntry _057D
    ScriptEntry _0679
    ScriptEntry _0730
    ScriptEntry _0103
    ScriptEntry _02CD
    ScriptEntry _03CC
    ScriptEntry _04B9
    ScriptEntry _0551
    ScriptEntry _0704
    ScriptEntry _060C
    ScriptEntry _064C
    .short 0xFD13

_0042:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_09A 0x800C, 15
    GoToIfEq 0x800C, 6, _008E
    ScrCmd_15B 1, 0x800C
    GoToIfEq 0x800C, 0, _008E
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00AE
    CloseMessage
    GoTo _066D
    End

_008E:
    Message 2
    ScrCmd_201 0x8004
    CallIfEq 0x8004, 203, _014A
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

_00AE:
    ScrCmd_09A 0x800C, 15
    SetVar 0x8004, 0x800C
    BufferPartyMonNickname 0, 0x800C
    Message 1
    CloseMessage
    ScrCmd_0C5 0x8004
    ScrCmd_29E 0, 0x8005
    WaitTime 7, 0x800C
    ScrCmd_065 0x800D
    ScrCmd_201 0x8004
    ScrCmd_1CD 19, 0x8004, 0, 0, 0
_00E8:
    WaitTime 1, 0x800C
    GoToIfEq 0x8005, 0, _00E8
    GoTo _066D
    End

_0103:
    LockAll
    BufferPartyMonNickname 0, 0x8000
    Message 1
    CloseMessage
    ScrCmd_0C5 0x8000
    ScrCmd_29E 0, 0x8005
    WaitTime 7, 0x800C
    ScrCmd_065 0x800D
    ScrCmd_201 0x8004
    ScrCmd_1CD 19, 0x8004, 0, 0, 0
_0133:
    WaitTime 1, 0x800C
    GoToIfEq 0x8005, 0, _0133
    ReleaseAll
    End

_014A:
    GoToIfNe 0x40CD, 0, _0221
    GoToIfNe 0x40B1, 1, _0221
    Call _017F
    GoToIfEq 0x800C, 0, _0221
    SetVar 0x40CD, 1
    Return

_017F:
    SetVar 0x800C, 0
    GetPlayerMapPos 0x8004, 0x8005
    GoToIfEq 0x8004, 73, _01CE
    GoToIfEq 0x8004, 74, _01DD
    GoToIfEq 0x8004, 75, _01EC
    GoToIfEq 0x8004, 76, _01FB
    GoToIfEq 0x8004, 77, _020A
    Return

_01CE:
    GoToIfEq 0x8005, 33, _0219
    Return

_01DD:
    GoToIfEq 0x8005, 34, _0219
    Return

_01EC:
    GoToIfEq 0x8005, 34, _0219
    Return

_01FB:
    GoToIfEq 0x8005, 33, _0219
    Return

_020A:
    GoToIfEq 0x8005, 34, _0219
    Return

_0219:
    SetVar 0x800C, 1
    Return

_0221:
    Return

_0223:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_09A 0x800C, 249
    SetVar 0x8004, 0x800C
    GoToIfEq 0x800C, 6, _0275
    ScrCmd_15B 0, 0x800C
    GoToIfEq 0x800C, 0, _0275
    Message 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0284
    CloseMessage
    GoTo _066D
    End

_0275:
    Message 4
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

_0284:
    BufferPartyMonNickname 0, 0x8004
    Message 5
    CloseMessage
    ScrCmd_0C5 0x8004
    ScrCmd_29E 1, 0x8005
    WaitTime 10, 0x800C
    ScrCmd_065 0x800D
    ScrCmd_201 0x8004
    ScrCmd_1CD 24, 0x8004, 0, 0, 0
_02B2:
    WaitTime 1, 0x800C
    GoToIfEq 0x8005, 0, _02B2
    GoTo _066D
    End

_02CD:
    LockAll
    BufferPartyMonNickname 0, 0x8000
    Message 5
    CloseMessage
    ScrCmd_0C5 0x8000
    ScrCmd_29E 1, 0x8005
    WaitTime 10, 0x800C
    ScrCmd_065 0x800D
    ScrCmd_201 0x8004
    ScrCmd_1CD 24, 0x8004, 0, 0, 0
_02FD:
    WaitTime 1, 0x800C
    GoToIfEq 0x8005, 0, _02FD
    ReleaseAll
    End

_0314:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_1CF 2, 0x800C
    GoToIfEq 0x800C, 1, _03BD
    ScrCmd_09A 0x800C, 70
    GoToIfEq 0x800C, 6, _0372
    ScrCmd_15B 5, 0x800C
    GoToIfEq 0x800C, 0, _0372
    Message 6
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0381
    CloseMessage
    GoTo _066D
    End

_0372:
    Message 8
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

_0381:
    ScrCmd_1CF 1
    ScrCmd_09A 0x800C, 70
    SetVar 0x8004, 0x800C
    BufferPartyMonNickname 0, 0x800C
    Message 10
    ScrCmd_0C5 0x8004
    CloseMessage
    Message 11
    WaitABXPadPress
    CloseMessage
    ScrCmd_201 0x8004
    ScrCmd_1CD 22, 0x8004, 0, 0, 0
    GoTo _066D
    End

_03BD:
    Message 9
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

_03CC:
    LockAll
    ScrCmd_1CF 2, 0x800C
    GoToIfEq 0x800C, 1, _03BD
    ScrCmd_1CF 1
    BufferPartyMonNickname 0, 0x8000
    Message 10
    CloseMessage
    ScrCmd_0C5 0x8000
    Message 11
    WaitABXPadPress
    CloseMessage
    ScrCmd_201 0x8004
    ScrCmd_1CD 22, 0x8004, 0, 0, 0
    GoTo _0675

_040E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_09A 0x800C, 0x1AF
    GoToIfEq 0x800C, 6, _0469
    ScrCmd_15B 6, 0x800C
    GoToIfEq 0x800C, 0, _0469
    ScrCmd_160 0x800C
    GoToIfEq 0x800C, 1, _0478
    Message 18
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0487
    CloseMessage
    GoTo _0671
    End

_0469:
    Message 20
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_0478:
    Message 21
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_0487:
    ScrCmd_09A 0x800C, 0x1AF
    SetVar 0x8004, 0x800C
    BufferPartyMonNickname 0, 0x800C
    Message 19
    CloseMessage
    ScrCmd_0BF 0x8004
    ScrCmd_201 0x8004
    ScrCmd_1CD 26, 0x8004, 0, 0, 0
    GoTo _0671
    End

_04B9:
    LockAll
    BufferPartyMonNickname 0, 0x8000
    Message 19
    CloseMessage
    ScrCmd_0BF 0x8000
    ScrCmd_201 0x8004
    ScrCmd_1CD 26, 0x8004, 0, 0, 0
    ReleaseAll
    End

_04DD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_160 0x800C
    GoToIfEq 0x800C, 1, _0512
    Message 12
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _051F
    CloseMessage
    GoTo _0671
    End

_0512:
    Message 14
    WaitABXPadPress
    CloseMessage
    GoTo _0671

_051F:
    ScrCmd_09A 0x800C, 57
    SetVar 0x8004, 0x800C
    BufferPartyMonNickname 0, 0x800C
    Message 13
    CloseMessage
    ScrCmd_0C0 0x8004
    ScrCmd_201 0x8004
    ScrCmd_1CD 21, 0x8004, 0, 0, 0
    GoTo _0671
    End

_0551:
    LockAll
    BufferPartyMonNickname 0, 0x8000
    Message 13
    CloseMessage
    ScrCmd_063 0xFF
    ScrCmd_0C0 0x8000
    ScrCmd_062 0xFF
    ScrCmd_201 0x8004
    ScrCmd_1CD 21, 0x8004, 0, 0, 0
    ReleaseAll
    End

_057D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_09A 0x800C, 0x1B0
    GoToIfEq 0x800C, 6, _05B4
    Message 15
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _05C3
    CloseMessage
    GoTo _0671
    End

_05B4:
    Message 17
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_05C3:
    ScrCmd_09A 0x800C, 0x1B0
    SetVar 0x8004, 0x800C
    BufferPartyMonNickname 0, 0x800C
    Message 16
    CloseMessage
    ScrCmd_0C5 0x8004
    ScrCmd_201 0x8004
    ScrCmd_1CD 23, 0x8004, 0, 0, 0
    ScrCmd_201 0x8004
    CallIfEq 0x8004, 0x169, _0606
    GoTo _0671
    End

_0606:
    SetFlag 123
    Return

_060C:
    LockAll
    BufferPartyMonNickname 0, 0x8000
    Message 16
    CloseMessage
    ScrCmd_0C5 0x8000
    ScrCmd_1D1 1
    PlayFanfare SEQ_SE_DP_FBRADE
    ScrCmd_0C4
    ScrCmd_201 0x8004
    ScrCmd_1CD 23, 0x8004, 0, 0, 0
    ScrCmd_201 0x8004
    CallIfEq 0x8004, 0x169, _0606
    GoTo _0675

_064C:
    LockAll
    BufferPartyMonNickname 0, 0x8000
    Message 26
    CloseMessage
    ScrCmd_0C5 0x8000
    ScrCmd_1D0 1
    ScrCmd_0C3
    WaitTime 42, 0x800C
    GoTo _0675

_066D:
    ReleaseAll
    End

_0671:
    ReleaseAll
    End

_0675:
    ReleaseAll
    End

_0679:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_09A 0x800C, 127
    GoToIfEq 0x800C, 6, _06C3
    ScrCmd_15B 7, 0x800C
    GoToIfEq 0x800C, 0, _06C3
    Message 22
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _06D2
    CloseMessage
    GoTo _0671
    End

_06C3:
    Message 24
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_06D2:
    ScrCmd_09A 0x800C, 127
    SetVar 0x8004, 0x800C
    BufferPartyMonNickname 0, 0x800C
    Message 23
    CloseMessage
    ScrCmd_0C1 0x8004
    ScrCmd_201 0x8004
    ScrCmd_1CD 25, 0x8004, 0, 0, 0
    GoTo _0671
    End

_0704:
    LockAll
    BufferPartyMonNickname 0, 0x8000
    Message 23
    CloseMessage
    ScrCmd_063 0xFF
    ScrCmd_0C1 0x8000
    ScrCmd_062 0xFF
    ScrCmd_201 0x8004
    ScrCmd_1CD 25, 0x8004, 0, 0, 0
    ReleaseAll
    End

_0730:
    End

    .byte 0
    .byte 0
