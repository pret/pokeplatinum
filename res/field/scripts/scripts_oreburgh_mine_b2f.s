#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_mine_b2f.h"
#include "res/field/events/events_oreburgh_mine_b2f.h"


    ScriptEntry OreburghMineB2F_Roark
    ScriptEntry OreburghMineB2F_Machop1
    ScriptEntry OreburghMineB2F_Machop3
    ScriptEntry OreburghMineB2F_Machop2
    ScriptEntry OreburghMineB2F_Worker
    ScriptEntryEnd

OreburghMineB2F_Roark:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoTo OreburghMineB2F_RoarkTurnBackEast

OreburghMineB2F_Unused:
    ApplyMovement LOCALID_ROARK, OreburghMineB2F_UnusedMovement2
    WaitMovement
    GoTo OreburghMineB2F_RoarkUseRockSmash

OreburghMineB2F_RoarkTurnBackEast:
    ApplyMovement LOCALID_ROARK, OreburghMineB2F_Movement_RoarkTurnBackEast
    WaitMovement
    GoTo OreburghMineB2F_RoarkUseRockSmash

OreburghMineB2F_RoarkUseRockSmash:
    Message OreburghMineB2F_Text_OKStandBackAndWatchThis
    CloseMessage
    ScrCmd_29E 2, VAR_0x8005
    WaitTime 10, VAR_RESULT
    RemoveObject LOCALID_ROCK_SMASH_1
OreburghMineB2F_WaitRockSmash:
    WaitTime 1, VAR_RESULT
    GoToIfEq VAR_0x8005, 0, OreburghMineB2F_WaitRockSmash
    FacePlayer
    Message OreburghMineB2F_Text_FallenBouldersNeedToBeSmashedSoTheyreOutOfTheWay
    CloseMessage
    GoTo OreburghMineB2F_RoarkLeave

OreburghMineB2F_Unused2:
    ApplyMovement 0, OreburghMineB2F_UnusedMovement
    ApplyMovement LOCALID_PLAYER, OreburghMineB2F_UnusedMovement3
    WaitMovement
    GoTo OreburghMineB2F_RemoveRoark

OreburghMineB2F_RoarkLeave:
    ApplyMovement LOCALID_ROARK, OreburghMineB2F_Movement_RoarkLeave
    WaitMovement
    GoTo OreburghMineB2F_RemoveRoark

OreburghMineB2F_RemoveRoark:
    RemoveObject LOCALID_ROARK
    SetFlag FLAG_ROARK_RETURNED_TO_OREBURGH_GYM
    SetFlag FLAG_HIDE_OREBURGH_CITY_RIVAL
    ReleaseAll
    End

    .balign 4, 0
OreburghMineB2F_UnusedMovement:
    WalkNormalNorth
    WalkNormalEast 10
    EndMovement

    .balign 4, 0
OreburghMineB2F_Movement_RoarkLeave:
    WalkNormalEast 10
    EndMovement

OreburghMineB2F_UnusedMovement2:
    Delay8 2
    WalkOnSpotNormalNorth
    Delay8 4
    EndMovement

    .balign 4, 0
OreburghMineB2F_Movement_RoarkTurnBackEast:
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

OreburghMineB2F_Machop1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_MACHOP
    Message OreburghMineB2F_Text_MachopMaaacho
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghMineB2F_Machop3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_MACHOP
    Message OreburghMineB2F_Text_MachopChopChop
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghMineB2F_Machop2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_MACHOP
    Message OreburghMineB2F_Text_MachopChopmacho
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghMineB2F_Worker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghMineB2F_Text_IMetTheseMachopOnRoute207
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
