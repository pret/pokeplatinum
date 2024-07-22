#include "macros/scrcmd.inc"

    .data

    ScriptEntry _003A
    ScriptEntry _03CC
    ScriptEntry _0409
    ScriptEntry _0446
    ScriptEntry _0483
    ScriptEntry _04C0
    ScriptEntry _04FD
    ScriptEntry _053A
    ScriptEntry _0577
    ScriptEntry _05B4
    ScriptEntry _05F1
    ScriptEntry _062E
    ScriptEntry _0676
    ScriptEntry _0689
    .short 0xFD13

_003A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x8007, 0
    CallIfUnset 136, _006F
    GoToIfEq 0x4001, 0, _0077
    GoToIfEq 0x4001, 1, _0080
    End

_006F:
    SetVar 0x8007, 1
    Return

_0077:
    Message 1
    GoTo _00B5

_0080:
    Message 11
    GoTo _00B5

_0089:
    Message 3
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00AC
    GoToIfEq 0x800C, 1, _00F5
    End

_00AC:
    Message 6
    GoTo _00D5

_00B5:
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _0089
    GoToIfEq 0x800C, 1, _02B3
    End

_00D5:
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _00F5
    GoToIfEq 0x800C, 1, _02B3
    End

_00F5:
    ScrCmd_177 0x800C
    GoToIfEq 0x800C, 1, _0115
    GoToIfNe 0x800C, 1, _0121
    End

_0115:
    SetVar 0x4002, 0
    GoTo _016C

_0121:
    Message 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    ScrCmd_193 0x4002
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x4002, 0xFF, _02B3
    ScrCmd_198 0x4002, 0x800C
    GoToIfEq 0x800C, 0, _02BE
    GoTo _016C

_016C:
    Message 5
    CloseMessage
    ScrCmd_1BD 0x8006
    GoToIfEq 0x8006, 0, _019E
    GoToIfEq 0x8006, 2, _01B8
    GoToIfEq 0x8006, 3, _01D2
    End

_019E:
    ApplyMovement 0, _0374
    WaitMovement
    ApplyMovement 0xFF, _0340
    WaitMovement
    GoTo _01EC

_01B8:
    ApplyMovement 0, _0380
    WaitMovement
    ApplyMovement 0xFF, _0348
    WaitMovement
    GoTo _01EC

_01D2:
    ApplyMovement 0, _038C
    WaitMovement
    ApplyMovement 0xFF, _0354
    WaitMovement
    GoTo _01EC

_01EC:
    SetFlag 136
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A6 0x4002, 0x8005, 0x8007
    ScrCmd_0A1
    ApplyMovement 0xFF, _0360
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8006, 0, _0245
    GoToIfEq 0x8006, 2, _025F
    GoToIfEq 0x8006, 3, _0279
    End

_0245:
    ApplyMovement 0xFF, _0368
    WaitMovement
    ApplyMovement 0, _0398
    WaitMovement
    GoTo _0293

_025F:
    ApplyMovement 0xFF, _0368
    WaitMovement
    ApplyMovement 0, _03A4
    WaitMovement
    GoTo _0293

_0279:
    ApplyMovement 0xFF, _0368
    WaitMovement
    ApplyMovement 0, _03B0
    WaitMovement
    GoTo _0293

_0293:
    GoToIfEq 0x8005, 0, _0335
    SetVar 0x4001, 1
    Message 7
    WaitABXPadPress
    CloseMessage
    GoTo _02C7

_02B3:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02BE:
    Message 13
    GoTo _0121

_02C7:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, 0x800C, 0x8004
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x800C, 0, _0328
    ScrCmd_130 0x8004
    ScrCmd_1E5 54
    ScrCmd_316
    ScrCmd_245 0, 0x8004
    Message 8
    ApplyMovement 0, _03BC
    WaitMovement
    Message 14
    WaitABXPadPress
    CloseMessage
    ApplyMovement 0, _03C4
    WaitMovement
    ReleaseAll
    End

_0328:
    Message 9
    WaitABXPadPress
    CloseMessage
    GoTo _02C7

_0335:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0340:
    MoveAction_008 2
    EndMovement

    .balign 4, 0
_0348:
    MoveAction_00A
    MoveAction_008
    EndMovement

    .balign 4, 0
_0354:
    MoveAction_00B
    MoveAction_008
    EndMovement

    .balign 4, 0
_0360:
    MoveAction_001
    EndMovement

    .balign 4, 0
_0368:
    MoveAction_009 2
    MoveAction_000
    EndMovement

    .balign 4, 0
_0374:
    MoveAction_00E
    MoveAction_003
    EndMovement

    .balign 4, 0
_0380:
    MoveAction_00E
    MoveAction_003
    EndMovement

    .balign 4, 0
_038C:
    MoveAction_00F
    MoveAction_002
    EndMovement

    .balign 4, 0
_0398:
    MoveAction_00F
    MoveAction_001
    EndMovement

    .balign 4, 0
_03A4:
    MoveAction_00F
    MoveAction_001
    EndMovement

    .balign 4, 0
_03B0:
    MoveAction_00E
    MoveAction_001
    EndMovement

    .balign 4, 0
_03BC:
    MoveAction_003
    EndMovement

    .balign 4, 0
_03C4:
    MoveAction_001
    EndMovement

_03CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 0, 0x800C
    GoToIfEq 0x800C, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 0, 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0409:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 1, 0x800C
    GoToIfEq 0x800C, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 1, 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0446:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 2, 0x800C
    GoToIfEq 0x800C, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 2, 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0483:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 3, 0x800C
    GoToIfEq 0x800C, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 3, 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_04C0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 4, 0x800C
    GoToIfEq 0x800C, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 4, 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_04FD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 5, 0x800C
    GoToIfEq 0x800C, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 5, 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_053A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 6, 0x800C
    GoToIfEq 0x800C, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 6, 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0577:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 7, 0x800C
    GoToIfEq 0x800C, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 7, 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_05B4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 8, 0x800C
    GoToIfEq 0x800C, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 8, 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_05F1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 9, 0x800C
    GoToIfEq 0x800C, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 9, 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_062E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 10, 0x800C
    GoToIfEq 0x800C, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 10, 0x800C
    ScrCmd_0A1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_066B:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0676:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0689:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
