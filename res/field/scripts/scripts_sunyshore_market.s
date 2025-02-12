#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_market.h"

    .data

    ScriptEntry _001A
    ScriptEntry _0096
    ScriptEntry _00A9
    ScriptEntry _0175
    ScriptEntry _0018
    ScriptEntry _01D4

_0018:
    End

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_247 0x8000
    ScrCmd_230 0x800C, 0x8000, 24
    GoToIfEq 0x800C, 1, _0086
    BufferPartyMonSpecies 0, 0x8000
    Message 0
    ScrCmd_233 0x800C, 0x8000
    GoToIfLt 0x800C, 0x1FE, _007B
    Message 1
    ScrCmd_231 0x8000, 24
    PlaySound SEQ_FANFA1
    BufferPlayerName 1
    Message 2
    WaitSound
    BufferPartyMonSpecies 0, 0x8000
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007B:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0086:
    BufferPartyMonSpecies 0, 0x8000
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0096:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_SEAL_CASE, 1, 0x800C
    GoToIfEq 0x800C, 0, _00D9
    Message 7
    CallCommonScript 0x7E3
    ScrCmd_035
    Call _00E4
    ReleaseAll
    End

_00D9:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E4:
    GetWeekDay 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, SUNDAY, _016F
    GoToIfEq 0x8008, MONDAY, _014B
    GoToIfEq 0x8008, TUESDAY, _0151
    GoToIfEq 0x8008, WEDNESDAY, _0157
    GoToIfEq 0x8008, THURSDAY, _015D
    GoToIfEq 0x8008, FRIDAY, _0163
    GoToIfEq 0x8008, SATURDAY, _0169
    End

_014B:
    ScrCmd_14A 0
    Return

_0151:
    ScrCmd_14A 1
    Return

_0157:
    ScrCmd_14A 2
    Return

_015D:
    ScrCmd_14A 3
    Return

_0163:
    ScrCmd_14A 4
    Return

_0169:
    ScrCmd_14A 5
    Return

_016F:
    ScrCmd_14A 6
    Return

_0175:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    GetWeekDay 0x4000
    GoToIfEq 0x4000, SUNDAY, _01BE
    GoToIfEq 0x4000, MONDAY, _01BE
    GoToIfEq 0x4000, TUESDAY, _01BE
    GoToIfEq 0x4000, WEDNESDAY, _01BE
    GoTo _01C9

_01BE:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C9:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
