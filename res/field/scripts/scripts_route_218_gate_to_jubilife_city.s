#include "macros/scrcmd.inc"
#include "res/text/bank/route_218_gate_to_jubilife_city.h"

    .data

    ScriptEntry _000A
    ScriptEntry _001D
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_001D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar 0x8004, 0x1BD
    BufferItemName 0, 0x8004
    GoToIfSet FLAG_UNK_0x0084, _005E
    Message 1
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _00A7
    GoToIfEq 0x800C, MENU_NO, _009C
    End

_005E:
    BufferItemName 0, 0x8004
    Message 3
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0086
    GoToIfEq 0x800C, MENU_NO, _0091
    End

_0086:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0091:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009C:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A7:
    BufferItemName 0, 0x8004
    Message 2
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0084
    GoTo _005E

    .byte 0
