#include "macros/scrcmd.inc"
#include "res/text/bank/victory_road_1f.h"


    ScriptEntry _000A
    ScriptEntry _0031
    ScriptEntryEnd

_000A:
    SetFlag FLAG_UNK_0x09CA
    GoToIfUnset FLAG_GAME_COMPLETED, _002F
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _002F
    SetFlag FLAG_UNK_0x027E
_002F:
    End

_0031:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GAME_COMPLETED, _004F
    Message 0
    GoTo _005A
    End

_004F:
    Message 1
    GoTo _005A
    End

_005A:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
