#include "macros/scrcmd.inc"
#include "res/text/bank/vista_lighthouse.h"
#include "res/field/events/events_vista_lighthouse.h"


    ScriptEntry VistaLighthouse_Sailor
    ScriptEntry VistaLighthouse_Youngster
    ScriptEntry VistaLighthouse_Binoculars
    ScriptEntry VistaLighthouse_Volkner
    ScriptEntryEnd

VistaLighthouse_Sailor:
    NPCMessage VistaLighthouse_Text_LighthouseRepresentsSafety
    End

VistaLighthouse_Youngster:
    NPCMessage VistaLighthouse_Text_GoingFarAwayOneDay
    End

VistaLighthouse_Binoculars:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    BufferPlayerName 0
    Message VistaLighthouse_Text_PlayerLookedThroughBinoculars
    CloseMessage
    UseVistaLighthouseBinoculars
    ReleaseAll
    End

VistaLighthouse_Volkner:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message VistaLighthouse_Text_YoureTheLatestChallenger
    Message VistaLighthouse_Text_IWantThrillAgain
    Message VistaLighthouse_Text_UnleashArsenalAtYou
    CloseMessage
    WaitTime 15, VAR_RESULT
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, DIR_NORTH, VistaLighthouse_VolknerWalkToDoorNorth
    GoToIfEq VAR_RESULT, DIR_WEST, VistaLighthouse_VolknerWalkToDoorWest
    GoToIfEq VAR_RESULT, DIR_EAST, VistaLighthouse_VolknerWalkToDoorEast
    End

VistaLighthouse_VolknerWalkToDoorNorth:
    ApplyMovement LOCALID_VOLKNER, VistaLighthouse_Movement_VolknerWalkToDoorNorth
    ApplyMovement LOCALID_PLAYER, VistaLighthouse_Movement_PlayerWatchVolknerWalkToDoorNorth
    WaitMovement
    GoTo VistaLighthouse_VolknerLeave

VistaLighthouse_VolknerWalkToDoorWest:
    ApplyMovement LOCALID_VOLKNER, VistaLighthouse_Movement_VolknerWalkToDoorWestEast
    ApplyMovement LOCALID_PLAYER, VistaLighthouse_Movement_PlayerWatchVolknerWalkToDoorWest
    WaitMovement
    GoTo VistaLighthouse_VolknerLeave

VistaLighthouse_VolknerWalkToDoorEast:
    ApplyMovement LOCALID_VOLKNER, VistaLighthouse_Movement_VolknerWalkToDoorWestEast
    WaitMovement
    GoTo VistaLighthouse_VolknerLeave

VistaLighthouse_VolknerLeave:
    LoadDoorAnimation 0, 0, 6, 9, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement LOCALID_VOLKNER, VistaLighthouse_Movement_VolknerLeave
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    RemoveObject LOCALID_VOLKNER
    SetFlag FLAG_VOLKNER_RETURNED_TO_GYM
    ReleaseAll
    End

    .balign 4, 0
VistaLighthouse_Movement_VolknerWalkToDoorNorth:
    WalkNormalEast 3
    WalkNormalSouth 6
    WalkNormalWest 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VistaLighthouse_Movement_VolknerWalkToDoorWestEast:
    WalkNormalSouth
    WalkNormalEast 3
    WalkNormalSouth 5
    WalkNormalWest 3
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
VistaLighthouse_Movement_VolknerLeave:
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
VistaLighthouse_Movement_PlayerWatchVolknerWalkToDoorNorth:
    Delay8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
VistaLighthouse_Movement_PlayerWatchVolknerWalkToDoorWest:
    Delay8
    WalkOnSpotNormalSouth
    Delay8
    WalkOnSpotNormalEast
    EndMovement
