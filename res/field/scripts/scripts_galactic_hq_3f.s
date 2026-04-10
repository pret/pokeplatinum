#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_3f.h"
#include "res/field/events/events_galactic_hq_3f.h"


    ScriptEntry GalacticHQ3F_GruntM
    ScriptEntry GalacticHQ3F_Door
    ScriptEntry GalacticHQ3F_Sign
    ScriptEntryEnd

GalacticHQ3F_GruntM:
    NPCMessage GalacticHQ3F_Text_DoorsOpenWithSpecialKey
    End

GalacticHQ3F_Door:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_GALACTIC_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, GalacticHQ3F_AskUseGalacticKey
    Message GalacticHQ3F_Text_DoorIsLocked
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQ3F_AskUseGalacticKey:
    Message GalacticHQ3F_Text_UseGalacticKey
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, GalacticHQ3F_UseGalacticKey
    GoToIfEq VAR_RESULT, MENU_NO, GalacticHQ3F_DontUseKey
    End

GalacticHQ3F_UseGalacticKey:
    BufferPlayerName 0
    Message GalacticHQ3F_Text_DoorOpened
    WaitButton
    WaitSE SEQ_SE_CONFIRM
    PlaySE SEQ_SE_DP_DOOR10
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_WEST, GalacticHQ3F_Movement_DoorWestMoveWest
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_EAST, GalacticHQ3F_Movement_DoorEastMoveEast
    WaitMovement
    SetFlag FLAG_HIDE_GALACTIC_HQ_3F_DOOR
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_WEST
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_EAST
    CloseMessage
    ReleaseAll
    End

GalacticHQ3F_DontUseKey:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
GalacticHQ3F_Movement_DoorWestMoveWest:
    WalkFastWest
    EndMovement

    .balign 4, 0
GalacticHQ3F_Movement_DoorEastMoveEast:
    WalkFastEast
    EndMovement

GalacticHQ3F_Sign:
    EventMessage GalacticHQ3F_Text_TeamGalacticCredo
    End

    .balign 4, 0
