#include "macros/scrcmd.inc"
#include "generated/distribution_events.h"
#include "res/text/bank/team_galactic_eterna_building_1f.h"
#include "res/field/events/events_team_galactic_eterna_building_1f.h"


    ScriptEntry TeamGalacticEternaBuilding1F_GruntM1
    ScriptEntry TeamGalacticEternaBuilding1F_GruntM2
    ScriptEntry TeamGalacticEternaBuilding1F_Sign
    ScriptEntry TeamGalacticEternaBuilding1F_Looker
    ScriptEntry TeamGalacticEternaBuilding1F_OnFrameLooker
    ScriptEntry TeamGalacticEternaBuilding1F_WallBlockingRotomsRoom
    ScriptEntry TeamGalacticEternaBuilding1F_OnTransition
    ScriptEntryEnd

TeamGalacticEternaBuilding1F_OnTransition:
    End

TeamGalacticEternaBuilding1F_GruntM1:
    NPCMessage TeamGalacticEternaBuilding1F_Text_WelcomeToTeamGalacticAreYouHereToDonateYourPokemon
    End

TeamGalacticEternaBuilding1F_GruntM2:
    NPCMessage TeamGalacticEternaBuilding1F_Text_AsAGroupTeamGalacticHasItsSightsSetOnTheStarsNotOnThisWorld
    End

TeamGalacticEternaBuilding1F_Sign:
    EventMessage TeamGalacticEternaBuilding1F_Text_ThePathYouChoseLeadsToGlory
    End

TeamGalacticEternaBuilding1F_Looker:
    NPCMessage TeamGalacticEternaBuilding1F_Text_NowIHaveBeenConductingMyInvestigationIntoTeamGalactic
    End

TeamGalacticEternaBuilding1F_OnFrameLooker:
    LockAll
    ApplyMovement LOCALID_GRUNT_M_LOOKER, TeamGalacticEternaBuilding1F_Movement_LookerNoticeAndWalkToPlayer
    ApplyMovement LOCALID_PLAYER, TeamGalacticEternaBuilding1F_Movement_PlayerFaceLooker
    WaitMovement
    Message TeamGalacticEternaBuilding1F_Text_HelloItIsMe
    CloseMessage
    ApplyMovement LOCALID_GRUNT_M_LOOKER, TeamGalacticEternaBuilding1F_Movement_LookerSpin
    WaitMovement
    ClearFlag FLAG_HIDE_TEAM_GALACTIC_ETERNA_BUILDING_1F_LOOKER
    SetObjectEventPos LOCALID_LOOKER, 12, 15
    SetObjectEventMovementType LOCALID_LOOKER, MOVEMENT_TYPE_LOOK_WEST
    SetObjectEventDir LOCALID_LOOKER, DIR_WEST
    AddObject LOCALID_LOOKER
    RemoveObject LOCALID_GRUNT_M_LOOKER
    SetFlag FLAG_UNK_0x0071
    SetVar VAR_TEAM_GALACTIC_ETERNA_BUILDING_1F_STATE, 1
    WaitTime 30, VAR_RESULT
    Message TeamGalacticEternaBuilding1F_Text_IncidentallyYouAreAFirstRateTrainer
    ApplyMovement LOCALID_LOOKER, TeamGalacticEternaBuilding1F_Movement_LookerSpin
    WaitMovement
    ClearFlag FLAG_HIDE_TEAM_GALACTIC_ETERNA_BUILDING_1F_GRUNT_M_LOOKER
    SetObjectEventPos LOCALID_GRUNT_M_LOOKER, 12, 15
    SetObjectEventMovementType LOCALID_GRUNT_M_LOOKER, MOVEMENT_TYPE_LOOK_WEST
    SetObjectEventDir LOCALID_GRUNT_M_LOOKER, DIR_WEST
    AddObject LOCALID_GRUNT_M_LOOKER
    RemoveObject LOCALID_LOOKER
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
TeamGalacticEternaBuilding1F_Movement_PlayerFaceLooker:
    Delay8 9
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
TeamGalacticEternaBuilding1F_Movement_LookerNoticeAndWalkToPlayer:
    WalkOnSpotFastWest
    EmoteExclamationMark
    Delay8 2
    WalkNormalWest 2
    EndMovement

    .balign 4, 0
TeamGalacticEternaBuilding1F_Movement_LookerSpin:
    FaceSouth
    Delay2
    FaceEast
    Delay4
    FaceNorth
    Delay4
    FaceWest
    Delay2
    EndMovement

TeamGalacticEternaBuilding1F_WallBlockingRotomsRoom:
    CheckItem ITEM_SECRET_KEY, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, TeamGalacticEternaBuilding1F_WallBlockingRotomsRoomEnd
    CheckDistributionEvent DISTRIBUTION_EVENT_ROTOM, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, TeamGalacticEternaBuilding1F_WallBlockingRotomsRoomEnd
    GoToIfUnset FLAG_TEAM_GALACTIC_LEFT_ETERNA_BUILDING, TeamGalacticEternaBuilding1F_WallBlockingRotomsRoomEnd
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    BufferItemName 1, ITEM_SECRET_KEY
    Message TeamGalacticEternaBuilding1F_Text_PlayerUsedTheSecretKey
    CloseMessage
    PlaySE SEQ_SE_DP_W062
    FadeScreenOut FADE_SCREEN_SPEED_FAST, COLOR_WHITE
    WaitFadeScreen
    RemoveObject LOCALID_WALL_BLOCKING_ROTOMS_ROOM
    WaitSE SEQ_SE_DP_W062
    FadeScreenIn FADE_SCREEN_SPEED_FAST, COLOR_WHITE
    WaitFadeScreen
    Message TeamGalacticEternaBuilding1F_Text_ItsTheEntranceToASecretRoom
    WaitButton
    CloseMessage
    ReleaseAll
    End

TeamGalacticEternaBuilding1F_WallBlockingRotomsRoomEnd:
    End
