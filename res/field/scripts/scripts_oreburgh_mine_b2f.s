#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_mine_b2f.h"


    ScriptEntry _0016
    ScriptEntry _00FC
    ScriptEntry _011B
    ScriptEntry _013A
    ScriptEntry _0159
    ScriptEntryEnd

_0016:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoTo _0034

OreburghMineB2F_Unused:
    ApplyMovement 0, OreburghMineB2F_UnusedMovement2
    WaitMovement
    GoTo _0044

_0034:
    ApplyMovement 0, _00D8
    WaitMovement
    GoTo _0044

_0044:
    Message 0
    CloseMessage
    ScrCmd_29E 2, VAR_0x8005
    WaitTime 10, VAR_RESULT
    RemoveObject 1
_0059:
    WaitTime 1, VAR_RESULT
    GoToIfEq VAR_0x8005, 0, _0059
    FacePlayer
    Message 1
    CloseMessage
    GoTo _0091

OreburghMineB2F_Unused2:
    ApplyMovement 0, OreburghMineB2F_UnusedMovement
    ApplyMovement LOCALID_PLAYER, OreburghMineB2F_UnusedMovement3
    WaitMovement
    GoTo _00A1

_0091:
    ApplyMovement 0, _00C0
    WaitMovement
    GoTo _00A1

_00A1:
    RemoveObject 0
    SetFlag FLAG_UNK_0x007A
    SetFlag FLAG_UNK_0x017C
    ReleaseAll
    End

    .balign 4, 0
OreburghMineB2F_UnusedMovement:
    WalkNormalNorth
    WalkNormalEast 10
    EndMovement

    .balign 4, 0
_00C0:
    WalkNormalEast 10
    EndMovement

OreburghMineB2F_UnusedMovement2:
    Delay8 2
    WalkOnSpotNormalNorth
    Delay8 4
    EndMovement

    .balign 4, 0
_00D8:
    Delay8 2
    WalkOnSpotNormalEast
    Delay8 4
    EndMovement

OreburghMineB2F_UnusedMovement3:
    Delay8
    WalkOnSpotNormalNorth
    Delay8 2
    WalkOnSpotNormalEast
    EndMovement

_00FC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_MACHOP
    Message 2
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_MACHOP
    Message 3
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_013A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_MACHOP
    Message 4
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0159:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
