#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b3f.h"


    ScriptEntry _000A
    ScriptEntry _000E
    ScriptEntryEnd

_000A:
    InitPersistedMapFeaturesForDistortionWorld
    End

_000E:
    LockAll
    ScrCmd_311 128
    ApplyMovement 128, _0060
    WaitMovement
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _003B
    Message 1
    GoTo _003E

_003B:
    Message 2
_003E:
    Message 3
    Message 4
    CloseMessage
    ApplyMovement 128, _0068
    WaitMovement
    ScrCmd_312 128
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 6
    ReleaseAll
    End

    .balign 4, 0
_0060:
    WalkNormalNorth 7
    EndMovement

    .balign 4, 0
_0068:
    WalkNormalSouth 7
    EndMovement
