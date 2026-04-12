#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_b2f.h"
#include "res/field/events/events_galactic_hq_b2f.h"


    ScriptEntry GalacticHQB2F_GruntM
    ScriptEntry GalacticHQB2F_ScientistM
    ScriptEntry GalacticHQB2F_Door
    ScriptEntryEnd

GalacticHQB2F_GruntM:
    NPCMessage GalacticHQB2F_Text_ToGetIntoSpeech
    End

GalacticHQB2F_ScientistM:
    NPCMessage GalacticHQB2F_Text_FreeAllPokemon
    End

GalacticHQB2F_Door:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckItem ITEM_GALACTIC_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, GalacticHQB2F_AskUseGalacticKey
    Message GalacticHQB2F_Text_DoorIsLocked
    WaitButton
    CloseMessage
    ReleaseAll
    End

GalacticHQB2F_AskUseGalacticKey:
    Message GalacticHQB2F_Text_UseGalacticKey
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, GalacticHQB2F_UseGalacticKey
    GoToIfEq VAR_RESULT, MENU_NO, GalacticHQB2F_DontUseKey
    End

GalacticHQB2F_UseGalacticKey:
    BufferPlayerName 0
    Message GalacticHQB2F_Text_DoorOpened
    WaitButton
    WaitSE SEQ_SE_CONFIRM
    PlaySE SEQ_SE_DP_DOOR10
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_WEST, GalacticHQB2F_Movement_DoorWestMoveWest
    ApplyMovement LOCALID_GALACTIC_HQ_DOOR_EAST, GalacticHQB2F_Movement_DoorEastMoveEast
    WaitMovement
    SetFlag FLAG_HIDE_GALACTIC_HQ_B2F_DOOR
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_WEST
    RemoveObject LOCALID_GALACTIC_HQ_DOOR_EAST
    CloseMessage
    ReleaseAll
    End

GalacticHQB2F_DontUseKey:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
GalacticHQB2F_Movement_DoorWestMoveWest:
    WalkFastWest
    EndMovement

    .balign 4, 0
GalacticHQB2F_Movement_DoorEastMoveEast:
    WalkFastEast
    EndMovement
