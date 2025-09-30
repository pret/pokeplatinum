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
    CheckBadgeAcquired BADGE_ID_RELIC, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, EternaGym_GymGuide_AfterBadge
    Message HearthomeGym_Text_GymGuide_HearLongSpielAgain
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, EternaGym_GymGuide_Explanation
    GoToIfEq VAR_RESULT, MENU_NO, EternaGym_GymGuide_Encouragement
    End

EternaGym_GymGuide_Explanation:
    Message HearthomeGym_Text_GymGuide_Explanation
    GoTo EternaGym_GymGuide_End
    End

EternaGym_GymGuide_Encouragement:
    Message HearthomeGym_Text_GymGuide_GoGetEm
    GoTo EternaGym_GymGuide_End
    End

EternaGym_GymGuide_End:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

EternaGym_GymGuide_AfterBadge:
    BufferPlayerName 0
    Message HearthomeGym_Text_GymGuide_AfterBadge
    GoTo EternaGym_GymGuide_End
    End

HearthomeGym_GymStatue:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckBadgeAcquired BADGE_ID_RELIC, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, HearthomeGym_GymStatue_AfterBadge
    BufferRivalName 0
    BufferRivalName 1
    Message HearthomeGym_Text_GymStatue_BeforeBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeGym_GymStatue_AfterBadge:
    BufferRivalName 0
    BufferPlayerName 1
    BufferRivalName 2
    Message HearthomeGym_Text_GymStatue_AfterBadge
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

HearthomeGym_GymGuide_InitialVisit:
    LockAll
    ApplyMovement HEARTHOME_CITY_GYM_ENTRANCE_ROOM_GYM_GUIDE, HearthomeGym_GymGuide_MoveToPlayer
    WaitMovement
    Message HearthomeGym_Text_GymGuide_InitialVisit
    CloseMessage
    ApplyMovement HEARTHOME_CITY_GYM_ENTRANCE_ROOM_GYM_GUIDE, HearthomeGym_GymGuide_ReturnToPosition
    WaitMovement
    SetVar VAR_HAS_ENTERED_HEARTHOME_GYM_BEFORE, TRUE
    ReleaseAll
    End

    .balign 4, 0
HearthomeGym_GymGuide_MoveToPlayer:
    EmoteExclamationMark
    Delay8
    WalkNormalWest
    WalkNormalSouth
    EndMovement

    .balign 4, 0
HearthomeGym_GymGuide_ReturnToPosition:
    WalkNormalNorth
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement
