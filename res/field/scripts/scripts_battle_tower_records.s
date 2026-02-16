#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower_records.h"


    ScriptEntry _001A
    ScriptEntry _0068
    ScriptEntry _00B6
    ScriptEntry _0104
    ScriptEntry _01FD
    ScriptEntry _024B
    ScriptEntryEnd

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 1
    GoTo _002E
    End

_002E:
    Call _0299
    Call _029E
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, _031D
    GoToIfEq VAR_0x8008, -2, _031D
    Call _032B
    GoTo _002E
    End

_0068:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 1
    GoTo _007C
    End

_007C:
    Call _0299
    Call _029E
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, _031D
    GoToIfEq VAR_0x8008, -2, _031D
    Call _032B
    GoTo _007C
    End

_00B6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 2
    GoTo _00CA
    End

_00CA:
    Call _0299
    Call _029E
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, _031D
    GoToIfEq VAR_0x8008, -2, _031D
    Call _032B
    GoTo _00CA
    End

_0104:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 5
    GoTo _0118
    End

_0118:
    Call _0299
    Call _029E
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, _031D
    GoToIfEq VAR_0x8008, -2, _031D
    ScrCmd_2CC 1, VAR_0x8001, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0174
    ScrCmd_2CC 2, VAR_0x8001, VAR_RESULT
    BufferSpeciesNameFromVar 0, VAR_RESULT, 0, 0
    Message 7
    GoTo _017F
    End

_0174:
    Message 6
    GoTo _017F
    End

_017F:
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8004, 0
    SetVar VAR_0x8005, 0
    GoTo _0199
    End

_0199:
    Call _02BD
    GoToIfEq VAR_0x8002, 9, _0118
    GoToIfEq VAR_0x8002, -2, _0118
    SetVar VAR_0x8003, 0
    SetVar VAR_0x8006, 0
    SetVar VAR_0x8007, 0
    GoTo _01D3
    End

_01D3:
    ScrCmd_2DE VAR_0x8001, VAR_0x8002, VAR_0x8003, VAR_0x8006, VAR_0x8007
    GoToIfEq VAR_0x8003, -2, _0199
    Call _032B
    Message 6
    GoTo _01D3
    End

_01FD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 4
    GoTo _0211
    End

_0211:
    Call _0299
    Call _029E
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, _031D
    GoToIfEq VAR_0x8008, -2, _031D
    Call _032B
    GoTo _0211
    End

_024B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8000, 6
    GoTo _025F
    End

_025F:
    Call _0299
    Call _029E
    SetVar VAR_0x8008, VAR_0x8001
    GoToIfEq VAR_0x8008, 3, _031D
    GoToIfEq VAR_0x8008, -2, _031D
    Call _032B
    GoTo _025F
    End

_0299:
    Message 0
    Return

_029E:
    InitLocalTextMenu 31, 9, 0, VAR_0x8001
    SetMenuXOriginToRight
    AddMenuEntryImm 1, 0
    AddMenuEntryImm 2, 1
    AddMenuEntryImm 3, 2
    AddMenuEntryImm 4, 3
    ShowMenu
    Return

_02BD:
    InitLocalTextListMenu 25, 1, 0, VAR_0x8002
    AddListMenuEntry 8, 0
    AddListMenuEntry 9, 1
    AddListMenuEntry 10, 2
    AddListMenuEntry 11, 3
    AddListMenuEntry 12, 4
    AddListMenuEntry 13, 5
    AddListMenuEntry 14, 6
    AddListMenuEntry 15, 7
    AddListMenuEntry 16, 8
    AddListMenuEntry 5, 9
    ShowListMenuRememberCursor VAR_0x8004, VAR_0x8005
    Return

_031D:
    CloseMessage
    GoTo _0327
    End

_0327:
    ReleaseAll
    End

_032B:
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    Call _0341
    Return

_0341:
    ScrCmd_2C8 VAR_0x8001, VAR_0x8000, VAR_0x8003
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    Return

    .balign 4, 0
