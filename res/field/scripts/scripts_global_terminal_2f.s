#include "macros/scrcmd.inc"
#include "res/text/bank/global_terminal_2f.h"


    ScriptEntry _0107
    ScriptEntry _003A
    ScriptEntry _004D
    ScriptEntry _0060
    ScriptEntry _0073
    ScriptEntry _0086
    ScriptEntry _0099
    ScriptEntry _00AC
    ScriptEntry _00BF
    ScriptEntry _00D2
    ScriptEntry _00E5
    ScriptEntry _00F6
    ScriptEntry _0109
    ScriptEntry _0193
    ScriptEntryEnd

_003A:
    NPCMessage 0
    End

_004D:
    NPCMessage 1
    End

_0060:
    NPCMessage 2
    End

_0073:
    NPCMessage 3
    End

_0086:
    NPCMessage 4
    End

_0099:
    NPCMessage 5
    End

_00AC:
    NPCMessage 6
    End

_00BF:
    NPCMessage 7
    End

_00D2:
    NPCMessage 8
    End

_00E5:
    EventMessage 9
    End

_00F6:
    EventMessage 10
    End

_0107:
    End

_0109:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8005, 6
    GoTo _011D
    End

_011D:
    Message 13
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 15, 0
    AddMenuEntryImm 16, 1
    AddMenuEntryImm 17, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0167
    GoToIfEq VAR_0x8008, 1, _0188
    GoTo _0161
    End

_0161:
    CloseMessage
    ReleaseAll
    End

_0167:
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _0161
    CloseMessage
    CallCommonScript 0x802
    ReleaseAll
    End

_0188:
    Message 14
    GoTo _011D
    End

_0193:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8005, 5
    GoTo _01A7
    End

_01A7:
    Message 11
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 15, 0
    AddMenuEntryImm 16, 1
    AddMenuEntryImm 17, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _01F1
    GoToIfEq VAR_0x8008, 1, _0212
    GoTo _01EB
    End

_01EB:
    CloseMessage
    ReleaseAll
    End

_01F1:
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _01EB
    CloseMessage
    CallCommonScript 0x802
    ReleaseAll
    End

_0212:
    Message 12
    GoTo _01A7
    End

    .balign 4, 0
