#include "macros/scrcmd.inc"

    .data

    ScriptEntry _005A
    ScriptEntry _0066
    ScriptEntry _0072
    ScriptEntry _007E
    ScriptEntry _008A
    ScriptEntry _0096
    ScriptEntry _00A2
    ScriptEntry _00AE
    ScriptEntry _00BA
    ScriptEntry _00C6
    ScriptEntry _00D2
    ScriptEntry _00DE
    ScriptEntry _013E
    ScriptEntry _0333
    ScriptEntry _0346
    ScriptEntry _03B7
    ScriptEntry _0428
    ScriptEntry _043B
    ScriptEntry _044E
    ScriptEntry _0461
    ScriptEntry _0474
    ScriptEntry _04AD
    .short 0xFD13

_005A:
    SetVar 0x8004, 0
    GoTo _00EA

_0066:
    SetVar 0x8004, 1
    GoTo _00EA

_0072:
    SetVar 0x8004, 2
    GoTo _00EA

_007E:
    SetVar 0x8004, 3
    GoTo _00EA

_008A:
    SetVar 0x8004, 4
    GoTo _00EA

_0096:
    SetVar 0x8004, 5
    GoTo _00EA

_00A2:
    SetVar 0x8004, 6
    GoTo _00EA

_00AE:
    SetVar 0x8004, 7
    GoTo _00EA

_00BA:
    SetVar 0x8004, 8
    GoTo _00EA

_00C6:
    SetVar 0x8004, 9
    GoTo _00EA

_00D2:
    SetVar 0x8004, 10
    GoTo _00EA

_00DE:
    SetVar 0x8004, 11
    GoTo _00EA

_00EA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckItem ITEM_COIN_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _0133
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_1CD 16, 0, 0, 0, 0
    ScrCmd_267 0x8004
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0133:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_013E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    CheckItem ITEM_COIN_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _018D
    GoToIfSet 0x130, _0198
    GoToIfSet 0x165, _02CA
    ScrCmd_275 0x800C
    GoToIfEq 0x800C, 0, _0198
    GoTo _02CA
    End

_018D:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0198:
    ScrCmd_075 20, 2
    ScrCmd_072 20, 7
_01A4:
    Message 2
    ScrCmd_040 1, 1, 0, 1, 0x800C
    ScrCmd_042 125, 0
    ScrCmd_042 126, 1
    ScrCmd_042 127, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _01E3
    GoToIfEq 0x8008, 1, _0240
    GoTo _02BB

_01E3:
    ScrCmd_071 0x800C, 0x3E8
    GoToIfEq 0x800C, 0, _029D
    ScrCmd_276 0x800C, 50
    Noop
    GoToIfEq 0x800C, 0, _02AC
    PlayFanfare SEQ_SE_DP_REGI
    ScrCmd_334 35, 0x3E8
    ScrCmd_070 0x3E8
    ScrCmd_074
    WaitFanfare SEQ_SE_DP_REGI
    PlayFanfare SEQ_SE_PL_COIN
    ScrCmd_079 50
    ScrCmd_077
    WaitFanfare SEQ_SE_PL_COIN
    Message 3
    WaitTime 30, 0x800C
    GoTo _01A4

_0240:
    ScrCmd_071 0x800C, 0x2710
    GoToIfEq 0x800C, 0, _029D
    ScrCmd_276 0x800C, 0x1F4
    Noop
    GoToIfEq 0x800C, 0, _02AC
    PlayFanfare SEQ_SE_DP_REGI
    ScrCmd_334 35, 0x2710
    ScrCmd_070 0x2710
    ScrCmd_074
    WaitFanfare SEQ_SE_DP_REGI
    PlayFanfare SEQ_SE_PL_COIN
    ScrCmd_079 0x1F4
    ScrCmd_077
    WaitFanfare SEQ_SE_PL_COIN
    Message 3
    WaitTime 30, 0x800C
    GoTo _01A4

_029D:
    Message 4
    WaitABXPadPress
    CloseMessage
    ScrCmd_076
    ScrCmd_073
    ReleaseAll
    End

_02AC:
    Message 5
    WaitABXPadPress
    CloseMessage
    ScrCmd_076
    ScrCmd_073
    ReleaseAll
    End

_02BB:
    Message 6
    WaitABXPadPress
    CloseMessage
    ScrCmd_076
    ScrCmd_073
    ReleaseAll
    End

_02CA:
    SetVar 0x8004, 0x187
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _0327
    GoTo _02F3
    End

_02F3:
    GoToIfSet 0x165, _0309
    Message 7
    GoTo _0314
    End

_0309:
    Message 10
    GoTo _0314
    End

_0314:
    CallCommonScript 0x7FC
    SetFlag 0x130
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0327:
    SetFlag 0x165
    GoTo _0198
    End

_0333:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0346:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_COIN_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _03A1
    GoToIfSet 0x12E, _03AC
    ScrCmd_276 0x800C, 20
    Noop
    GoToIfEq 0x800C, 0, _03AC
    SetFlag 0x12E
    BufferPlayerName 0
    Message 14
    WaitABXPadPress
    PlayFanfare SEQ_SE_PL_COIN
    ScrCmd_079 20
    WaitFanfare SEQ_SE_PL_COIN
    CloseMessage
    ReleaseAll
    End

_03A1:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03AC:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03B7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_COIN_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _0412
    GoToIfSet 0x12F, _041D
    ScrCmd_276 0x800C, 50
    Noop
    GoToIfEq 0x800C, 0, _041D
    SetFlag 0x12F
    BufferPlayerName 0
    Message 17
    WaitABXPadPress
    PlayFanfare SEQ_SE_PL_COIN
    ScrCmd_079 50
    WaitFanfare SEQ_SE_PL_COIN
    CloseMessage
    ReleaseAll
    End

_0412:
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_041D:
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0428:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_043B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 20
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_044E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0461:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 22
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0474:
    GoToIfGt 0x4040, 0x3E7, _0497
    BufferNumber 0, 0x4040
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 25
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0497:
    BufferNumber 0, 0x3E7
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 25
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04AD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 214, _04CB
    Message 23
    GoTo _04D6
    End

_04CB:
    Message 24
    GoTo _04D6
    End

_04D6:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
