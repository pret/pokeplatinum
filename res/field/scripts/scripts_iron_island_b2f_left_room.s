#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0026
    ScriptEntry _0060
    ScriptEntry _0064
    ScriptEntry _00F3
    ScriptEntry _01A8
    ScriptEntry _0464
    ScriptEntry _0466
    ScriptEntry _0468
    ScriptEntry _01AA
    .short 0xFD13

_0026:
    ScrCmd_25B
    GoToIfUnset 229, _0035
    End

_0035:
    GoToIfEq 0x4092, 2, _004A
    SetVar 0x4092, 0
    End

_004A:
    ScrCmd_186 4, 19, 41
    ScrCmd_188 4, 17
    ScrCmd_189 4, 3
    End

_0060:
    ScrCmd_25C
    End

_0064:
    LockAll
    SetPlayerBike 0
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 2, _00D1
    CallIfEq 0x8005, 3, _00DD
    BufferPlayerName 0
    CallIfUnset 225, _00E9
    CallIfSet 225, _00EE
    BufferPlayerName 0
    PlaySound SEQ_GONIN
    Message 1
    WaitSound
    SetFlag 225
    SetVar 0x4092, 1
    Message 2
    WaitABXPadPress
    CloseMessage
    SetVar 0x403F, 0x261
    ScrCmd_161
    ScrCmd_06D 4, 48
    ReleaseAll
    End

_00D1:
    ApplyMovement 4, _0170
    WaitMovement
    Return

_00DD:
    ApplyMovement 4, _0184
    WaitMovement
    Return

_00E9:
    Message 0
    Return

_00EE:
    Message 3
    Return

_00F3:
    LockAll
    ApplyMovement 0xFF, _0158
    ApplyMovement 4, _0160
    WaitMovement
    Message 4
    CloseMessage
    SetVar 0x4092, 0
    ScrCmd_162
    ScrCmd_06D 4, 16
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 2, _013E
    CallIfEq 0x8005, 3, _014A
    ReleaseAll
    End

_013E:
    ApplyMovement 4, _0190
    WaitMovement
    Return

_014A:
    ApplyMovement 4, _01A0
    WaitMovement
    Return

    .balign 4, 0
_0158:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0160:
    MoveAction_003
    EndMovement

    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0170:
    MoveAction_023
    MoveAction_04B
    MoveAction_00C
    MoveAction_023
    EndMovement

    .balign 4, 0
_0184:
    MoveAction_023
    MoveAction_04B
    EndMovement

    .balign 4, 0
_0190:
    MoveAction_00E
    MoveAction_00D
    MoveAction_022
    EndMovement

    .balign 4, 0
_01A0:
    MoveAction_00E
    EndMovement

_01A8:
    End

_01AA:
    LockAll
    ScrCmd_162
    ScrCmd_06D 4, 16
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 40, _0291
    CallIfEq 0x8005, 41, _02A5
    Message 5
    CloseMessage
    ApplyMovement 5, _0384
    WaitMovement
    Message 6
    CloseMessage
    ApplyMovement 6, _038C
    WaitMovement
    Message 7
    CloseMessage
    ApplyMovement 4, _040C
    WaitMovement
    BufferPlayerName 0
    Message 8
    CloseMessage
    ScrCmd_161
    ScrCmd_0E5 0x343, 0x344
    ScrCmd_162
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _037D
    ApplyMovement 5, _0394
    WaitMovement
    Message 9
    CloseMessage
    ApplyMovement 6, _039C
    WaitMovement
    Message 10
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_065 5
    ScrCmd_065 6
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8005, 40, _02D1
    CallIfEq 0x8005, 41, _02E5
    Call _02F9
    ScrCmd_2B6 4, 1
    ReleaseAll
    End

_0291:
    ApplyMovement 4, _03D4
    ApplyMovement 0xFF, _0434
    WaitMovement
    Return

_02A5:
    ApplyMovement 4, _03E4
    ApplyMovement 0xFF, _044C
    WaitMovement
    Return

    .byte 94
    .byte 0
    .byte 4
    .byte 0
    .byte 51
    .byte 1
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0
    .byte 94
    .byte 0
    .byte 4
    .byte 0
    .byte 51
    .byte 1
    .byte 0
    .byte 0
    .byte 95
    .byte 0
    .byte 27
    .byte 0

_02D1:
    ApplyMovement 4, _0414
    ApplyMovement 0xFF, _0424
    WaitMovement
    Return

_02E5:
    ApplyMovement 4, _041C
    ApplyMovement 0xFF, _042C
    WaitMovement
    Return

_02F9:
    Message 11
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _031C
    GoToIfEq 0x800C, 1, _0366
    End

_031C:
    ScrCmd_177 0x800C
    GoToIfEq 0x800C, 6, _0353
    PlaySound SEQ_FANFA4
    WaitSound
    Message 12
    ScrCmd_097 0x1BF, 10
    SetFlag 0x1E5
    ClearFlag 226
    Call _0371
    Message 15
    WaitABXPadPress
    CloseMessage
    Return

_0353:
    SetFlag 226
    SetVar 0x4092, 2
    Message 13
    WaitABXPadPress
    CloseMessage
    Return

_0366:
    Message 14
    GoTo _02F9
    End

_0371:
    SetFlag 229
    SetVar 0x4092, 2
    Return

_037D:
    ScrCmd_0EB
    ReleaseAll
    End

    .balign 4, 0
_0384:
    MoveAction_023
    EndMovement

    .balign 4, 0
_038C:
    MoveAction_023
    EndMovement

    .balign 4, 0
_0394:
    MoveAction_021
    EndMovement

    .balign 4, 0
_039C:
    MoveAction_020
    EndMovement

    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 63
    .byte 0
    .byte 2
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_03D4:
    MoveAction_022
    MoveAction_00D
    MoveAction_00E 2
    EndMovement

    .balign 4, 0
_03E4:
    MoveAction_022
    MoveAction_00C
    MoveAction_00E 2
    EndMovement

    .byte 13
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_040C:
    MoveAction_022
    EndMovement

    .balign 4, 0
_0414:
    MoveAction_020
    EndMovement

    .balign 4, 0
_041C:
    MoveAction_021
    EndMovement

    .balign 4, 0
_0424:
    MoveAction_021
    EndMovement

    .balign 4, 0
_042C:
    MoveAction_020
    EndMovement

    .balign 4, 0
_0434:
    MoveAction_03F 2
    MoveAction_021
    MoveAction_03F
    MoveAction_03D
    MoveAction_00E
    EndMovement

    .balign 4, 0
_044C:
    MoveAction_03F 2
    MoveAction_020
    MoveAction_03F
    MoveAction_03D
    MoveAction_00E
    EndMovement

_0464:
    End

_0466:
    End

_0468:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 226, _0504
    GoToIfEq 0x4092, 2, _0513
    GoToIfGe 0x40E3, 4, _04EB
    GoToIfEq 0x40E3, 3, _04E0
    GoToIfEq 0x40E3, 2, _04D5
    GoToIfEq 0x40E3, 1, _04CA
    BufferPlayerName 0
    Message 18
    GoTo _04F6
    End

_04CA:
    Message 19
    GoTo _04F6
    End

_04D5:
    Message 20
    GoTo _04F6
    End

_04E0:
    Message 21
    GoTo _04F6
    End

_04EB:
    Message 22
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04F6:
    AddVar 0x40E3, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0504:
    Call _02F9
    ScrCmd_2B6 4, 1
    ReleaseAll
    End

_0513:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
