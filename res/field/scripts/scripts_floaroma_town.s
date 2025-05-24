#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_town.h"

    .data

    ScriptEntry _002E
    ScriptEntry _0030
    ScriptEntry _006C
    ScriptEntry _00B0
    ScriptEntry _00C3
    ScriptEntry _00D6
    ScriptEntry _00E9
    ScriptEntry _00FC
    ScriptEntry _0113
    ScriptEntry _012A
    ScriptEntry _0141
    ScriptEntryEnd

_002E:
    End

_0030:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ApplyMovement 7, _005C
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 8, _0064
    WaitMovement
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_005C:
    MoveAction_WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0064:
    MoveAction_WalkOnSpotNormalWest
    EndMovement

_006C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_UNK_0x40CF, 2, _0099
    Message 2
    ApplyMovement 2, _00A4
    WaitMovement
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0099:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00A4:
    MoveAction_FaceNorth
    MoveAction_Delay8 3
    EndMovement

_00B0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FC:
    ShowMapSign 12
    End

_0113:
    ShowLandmarkSign 13
    End

_012A:
    ShowLandmarkSign 14
    End

_0141:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPartyHasFatefulEncounter VAR_RESULT, SPECIES_SHAYMIN
    GoToIfEq VAR_RESULT, 0xFF, _019D
    CheckPartyHasSpecies VAR_RESULT, SPECIES_SHAYMIN
    GoToIfEq VAR_RESULT, 0, _019D
    CheckItem ITEM_GRACIDEA, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _01A8
    Message 9
    SetVar VAR_0x8004, 0x1D2
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_019D:
    Message 11
    GoTo _01B3
    End

_01A8:
    Message 10
    GoTo _01B3
    End

_01B3:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
