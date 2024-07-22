#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0026
    ScriptEntry _003D
    ScriptEntry _012D
    ScriptEntry _0148
    ScriptEntry _0163
    ScriptEntry _017E
    ScriptEntry _0199
    ScriptEntry _01B4
    ScriptEntry _01CF
    .short 0xFD13

_0026:
    GoToIfLt 0x4069, 0x118, _0035
    End

_0035:
    SetVar 0x4069, 0
    End

_003D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq 0x4069, 0x122, _00ED
    GoToIfEq 0x4069, 0x118, _00F8
    GoToIfUnset 0x964, _010F
    ScrCmd_32B 0x800C
    GoToIfEq 0x800C, 0, _011A
    GoToIfEq 0x4069, 0x10E, _00AE
    GoToIfLt 0x4069, 0x104, _011A
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    SetVar 0x4069, 0x10E
    Message 1
    GoTo _0125
    End

_00AE:
    ScrCmd_04C 0x17B, 0
    Message 2
    ScrCmd_04D
    CloseMessage
    ScrCmd_2BD 0x17B, 30
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _0109
    ScrCmd_2BC 0x800C
    GoToIfEq 0x800C, 1, _00F8
    SetVar 0x4069, 0x122
    ReleaseAll
    End

_00ED:
    Message 3
    GoTo _0125
    End

_00F8:
    SetVar 0x4069, 0x118
    Message 3
    GoTo _0125
    End

_0109:
    ScrCmd_0EB
    ReleaseAll
    End

_010F:
    Message 4
    GoTo _0125
    End

_011A:
    Message 0
    GoTo _0125
    End

_0125:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012D:
    SetVar 0x4001, 1
    GoToIfGe 0x4069, 0x104, _020D
    GoTo _01EA
    End

_0148:
    SetVar 0x4002, 1
    GoToIfGe 0x4069, 0x104, _020D
    GoTo _01EA
    End

_0163:
    SetVar 0x4003, 1
    GoToIfGe 0x4069, 0x104, _020D
    GoTo _01EA
    End

_017E:
    SetVar 0x4004, 1
    GoToIfGe 0x4069, 0x104, _020D
    GoTo _01EA
    End

_0199:
    SetVar 0x4005, 1
    GoToIfGe 0x4069, 0x104, _020D
    GoTo _01EA
    End

_01B4:
    SetVar 0x4006, 1
    GoToIfGe 0x4069, 0x104, _020D
    GoTo _01EA
    End

_01CF:
    SetVar 0x4007, 1
    GoToIfGe 0x4069, 0x104, _020D
    GoTo _01EA
    End

_01EA:
    LockAll
    GetPlayerMapPos 0x8004, 0x8005
    ScrCmd_32C 0x4069, 0x24C, 0x8004, 0x8005
    GoToIfGe 0x4069, 0x104, _020F
    ReleaseAll
    End

_020D:
    End

_020F:
    GoToIfUnset 0x964, _020D
    WaitFanfare SEQ_SE_CONFIRM
    ScrCmd_29F 1
    SetVar 0x4069, 0x10E
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
