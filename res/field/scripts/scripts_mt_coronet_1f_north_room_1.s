#include "macros/scrcmd.inc"
#include "res/text/bank/mt_coronet_1f_north_room_1.h"
#include "res/field/events/events_mt_coronet_1f_north_room_1.h"


    ScriptEntry MtCoronet1FNorthRoom1_GruntF
    ScriptEntry MtCoronet1FNorthRoom1_GruntM
    ScriptEntryEnd

MtCoronet1FNorthRoom1_GruntF:
    NPCMessage MtCoronet1FNorthRoom1_Text_TheresNoWayOfGettingToThePeakOfMtCoronetFromThisSide
    End

MtCoronet1FNorthRoom1_GruntM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    ApplyMovement LOCALID_GRUNT_M_1, MtCoronet1FNorthRoom1_Movement_GruntM1WalkOnSpotSouth
    WaitMovement
    Message MtCoronet1FNorthRoom1_Text_TheFogIsSoThickAheadICantEvenSeeMyOwnHand
    ApplyMovement LOCALID_GRUNT_M_2, MtCoronet1FNorthRoom1_Movement_GruntM2WalkOnSpotNorth
    WaitMovement
    Message MtCoronet1FNorthRoom1_Text_HahThePokemonTheyGaveMeCantUseDefogEither
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_1, MtCoronet1FNorthRoom1_Movement_GruntMWalkOnSpotWest
    ApplyMovement LOCALID_GRUNT_M_2, MtCoronet1FNorthRoom1_Movement_GruntMWalkOnSpotWest
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
MtCoronet1FNorthRoom1_Movement_GruntM1WalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
MtCoronet1FNorthRoom1_Movement_GruntM2WalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
MtCoronet1FNorthRoom1_Movement_GruntMWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement
