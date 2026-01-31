#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_gym_entrance_room.h"
#include "res/field/events/events_hearthome_city_gym_entrance_room.h"


    ScriptEntry EternaGym_GymGuide
    ScriptEntry HearthomeGym_GymStatue
    ScriptEntry HearthomeGym_GymGuide_InitialVisit
    ScriptEntryEnd

EternaGym_GymGuide:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_RELIC, EternaGym_GymGuideAfterBadge
    Message HearthomeGym_Text_GymGuideHearLongSpielAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, EternaGym_GymGuideExplanation
    GoToIfEq VAR_RESULT, MENU_NO, EternaGym_GymGuideEncouragement
    End

EternaGym_GymGuideExplanation:
    Message HearthomeGym_Text_GymGuideExplanation
    GoTo EternaGym_GymGuideEnd
    End

EternaGym_GymGuideEncouragement:
    Message HearthomeGym_Text_GymGuideGoGetEm
    GoTo EternaGym_GymGuideEnd
    End

EternaGym_GymGuideEnd:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaGym_GymGuideAfterBadge:
    BufferPlayerName 0
    Message HearthomeGym_Text_GymGuideAfterBadge
    GoTo EternaGym_GymGuideEnd
    End

HearthomeGym_GymStatue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfBadgeAcquired BADGE_ID_RELIC, HearthomeGym_GymStatueAfterBadge
    BufferRivalName 0
    BufferRivalName 1
    Message HearthomeGym_Text_GymStatueBeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeGym_GymStatueAfterBadge:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message HearthomeGym_Text_GymStatueAfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeGym_GymGuide_InitialVisit:
    LockAll
    ApplyMovement HEARTHOME_CITY_GYM_ENTRANCE_ROOM_GYM_GUIDE, HearthomeGym_GymGuideMoveToPlayer
    WaitMovement
    Message HearthomeGym_Text_GymGuideInitialVisit
    CloseMessage
    ApplyMovement HEARTHOME_CITY_GYM_ENTRANCE_ROOM_GYM_GUIDE, HearthomeGym_GymGuideReturnToPosition
    WaitMovement
    SetVar VAR_HAS_ENTERED_HEARTHOME_GYM_BEFORE, TRUE
    ReleaseAll
    End

    .balign 4, 0
HearthomeGym_GymGuideMoveToPlayer:
    EmoteExclamationMark
    Delay8
    WalkNormalWest
    WalkNormalSouth
    EndMovement

    .balign 4, 0
HearthomeGym_GymGuideReturnToPosition:
    WalkNormalNorth
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement
