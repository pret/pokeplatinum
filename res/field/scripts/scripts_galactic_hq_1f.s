#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_1f.h"
#include "res/field/events/events_galactic_hq_1f.h"


    ScriptEntry GalacticHQ1F_OnTransition
    ScriptEntry GalacticHQ1F_GruntF1
    ScriptEntry GalacticHQ1F_GruntM
    ScriptEntry GalacticHQ1F_GruntF2
    ScriptEntry GalacticHQ1F_ScientistM1
    ScriptEntry GalacticHQ1F_Door
    ScriptEntry GalacticHQ1F_Sign
    ScriptEntry GalacticHQ1F_Saturn
    ScriptEntryEnd

GalacticHQ1F_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_GALACTIC_HQ
    End

GalacticHQ1F_GruntF1:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, GalacticHQ1F_WeHaveNoPlansNow
    Message GalacticHQ1F_Text_ThisIsGalacticVeilstoneBuilding
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ1F_WeHaveNoPlansNow:
    Message GalacticHQ1F_Text_WeHaveNoPlansNow
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ1F_GruntM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, GalacticHQ1F_NothingLeftNow
    Message GalacticHQ1F_Text_WeWillTakeEverything
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ1F_NothingLeftNow:
    Message GalacticHQ1F_Text_NothingLeftNow
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ1F_GruntF2:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, GalacticHQ1F_IWonderWhereBossWent
    Message GalacticHQ1F_Text_YoureTooYoung
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ1F_IWonderWhereBossWent:
    Message GalacticHQ1F_Text_IWonderWhereBossWent
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ1F_ScientistM1:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_GALACTIC_LEFT_LAKE_VALOR, GalacticHQ1F_ThisIsWhereWeWork
    Message GalacticHQ1F_Text_GalacticConductsRnD
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ1F_ThisIsWhereWeWork:
    Message GalacticHQ1F_Text_ThisIsWhereWeWork
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ1F_Saturn:
    NPCMessage GalacticHQ1F_Text_WhatToDo
    End

GalacticHQ1F_Door:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_GALACTIC_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, GalacticHQ1F_AskUseGalacticKey
    Message GalacticHQ1F_Text_DoorIsLocked
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ1F_AskUseGalacticKey:
    Message GalacticHQ1F_Text_UseGalacticKey
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, GalacticHQ1F_UseGalacticKey
    GoToIfEq VAR_RESULT, MENU_NO, GalacticHQ1F_DontUseKey
    End

GalacticHQ1F_UseGalacticKey:
    BufferPlayerName 0
    Message GalacticHQ1F_Text_TheDoorOpened
    WaitButton
    WaitSE SEQ_SE_CONFIRM
    PlaySE SEQ_SE_DP_DOOR10
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_WEST, GalacticHQ1F_Movement_DoorWestMoveWest
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_EAST, GalacticHQ1F_Movement_DoorEastMoveEast
    WaitMovement
    SetFlag FLAG_HIDE_GALACTIC_HQ_1F_DOOR
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_WEST
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_EAST
    CloseMessage
    ReleaseAll
    End

GalacticHQ1F_DontUseKey:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
GalacticHQ1F_Movement_DoorWestMoveWest:
    WalkFastWest
    EndMovement

    .balign 4, 0
GalacticHQ1F_Movement_DoorEastMoveEast:
    WalkFastEast
    EndMovement

GalacticHQ1F_Sign:
    EventMessage GalacticHQ1F_Text_TeamGalacticCredo
    End

    .balign 4, 0
