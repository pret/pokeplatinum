#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_b6f.h"


    ScriptEntry _0022
    ScriptEntry _0026
    ScriptEntry _0051
    ScriptEntry _0080
    ScriptEntry _0093
    ScriptEntry _00B4
    ScriptEntry _00D5
    ScriptEntry _00F6
    ScriptEntryEnd

_0022:
    InitPersistedMapFeaturesForDistortionWorld
    End

_0026:
    GoToIfEq VAR_DISTORTION_WORLD_PROGRESS, 7, _0080
    GoToIfSet FLAG_DISTORTION_WORLD_PUZZLE_FINISHED, _0051
    NPCMessage 3
    End

_0051:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    CloseMessage
    SetFlag FLAG_DISTORTION_WORLD_STEPPING_STONES
    ApplyMovement 134, _0108
    WaitMovement
    ApplyMovement 134, _011C
    WaitMovement
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 7
    ReleaseAll
    End

_0080:
    NPCMessage 5
    End

_0093:
    LockAll
    PlayCry SPECIES_MESPRIT
    Message 0
    CloseMessage
    WaitCry
    ApplyMovement 131, _0130
    WaitMovement
    DeleteDistortionWorldMapObject 131
    ReleaseAll
    End

_00B4:
    LockAll
    PlayCry SPECIES_UXIE
    Message 1
    CloseMessage
    WaitCry
    ApplyMovement 132, _0130
    WaitMovement
    DeleteDistortionWorldMapObject 132
    ReleaseAll
    End

_00D5:
    LockAll
    PlayCry SPECIES_AZELF
    Message 2
    CloseMessage
    WaitCry
    ApplyMovement 133, _0130
    WaitMovement
    DeleteDistortionWorldMapObject 133
    ReleaseAll
    End

_00F6:
    EventMessage 6
    End

    .balign 4, 0
_0108:
    Delay32
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    Delay32
    EndMovement

    .balign 4, 0
_011C:
    WalkNormalSouth
    MoveAction_118
    WalkNormalWest
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0130:
    WarpOut
    EndMovement
