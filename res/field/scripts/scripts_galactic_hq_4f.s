#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_4f.h"
#include "res/text/bank/menu_entries.h"
#include "res/field/events/events_galactic_hq_4f.h"


    ScriptEntry GalacticHQ4F_TriggerCyrus
    ScriptEntry GalacticHQ4F_Door
    ScriptEntry GalacticHQ4F_SignWarpPanels
    ScriptEntry GalacticHQ4F_Report
    ScriptEntryEnd

GalacticHQ4F_TriggerCyrus:
    LockAll
    ApplyMovement LOCALID_CYRUS, GalacticHQ4F_Movement_CyrusWalkOnSpotSouth
    WaitMovement
    Message GalacticHQ4F_Text_SpeechWasBigLie
    CloseMessage
    ApplyMovement LOCALID_CYRUS, GalacticHQ4F_Movement_CyrusWalkSouth
    WaitMovement
    Message GalacticHQ4F_Text_IKnowWhyYoureHere
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 8, GalacticHQ4F_CyrusWalkToPlayerX8
    GoToIfEq VAR_0x8004, 9, GalacticHQ4F_CyrusWalkToPlayerX9
    End

GalacticHQ4F_CyrusWalkToPlayerX8:
    ApplyMovement LOCALID_CYRUS, GalacticHQ4F_Movement_CyrusWalkToPlayerX8
    WaitMovement
    GoTo GalacticHQ4F_Cyrus

GalacticHQ4F_CyrusWalkToPlayerX9:
    ApplyMovement LOCALID_CYRUS, GalacticHQ4F_Movement_CyrusWalkToPlayerX9
    WaitMovement
    GoTo GalacticHQ4F_Cyrus

GalacticHQ4F_Cyrus:
    StartTrainerBattle TRAINER_GALACTIC_BOSS_CYRUS_GALACTIC_HQ
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GalacticHQ4F_BlackOut
    Message GalacticHQ4F_Text_YouAreIndeedStrong
    SetVar VAR_0x8004, ITEM_MASTER_BALL
    SetVar VAR_0x8005, 1
    CanFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT
    CallIfEq VAR_RESULT, TRUE, GalacticHQ4F_GiveMasterBall
    Message GalacticHQ4F_Text_IMakePowerMyOwn
    CloseMessage
    ApplyMovement LOCALID_CYRUS, GalacticHQ4F_Movement_CyrusWalkNorthEast
    WaitMovement
    Message GalacticHQ4F_Text_TakeWarpPanel
    CloseMessage
    ApplyMovement LOCALID_CYRUS, GalacticHQ4F_Movement_CyrusLeave
    WaitMovement
    RemoveObject LOCALID_CYRUS
    SetVar VAR_GALACTIC_HQ_4F_STATE, 1
    ReleaseAll
    End

GalacticHQ4F_GiveMasterBall:
    Common_GiveItemQuantity
    Return

GalacticHQ4F_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
GalacticHQ4F_Movement_CyrusWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
GalacticHQ4F_Movement_CyrusWalkSouth:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
GalacticHQ4F_Movement_CyrusWalkToPlayerX8:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
GalacticHQ4F_Movement_CyrusWalkToPlayerX9:
    WalkNormalSouth
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
GalacticHQ4F_Movement_CyrusWalkNorthEast:
    WalkNormalNorth
    WalkNormalEast 4
    WalkNormalNorth 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
GalacticHQ4F_Movement_CyrusLeave:
    WalkNormalEast 7
    EndMovement

GalacticHQ4F_Door:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_GALACTIC_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, GalacticHQ4F_AskUseGalacticKey
    Message GalacticHQ4F_Text_DoorIsLocked
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ4F_AskUseGalacticKey:
    Message GalacticHQ4F_Text_UseGalacticKey
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, GalacticHQ4F_UseGalacticKey
    GoToIfEq VAR_RESULT, MENU_NO, GalacticHQ4F_DontUseKey
    End

GalacticHQ4F_UseGalacticKey:
    BufferPlayerName 0
    Message GalacticHQ4F_Text_DoorOpened
    WaitButton
    WaitSE SEQ_SE_CONFIRM
    PlaySE SEQ_SE_DP_DOOR10
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_WEST, GalacticHQ4F_Movement_DoorWestMoveWest
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_EAST, GalacticHQ4F_Movement_DoorEastMoveEast
    WaitMovement
    SetFlag FLAG_HIDE_GALACTIC_HQ_4F_DOOR
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_WEST
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_EAST
    CloseMessage
    ReleaseAll
    End

GalacticHQ4F_DontUseKey:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
GalacticHQ4F_Movement_DoorWestMoveWest:
    WalkFastWest
    EndMovement

    .balign 4, 0
GalacticHQ4F_Movement_DoorEastMoveEast:
    WalkFastEast
    EndMovement

GalacticHQ4F_SignWarpPanels:
    EventMessage GalacticHQ4F_Text_TeamGalacticWarpPanels
    End

GalacticHQ4F_Report:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message GalacticHQ4F_Text_TeamGalacticReport
    GoTo GalacticHQ4F_ReadWhichReport
    End

GalacticHQ4F_ReadWhichReport:
    Message GalacticHQ4F_Text_ReadWhichReport
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntry MenuEntries_Text_GalacticReport_CreationOfSpace, 0
    AddMenuEntry MenuEntries_Text_GalacticReport_MythicalPokemon, 1
    AddMenuEntry MenuEntries_Text_GalacticReport_RedChain, 2
    AddMenuEntry MenuEntries_Text_GalacticReport_Exit, 3
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, GalacticHQ4F_ReportCreationOfSpace
    GoToIfEq VAR_0x8008, 1, GalacticHQ4F_ReportMythicalPokemon
    GoToIfEq VAR_0x8008, 2, GalacticHQ4F_ReportRedChain
    GoTo GalacticHQ4F_ReportEnd
    End

GalacticHQ4F_ReportCreationOfSpace:
    Message GalacticHQ4F_Text_ReportCreationOfSpace
    GoTo GalacticHQ4F_ReadWhichReport
    End

GalacticHQ4F_ReportMythicalPokemon:
    Message GalacticHQ4F_Text_ReportMythicalPokemon
    GoTo GalacticHQ4F_ReadWhichReport
    End

GalacticHQ4F_ReportRedChain:
    Message GalacticHQ4F_Text_ReportRedChain
    GoTo GalacticHQ4F_ReadWhichReport
    End

GalacticHQ4F_ReportEnd:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
