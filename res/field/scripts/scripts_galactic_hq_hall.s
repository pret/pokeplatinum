#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_hall.h"
#include "res/field/events/events_galactic_hq_hall.h"


    ScriptEntry GalacticHQHall_TriggerSpeech
    ScriptEntryEnd

GalacticHQHall_TriggerSpeech:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ApplyMovement LOCALID_LOOKER, GalacticHQHall_Movement_LookerNoticePlayer
    WaitMovement
    Message GalacticHQHall_Text_PsstOverHere
    CloseMessage
    CallIfEq VAR_0x8005, 12, GalacticHQHall_LookerPlayerWalkToSpeechZ12
    CallIfEq VAR_0x8005, 13, GalacticHQHall_LookerPlayerWalkToSpeechZ13
    AddFreeCamera VAR_0x8004, VAR_0x8005
    FadeScreenOut FADE_SCREEN_SPEED_MEDIUM
    ApplyFreeCameraMovement GalacticHQHall_Movement_CameraMoveNorthWest
    WaitMovement
    FadeScreenIn
    WaitFadeScreen
    WaitTime 15, VAR_RESULT
    ClearFlag FLAG_HIDE_GALACTIC_HQ_HALL_CYRUS
    AddObject LOCALID_CYRUS
    ApplyMovement LOCALID_CYRUS, GalacticHQHall_Movement_CyrusEnter
    WaitMovement
    PlaySE SEQ_SE_DP_DENDOU
    WaitTime 30, VAR_RESULT
    Message GalacticHQHall_Text_TheWorldMustChange
    CloseMessage
    PlaySE SEQ_SE_DP_DENDOU
    WaitTime 30, VAR_RESULT
    Message GalacticHQHall_Text_WeWillChangeIt
    CloseMessage
    WaitTime 30, VAR_RESULT
    Message GalacticHQHall_Text_LetThereBeGlory
    CloseMessage
    PlaySE SEQ_SE_DP_DENDOU
    WaitTime 15, VAR_RESULT
    Message GalacticHQHall_Text_GruntsWroooar
    Message GalacticHQHall_Text_CyrusIsTheGreatest
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_CYRUS, GalacticHQHall_Movement_CyrusLeave
    WaitMovement
    RemoveObject LOCALID_CYRUS
    FadeScreenOut FADE_SCREEN_SPEED_MEDIUM
    WaitFadeScreen
    ApplyFreeCameraMovement GalacticHQHall_Movement_CameraMoveSouthEast
    WaitMovement
    RestoreCamera
    RemoveObject LOCALID_GRUNTS_GROUP_OF_4_1
    RemoveObject LOCALID_GRUNT_M_1
    RemoveObject LOCALID_GRUNTS_GROUP_OF_4_2
    RemoveObject LOCALID_GRUNTS_GROUP_OF_4_3
    RemoveObject LOCALID_GRUNTS_GROUP_OF_3_1
    RemoveObject LOCALID_GRUNTS_GROUP_OF_4_4
    RemoveObject LOCALID_GRUNTS_GROUP_OF_3_2
    RemoveObject LOCALID_GRUNTS_GROUP_OF_3_3
    RemoveObject LOCALID_GRUNTS_GROUP_OF_3_4
    RemoveObject LOCALID_GRUNTS_GROUP_OF_4_5
    RemoveObject LOCALID_GRUNTS_GROUP_OF_4_6
    RemoveObject LOCALID_GRUNTS_GROUP_OF_4_7
    RemoveObject LOCALID_GRUNTS_GROUP_OF_4_8
    RemoveObject LOCALID_GRUNTS_GROUP_OF_3_5
    RemoveObject LOCALID_GRUNTS_GROUP_OF_3_6
    RemoveObject LOCALID_GRUNTS_GROUP_OF_3_7
    RemoveObject LOCALID_GRUNTS_GROUP_OF_3_8
    RemoveObject LOCALID_GRUNT_M_2
    RemoveObject LOCALID_GRUNT_M_3
    RemoveObject LOCALID_GRUNT_M_4
    RemoveObject LOCALID_GRUNT_M_5
    RemoveObject LOCALID_GRUNT_F_1
    RemoveObject LOCALID_GRUNT_F_2
    RemoveObject LOCALID_GRUNT_F_3
    RemoveObject LOCALID_GRUNT_F_4
    RemoveObject LOCALID_GRUNTS_GROUP_OF_4_9
    RemoveObject LOCALID_GRUNTS_GROUP_OF_4_10
    RemoveObject LOCALID_GRUNT_F_5
    RemoveObject LOCALID_GRUNT_F_6
    RemoveObject LOCALID_GRUNT_M_6
    RemoveObject LOCALID_GRUNT_M_7
    RemoveObject LOCALID_GRUNT_M_8
    RemoveObject LOCALID_GRUNT_M_9
    RemoveObject LOCALID_GRUNT_F_7
    ApplyMovement LOCALID_LOOKER, GalacticHQHall_Movement_LookerWalkOnSpotSouth
    ApplyMovement LOCALID_PLAYER, GalacticHQHall_Movement_PlayerWalkOnSpotNorth
    WaitMovement
    FadeScreenIn
    WaitFadeScreen
    WaitTime 15, VAR_RESULT
    Message GalacticHQHall_Text_QuiteThePerformance
    CloseMessage
    ApplyMovement LOCALID_LOOKER, GalacticHQHall_Movement_LookerLeave
    ApplyMovement LOCALID_PLAYER, GalacticHQHall_Movement_PlayerWalkOnSpotWest
    WaitMovement
    RemoveObject LOCALID_LOOKER
    SetVar VAR_GALACTIC_HQ_HALL_STATE, 1
    ReleaseAll
    End

