#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_library_2f.h"
#include "res/field/events/events_canalave_library_2f.h"


    ScriptEntry CanalaveLibrary2F_SchoolKidM
    ScriptEntry CanalaveLibrary2F_Bookshelves
    ScriptEntry CanalaveLibrary2F_Shelves
    ScriptEntry CanalaveLibrary2F_Sign
    ScriptEntry CanalaveLibrary2F_OnTransition
    ScriptEntry CanalaveLibrary2F_OnFrameHiker
    ScriptEntryEnd

CanalaveLibrary2F_OnTransition:
    SetFlag FLAG_HIDE_CANALAVE_LIBRARY_2F_HIKER
    CallIfEq VAR_ARCEUS_EVENT_STATE, 2, CanalaveLibrary2F_ShowHiker
    End

CanalaveLibrary2F_ShowHiker:
    ClearFlag FLAG_HIDE_CANALAVE_LIBRARY_2F_HIKER
    Return

CanalaveLibrary2F_SchoolKidM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_LAKE_VALOR_EXPLODED, CanalaveLibrary2F_TremorWasWicked
    Message CanalaveLibrary2F_Text_ThirdFloorEasyRead
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary2F_TremorWasWicked:
    Message CanalaveLibrary2F_Text_TremorWasWicked
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary2F_Bookshelves:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfGe VAR_ARCEUS_EVENT_STATE, 3, CanalaveLibrary2F_SinnohAsToldOnPlates
    Message CanalaveLibrary2F_Text_BookshelvesAreCrammed
    GoTo CanalaveLibrary2F_BookshelvesEnd
    End

CanalaveLibrary2F_BookshelvesEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

CanalaveLibrary2F_SinnohAsToldOnPlates:
    BufferPlayerName 0
    Message CanalaveLibrary2F_Text_SinnohAsToldOnPlates
    GoTo CanalaveLibrary2F_BookshelvesEnd
    End

CanalaveLibrary2F_Shelves:
    EventMessage CanalaveLibrary2F_Text_ShelvesLinedWithBooks
    End

CanalaveLibrary2F_Sign:
    EventMessage CanalaveLibrary2F_Text_RefrainFromBringingFood
    End

CanalaveLibrary2F_OnFrameHiker:
    LockAll
    ApplyMovement LOCALID_HIKER, CanalaveLibrary2F_Movement_HikerNoticeWalkToPlayer
    WaitMovement
    Message CanalaveLibrary2F_Text_WantToHearAboutJourney
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveLibrary2F_TheWayISeeIt
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary2F_LetsNotBeHasty
    End

CanalaveLibrary2F_LetsNotBeHasty:
    Message CanalaveLibrary2F_Text_LetsNotBeHasty
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveLibrary2F_TheWayISeeIt
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary2F_LetsNotBeHasty
    End

CanalaveLibrary2F_TheWayISeeIt:
    Message CanalaveLibrary2F_Text_TheWayISeeIt
    CloseMessage
    ApplyMovement LOCALID_HIKER, CanalaveLibrary2F_Movement_HikerLookAround
    WaitMovement
    Message CanalaveLibrary2F_Text_WantToHearMore
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveLibrary2F_ThereWerePlates
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary2F_DontTeaseMe
    End

CanalaveLibrary2F_DontTeaseMe:
    Message CanalaveLibrary2F_Text_DontTeaseMe
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, CanalaveLibrary2F_ThereWerePlates
    GoToIfEq VAR_RESULT, MENU_NO, CanalaveLibrary2F_DontTeaseMe
    End

CanalaveLibrary2F_ThereWerePlates:
    Message CanalaveLibrary2F_Text_ThereWerePlates
    CloseMessage
    ApplyMovement LOCALID_HIKER, CanalaveLibrary2F_Movement_HikerWalkOnSpotWest
    WaitMovement
    Message CanalaveLibrary2F_Text_WroteDownEngravings
    CloseMessage
    ApplyMovement LOCALID_HIKER, CanalaveLibrary2F_Movement_HikerWalkOnSpotEast
    WaitMovement
    Message CanalaveLibrary2F_Text_GladICameToSinnoh
    CloseMessage
    ApplyMovement LOCALID_PLAYER, CanalaveLibrary2F_Movement_PlayerMoveAside
    ApplyMovement LOCALID_HIKER, CanalaveLibrary2F_Movement_HikerLeave
    WaitMovement
    RemoveObject LOCALID_HIKER
    SetVar VAR_ARCEUS_EVENT_STATE, 3
    ReleaseAll
    End

    .balign 4, 0
CanalaveLibrary2F_Movement_HikerNoticeWalkToPlayer:
    WalkOnSpotNormalEast
    EmoteExclamationMark
    WalkNormalEast
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CanalaveLibrary2F_Movement_HikerLookAround:
    WalkOnSpotNormalSouth
    WalkOnSpotNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CanalaveLibrary2F_Movement_HikerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
CanalaveLibrary2F_Movement_HikerWalkOnSpotEast:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
CanalaveLibrary2F_Movement_HikerLeave:
    Delay8 2
    WalkNormalEast 2
    EndMovement

    .balign 4, 0
CanalaveLibrary2F_Movement_PlayerMoveAside:
    WalkNormalSouth
    WalkOnSpotNormalNorth
    EndMovement
