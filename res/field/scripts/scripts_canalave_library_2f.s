#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_library_2f.h"

    .data

    ScriptEntry _0033
    ScriptEntry _005C
    ScriptEntry _0090
    ScriptEntry _00A1
    ScriptEntry _001A
    ScriptEntry _00B2
    ScriptEntryEnd

_001A:
    SetFlag FLAG_UNK_0x02C9
    CallIfEq VAR_ARCEUS_EVENT_STATE, 2, _002D
    End

_002D:
    ClearFlag FLAG_UNK_0x02C9
    Return

_0033:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00A8, _0051
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0051:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfGe VAR_ARCEUS_EVENT_STATE, 3, _0082
    Message 2
    GoTo _007A
    End

_007A:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0082:
    BufferPlayerName 0
    Message 13
    GoTo _007A
    End

_0090:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B2:
    LockAll
    ApplyMovement 1, _019C
    WaitMovement
    Message 5
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0104
    GoToIfEq VAR_RESULT, MENU_NO, _00E1
    End

_00E1:
    Message 6
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0104
    GoToIfEq VAR_RESULT, MENU_NO, _00E1
    End

_0104:
    Message 7
    CloseMessage
    ApplyMovement 1, _01B4
    WaitMovement
    Message 8
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0159
    GoToIfEq VAR_RESULT, MENU_NO, _0136
    End

_0136:
    Message 9
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0159
    GoToIfEq VAR_RESULT, MENU_NO, _0136
    End

_0159:
    Message 10
    CloseMessage
    ApplyMovement 1, _01C4
    WaitMovement
    Message 11
    CloseMessage
    ApplyMovement 1, _01CC
    WaitMovement
    Message 12
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _01E0
    ApplyMovement 1, _01D4
    WaitMovement
    RemoveObject 1
    SetVar VAR_ARCEUS_EVENT_STATE, 3
    ReleaseAll
    End

    .balign 4, 0
_019C:
    WalkOnSpotNormalEast
    EmoteExclamationMark
    WalkNormalEast
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_01B4:
    WalkOnSpotNormalSouth
    WalkOnSpotNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_01C4:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_01CC:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_01D4:
    Delay8 2
    WalkNormalEast 2
    EndMovement

    .balign 4, 0
_01E0:
    WalkNormalSouth
    WalkOnSpotNormalNorth
    EndMovement