GalacticHQHall_LookerPlayerWalkToSpeechZ12:
    ApplyMovement LOCALID_LOOKER, GalacticHQHall_Movement_LookerWalkOnSpotWest
    ApplyMovement LOCALID_PLAYER, GalacticHQHall_Movement_PlayerWalkSouthWest
    WaitMovement
    Return

GalacticHQHall_LookerPlayerWalkToSpeechZ13:
    ApplyMovement LOCALID_LOOKER, GalacticHQHall_Movement_LookerWalkOnSpotWest
    ApplyMovement LOCALID_PLAYER, GalacticHQHall_Movement_PlayerWalkWest
    WaitMovement
    Return

    .balign 4, 0
GalacticHQHall_Movement_CyrusEnter:
    WalkNormalSouth 3
    WalkNormalWest 4
    WalkNormalSouth
    EndMovement

    .balign 4, 0
GalacticHQHall_Movement_CyrusLeave:
    WalkNormalNorth
    WalkNormalEast 4
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
GalacticHQHall_Movement_CameraMoveNorthWest:
    WalkNormalWest 6
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
GalacticHQHall_Movement_CameraMoveSouthEast:
    WalkNormalSouth 6
    WalkNormalEast 6
    EndMovement

    .balign 4, 0
GalacticHQHall_Movement_PlayerWalkSouthWest:
    WalkNormalSouth
    WalkNormalWest
    EndMovement

    .balign 4, 0
GalacticHQHall_Movement_PlayerWalkWest:
    WalkNormalWest
    EndMovement

    .balign 4, 0
GalacticHQHall_Movement_PlayerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
GalacticHQHall_Movement_PlayerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
GalacticHQHall_Movement_LookerNoticePlayer:
    WalkOnSpotFastEast
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
GalacticHQHall_Movement_LookerWalkOnSpotWest:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
GalacticHQHall_Movement_LookerWalkOnSpotSouth:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
GalacticHQHall_Movement_LookerLeave:
    WalkFastWest
    WalkOnSpotFastNorth
    Delay8
    WalkOnSpotFastSouth
    Delay4
    WalkOnSpotFastWest
    Delay8
    WalkFastWest 9
    EndMovement
