#include "macros/scrcmd.inc"
#include "res/text/bank/wifi_plaza_entrance.h"
#include "res/field/events/events_wifi_plaza_entrance.h"
#include "constants/map_object.h"


    ScriptEntry WifiPlazaEntrance_OnFrame
    ScriptEntryEnd

WifiPlazaEntrance_OnFrame:
    LockAll
    GetRandom VAR_0x8000, 5
    SetVar VAR_0x8008, VAR_0x8000
    GoToIfEq VAR_0x8008, 0, WifiPlazaEntrance_WalkToWarpPanel5
    GoToIfEq VAR_0x8008, 1, WifiPlazaEntrance_WalkToWarpPanel4
    GoToIfEq VAR_0x8008, 2, WifiPlazaEntrance_WalkToWarpPanel3
    GoToIfEq VAR_0x8008, 3, WifiPlazaEntrance_WalkToWarpPanel2
    GoToIfEq VAR_0x8008, 4, WifiPlazaEntrance_WalkToWarpPanel1
    End

WifiPlazaEntrance_WalkToWarpPanel5:
    ApplyMovement LOCALID_PLAYER, WifiPlazaEntrance_Movement_PlayerWalkToWarpPanel5
    ApplyMovement LOCALID_ATTENDANT_F, WifiPlazaEntrance_Movement_AttendantFWalkToWarpPanel5
    WaitMovement
    GoTo WifiPlazaEntrance_TakeWarpPanel
    End

WifiPlazaEntrance_WalkToWarpPanel4:
    ApplyMovement LOCALID_PLAYER, WifiPlazaEntrance_Movement_PlayerWalkToWarpPanel4
    ApplyMovement LOCALID_ATTENDANT_F, WifiPlazaEntrance_Movement_AttendantFWalkToWarpPanel4
    WaitMovement
    GoTo WifiPlazaEntrance_TakeWarpPanel
    End

WifiPlazaEntrance_WalkToWarpPanel3:
    ApplyMovement LOCALID_PLAYER, WifiPlazaEntrance_Movement_PlayerWalkToWarpPanel3
    ApplyMovement LOCALID_ATTENDANT_F, WifiPlazaEntrance_Movement_AttendantFWalkToWarpPanel3
    WaitMovement
    GoTo WifiPlazaEntrance_TakeWarpPanel
    End

WifiPlazaEntrance_WalkToWarpPanel2:
    ApplyMovement LOCALID_PLAYER, WifiPlazaEntrance_Movement_PlayerWalkToWarpPanel2
    ApplyMovement LOCALID_ATTENDANT_F, WifiPlazaEntrance_Movement_AttendantFWalkToWarpPanel2
    WaitMovement
    GoTo WifiPlazaEntrance_TakeWarpPanel
    End

WifiPlazaEntrance_WalkToWarpPanel1:
    ApplyMovement LOCALID_PLAYER, WifiPlazaEntrance_Movement_PlayerWalkToWarpPanel1
    ApplyMovement LOCALID_ATTENDANT_F, WifiPlazaEntrance_Movement_AttendantFWalkToWarpPanel1
    WaitMovement
    GoTo WifiPlazaEntrance_TakeWarpPanel
    End

WifiPlazaEntrance_TakeWarpPanel:
    Message WifiPlazaEntrance_Text_HaveAGoodTime
    WaitABPress
    CloseMessage
    ApplyMovement LOCALID_PLAYER, WifiPlazaEntrance_Movement_PlayerEnterWarpPanelAndSpin
    ApplyMovement LOCALID_ATTENDANT_F, WifiPlazaEntrance_Movement_AttendantFWalkOnSpotNorth
    WaitMovement
    PlaySE SEQ_SE_DP_TELE2
    ApplyMovement LOCALID_PLAYER, WifiPlazaEntrance_Movement_PlayerWarpOut
    WaitMovement
    FadeScreenOut
    WaitFadeScreen
    SetVar VAR_MAP_LOCAL_0x03, 1
    Warp VAR_WIFI_PLAZA_RETURN_WARP_ID, 5, 2, DIR_SOUTH
    WaitForTransition
    ScrCmd_0B3 VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    ScrCmd_2F7 VAR_0x8004
    ReturnToField
    SetVar VAR_ENTERED_WIFI_PLAZA, 1
    HideObject LOCALID_PLAYER
    FadeScreenIn
    WaitFadeScreen
    End

    .balign 4, 0
WifiPlazaEntrance_Movement_PlayerWalkToWarpPanel5:
    WalkNormalNorth 7
    WalkNormalWest 11
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_PlayerWalkToWarpPanel4:
    WalkNormalNorth 7
    WalkNormalWest 9
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_PlayerWalkToWarpPanel3:
    WalkNormalNorth 7
    WalkNormalWest 7
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_PlayerWalkToWarpPanel2:
    WalkNormalNorth 7
    WalkNormalWest 5
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_PlayerWalkToWarpPanel1:
    WalkNormalNorth 7
    WalkNormalWest 3
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_PlayerEnterWarpPanelAndSpin:
    WalkNormalNorth
    FaceWest
    Delay2
    FaceSouth
    Delay2
    FaceEast
    Delay2
    FaceNorth
    Delay2
    FaceWest
    Delay2
    FaceSouth
    Delay2
    FaceEast
    Delay2
    FaceNorth
    Delay2
    FaceWest
    Delay2
    FaceSouth
    Delay2
    FaceEast
    Delay2
    FaceNorth
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_PlayerWarpOut:
    WarpOut
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_AttendantFWalkToWarpPanel5:
    WalkNormalNorth 6
    WalkNormalWest 12
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_AttendantFWalkToWarpPanel4:
    WalkNormalNorth 6
    WalkNormalWest 10
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_AttendantFWalkToWarpPanel3:
    WalkNormalNorth 6
    WalkNormalWest 8
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_AttendantFWalkToWarpPanel2:
    WalkNormalNorth 6
    WalkNormalWest 6
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_AttendantFWalkToWarpPanel1:
    WalkNormalNorth 6
    WalkNormalWest 4
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
WifiPlazaEntrance_Movement_AttendantFWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement
