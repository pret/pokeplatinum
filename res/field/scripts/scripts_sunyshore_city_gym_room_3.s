#include "macros/scrcmd.inc"

    .data

    ScriptEntry _0012
    ScriptEntry _001D
    ScriptEntry _0022
    ScriptEntry _0027
    .short 0xFD13

_0012:
    SetVar 0x4000, 0
    ScrCmd_175 2
    End

_001D:
    ScrCmd_176 0
    End

_0022:
    ScrCmd_176 2
    End

_0027:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_15B 7, 0x800C
    GoToIfEq 0x800C, 1, _0104
    ScrCmd_1CD 9, 156, 0, 0, 0
    Message 0
    CloseMessage
    ScrCmd_0E5 0x140, 0
    ScrCmd_0EC 0x800C
    GoToIfEq 0x800C, 0, _011A
    Message 1
    BufferPlayerName 0
    Message 2
    PlaySound SEQ_BADGE
    WaitSound
    ScrCmd_15C 7
    ScrCmd_260 23
    SetTrainerFlag 0x119
    SetTrainerFlag 0x11D
    SetTrainerFlag 0x12D
    SetTrainerFlag 0x12E
    SetTrainerFlag 0x12F
    SetTrainerFlag 0x14B
    SetTrainerFlag 0x155
    SetTrainerFlag 0x158
    SetVar 0x407E, 2
    ScrCmd_1CD 10, 156, 246, 0, 0
    Message 3
    GoTo _00BC

_00BC:
    SetVar 0x8004, 0x180
    SetVar 0x8005, 1
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _00FA
    CallCommonScript 0x7FC
    SetFlag 182
    BufferItemName 0, 0x8004
    ScrCmd_0D3 1, 0x8004
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FA:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0104:
    GoToIfUnset 182, _00BC
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011A:
    ScrCmd_0EB
    ReleaseAll
    End
