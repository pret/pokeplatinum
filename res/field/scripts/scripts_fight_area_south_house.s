#include "macros/scrcmd.inc"
#include "res/text/bank/fight_area_south_house.h"

    .data

    ScriptEntry _0012
    ScriptEntry _0025
    ScriptEntry _0038
    ScriptEntry _0057
    ScriptEntryEnd

_0012:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0025:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0038:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_TORCHIC
    Message 2
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0057:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    GoTo _006A
    End

_006A:
    Message 4
    InitLocalTextListMenu 1, 1, 0, VAR_RESULT
    AddListMenuEntry 14, 0
    AddListMenuEntry 15, 1
    AddListMenuEntry 16, 2
    AddListMenuEntry 17, 3
    AddListMenuEntry 18, 4
    AddListMenuEntry 19, 5
    AddListMenuEntry 20, 6
    AddListMenuEntry 21, 7
    AddListMenuEntry 22, 8
    ShowListMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0135
    GoToIfEq VAR_0x8008, 1, _0140
    GoToIfEq VAR_0x8008, 2, _014B
    GoToIfEq VAR_0x8008, 3, _0156
    GoToIfEq VAR_0x8008, 4, _0161
    GoToIfEq VAR_0x8008, 5, _016C
    GoToIfEq VAR_0x8008, 6, _0177
    GoToIfEq VAR_0x8008, 7, _0182
    GoTo _018D
    End

_0135:
    Message 6
    GoTo _006A
    End

_0140:
    Message 7
    GoTo _006A
    End

_014B:
    Message 8
    GoTo _006A
    End

_0156:
    Message 9
    GoTo _006A
    End

_0161:
    Message 10
    GoTo _006A
    End

_016C:
    Message 11
    GoTo _006A
    End

_0177:
    Message 12
    GoTo _006A
    End

_0182:
    Message 13
    GoTo _006A
    End

_018D:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
