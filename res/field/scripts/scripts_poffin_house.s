#include "macros/scrcmd.inc"
#include "res/text/bank/poffin_house.h"


    ScriptEntry _0070
    ScriptEntry _0083
    ScriptEntry _0096
    ScriptEntry _00A9
    ScriptEntry _002F
    ScriptEntry _001A
    ScriptEntryEnd

_001A:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_THREE_CHEERS_FOR_POFFIN_CORNER, VAR_MAP_LOCAL_0
    CallIfEq VAR_MAP_LOCAL_0, 0, _004F
    End

_002F:
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_THREE_CHEERS_FOR_POFFIN_CORNER, VAR_MAP_LOCAL_0
    GoToIfNe VAR_MAP_LOCAL_0, 0, _0055
    CallIfUnset FLAG_UNK_0x0217, _004F
    End

_004F:
    SetFlag FLAG_UNK_0x0217
    Return

_0055:
    GoToIfSet FLAG_UNK_0x0217, _0066
    ClearFlag FLAG_UNK_0x0217
    End

_0066:
    ClearFlag FLAG_UNK_0x0217
    AddObject 4
    End

_0070:
    NPCMessage 0
    End

_0083:
    NPCMessage 1
    End

_0096:
    NPCMessage 2
    End

_00A9:
    NPCMessage 3
    End
