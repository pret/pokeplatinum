#include "macros/scrcmd.inc"
#include "res/text/bank/celestic_town_north_house.h"

    .data

    ScriptEntry _001C
    ScriptEntry _0056
    ScriptEntry _00A1
    ScriptEntry _00B4
    ScriptEntry _001A
    ScriptEntry _00C5
    ScriptEntryEnd

_001A:
    End

_001C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _0043
    Message 1
    GoTo _004E
    End

_0043:
    Message 2
    GoTo _004E
    End

_004E:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0056:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GAME_COMPLETED, _007F
    GoToIfSet FLAG_UNK_0x09B8, _008E
    Message 3
    GoTo _0099
    End

_007F:
    SetFlag FLAG_UNK_0x0145
    Message 5
    GoTo _0099
    End

_008E:
    Message 4
    GoTo _0099
    End

_0099:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C5:
    BufferPlayerName 0
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
