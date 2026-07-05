#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_gym_entrance_room.h"
#include "res/field/events/events_hearthome_city_gym_entrance_room.h"


    ScriptEntry HearthomeGym_GymGuide
    ScriptEntry HearthomeGym_GymStatue
    ScriptEntry HearthomeGym_OnFrame_FirstVisit
    ScriptEntryEnd

HearthomeGym_GymGuide:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_RELIC, HearthomeGym_GymGuideAfterBadge
    Message HearthomeGym_Text_GymGuideHearLongSpielAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, HearthomeGym_GymGuideExplanation
    GoToIfEq VAR_RESULT, MENU_NO, HearthomeGym_GymGuideEncouragement
    End

HearthomeGym_GymGuideExplanation:
    Message HearthomeGym_Text_GymGuideExplanation
    GoTo HearthomeGym_GymGuideEnd
    End

HearthomeGym_GymGuideEncouragement:
    Message HearthomeGym_Text_GymGuideGoGetEm
    GoTo HearthomeGym_GymGuideEnd
    End

HearthomeGym_GymGuideEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeGym_GymGuideAfterBadge:
    BufferPlayerName 0
    Message HearthomeGym_Text_GymGuideAfterBadge
    GoTo HearthomeGym_GymGuideEnd
    End

HearthomeGym_GymStatue:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    GoToIfBadgeAcquired BADGE_ID_RELIC, HearthomeGym_GymStatueAfterBadge
    BufferRivalName 0
    BufferRivalName 1
    Message HearthomeGym_Text_GymStatueBeforeBadge
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeGym_GymStatueAfterBadge:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message HearthomeGym_Text_GymStatueAfterBadge
    WaitButton
    CloseMessage
    ReleaseAll
    End

HearthomeGym_OnFrame_FirstVisit:
    LockAll
    ApplyMovement LOCALID_GYM_GUIDE, HearthomeGym_Movement_GymGuideMoveToPlayer
    WaitMovement
    Message HearthomeGym_Text_GymGuideInitialVisit
    CloseMessage
    ApplyMovement LOCALID_GYM_GUIDE, HearthomeGym_Movement_GymGuideReturnToPosition
    WaitMovement
    SetVar VAR_HAS_ENTERED_HEARTHOME_GYM_BEFORE, TRUE
    ReleaseAll
    End

    .balign 4, 0
HearthomeGym_Movement_GymGuideMoveToPlayer:
    EmoteExclamationMark
    Delay8
    WalkNormalWest
    WalkNormalSouth
    EndMovement

    .balign 4, 0
HearthomeGym_Movement_GymGuideReturnToPosition:
    WalkNormalNorth
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement
