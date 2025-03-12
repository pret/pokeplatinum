#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_city_pokecenter_1f.h"

    .data

    ScriptEntry _001E
    ScriptEntry _002A
    ScriptEntry _003D
    ScriptEntry _0050
    ScriptEntry _0110
    ScriptEntry _0139
    ScriptEntry _014C
    ScriptEntryEnd

_001E:
    SetVar 0x8007, 3
    CallCommonScript 0x7D2
    End

_002A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_003D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0050:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 112, _006C
    Message 2
    GoTo _0078

_006C:
    ScrCmd_0D9 0
    Message 7
    GoTo _0078

_0078:
    Message 3
    ScrCmd_154
    InitCommonStrings2MenuBuilder 1, 1, 0, TRUE, 0x800C
    AddMenuEntrySmallStringID 50, 0
    AddMenuEntrySmallStringID 51, 1
    AddMenuEntrySmallStringID 52, 2
    AddMenuEntrySmallStringID 53, 3
    AddMenuEntrySmallStringID 43, 4
    FinishAndShowMenu
    SetVar 0x8004, 0x800C
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 4, _00E9
    GoToIfEq 0x8008, -2, _00E9
    ScrCmd_155 0x8004, 0x8005
    ScrCmd_344 0, 0x8005
    ScrCmd_346 0
    Message 4
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _00F4
    GoTo _0078

_00E9:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F4:
    ScrCmd_344 0, 0x8005
    Message 5
    SetFlag 112
    ScrCmd_29C 0x8004, 0x8005
    ScrCmd_156 0x8005
    GoTo _00E9

_0110:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 0x964, _012E
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012E:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0139:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
