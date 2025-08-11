#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_1f.h"


    ScriptEntry _0022
    ScriptEntry _0028
    ScriptEntry _0051
    ScriptEntry _007A
    ScriptEntry _00A3
    ScriptEntry _00DF
    ScriptEntry _0174
    ScriptEntry _00CC
    ScriptEntryEnd

_0022:
    SetFlag FLAG_UNK_0x09DD
    End

_0028:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, _0046
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0046:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0051:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, _006F
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006F:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, _0098
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0098:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, _00C1
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C1:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_GALACTIC_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0107
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0107:
    Message 10
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _012A
    GoToIfEq VAR_RESULT, MENU_NO, _015E
    End

_012A:
    BufferPlayerName 0
    Message 11
    WaitABXPadPress
    WaitFanfare SEQ_SE_CONFIRM
    PlayFanfare SEQ_SE_DP_DOOR10
    ApplyMovement 5, _0164
    ApplyMovement 6, _016C
    WaitMovement
    SetFlag FLAG_UNK_0x0224
    RemoveObject 5
    RemoveObject 6
    CloseMessage
    ReleaseAll
    End

_015E:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0164:
    WalkFastWest
    EndMovement

    .balign 4, 0
_016C:
    WalkFastEast
    EndMovement

_0174:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
