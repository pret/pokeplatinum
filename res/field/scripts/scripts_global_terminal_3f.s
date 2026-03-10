#include "macros/scrcmd.inc"
#include "res/text/bank/global_terminal_3f.h"


    ScriptEntry _0103
    ScriptEntry _0036
    ScriptEntry _0049
    ScriptEntry _005C
    ScriptEntry _006F
    ScriptEntry _0082
    ScriptEntry _0095
    ScriptEntry _00A8
    ScriptEntry _00BB
    ScriptEntry _00CE
    ScriptEntry _00E1
    ScriptEntry _00F2
    ScriptEntry _0105
    ScriptEntryEnd

_0036:
    NPCMessage 0
    End

_0049:
    NPCMessage 1
    End

_005C:
    NPCMessage 2
    End

_006F:
    NPCMessage 3
    End

_0082:
    NPCMessage 4
    End

_0095:
    NPCMessage 5
    End

_00A8:
    NPCMessage 6
    End

_00BB:
    NPCMessage 7
    End

_00CE:
    NPCMessage 8
    End

_00E1:
    EventMessage 9
    End

_00F2:
    EventMessage 10
    End

_0103:
    End

_0105:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    SetVar VAR_0x8005, 2
    GoTo _0119
    End

_0119:
    Message 11
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 13, 0
    AddMenuEntryImm 14, 1
    AddMenuEntryImm 15, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0163
    GoToIfEq VAR_0x8008, 1, _0184
    GoTo _015D
    End

_015D:
    CloseMessage
    ReleaseAll
    End

_0163:
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _015D
    CloseMessage
    CallCommonScript 0x802
    ReleaseAll
    End

_0184:
    Message 12
    GoTo _0119
    End

    .balign 4, 0
