#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_sailor_eldritch_house.h"
#include "res/field/events/events_canalave_city_sailor_eldritch_house.h"


    ScriptEntry CanalaveCitySailorEldritchHouse_OnTransition
    ScriptEntry CanalaveCitySailorEldritchHouse_LittleBoy
    ScriptEntry CanalaveCitySailorEldritchHouse_PokefanF
    ScriptEntryEnd

CanalaveCitySailorEldritchHouse_OnTransition:
    GoToIfEq VAR_LUNAR_WING_EVENT_STATE, 0, CanalaveCitySailorEldritchHouse_TryInitLunarWingEvent
    CallIfEq VAR_LUNAR_WING_EVENT_STATE, 3, CanalaveCitySailorEldritchHouse_ResetLunarWingEventState
    CallIfGe VAR_LUNAR_WING_EVENT_STATE, 1, CanalaveCitySailorEldritchHouse_SetLittleBoyPokefanFPositionsAtBed
CanalaveCitySailorEldritchHouse_OnTransitionEnd:
    End

CanalaveCitySailorEldritchHouse_TryInitLunarWingEvent:
    GoToIfSet FLAG_WOKE_UP_CANALAVE_CITY_SAILOR_ELDRITCH_HOUSE_LITTLE_BOY, CanalaveCitySailorEldritchHouse_OnTransitionEnd
    CheckGameCompleted VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, CanalaveCitySailorEldritchHouse_OnTransitionEnd
    GetNationalDexEnabled VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, FALSE, CanalaveCitySailorEldritchHouse_OnTransitionEnd
    SetVar VAR_LUNAR_WING_EVENT_STATE, 1
    Call CanalaveCitySailorEldritchHouse_SetLittleBoyPokefanFPositionsAtBed
    End

CanalaveCitySailorEldritchHouse_ResetLunarWingEventState:
    SetVar VAR_LUNAR_WING_EVENT_STATE, 0
    Return

CanalaveCitySailorEldritchHouse_SetLittleBoyPokefanFPositionsAtBed:
    SetObjectEventPos LOCALID_LITTLE_BOY, 8, 6
    SetObjectEventDir LOCALID_LITTLE_BOY, DIR_SOUTH
    SetObjectEventMovementType LOCALID_LITTLE_BOY, MOVEMENT_TYPE_NONE
    SetObjectEventPos LOCALID_POKEFAN_F, 9, 6
    SetObjectEventDir LOCALID_POKEFAN_F, DIR_WEST
    Return

CanalaveCitySailorEldritchHouse_Unused:
    SetFlag FLAG_HIDE_CANALAVE_CITY_SAILOR_ELDRITCH_HOUSE_SAILOR_ELDRITCH
    Return

CanalaveCitySailorEldritchHouse_PokefanF:
    SetVar VAR_0x8008, VAR_LUNAR_WING_EVENT_STATE
    GoToIfEq VAR_0x8008, 1, CanalaveCitySailorEldritchHouse_WeFeelFrustrated
    GoToIfEq VAR_0x8008, 2, CanalaveCitySailorEldritchHouse_WeFeelFrustrated
    GoToIfEq VAR_0x8008, 3, CanalaveCitySailorEldritchHouse_CantThankYouEnough
    NPCMessage CanalaveCitySailorEldritchHouse_Text_TooMuchEnergy
    End

CanalaveCitySailorEldritchHouse_WeFeelFrustrated:
    NPCMessage CanalaveCitySailorEldritchHouse_Text_WeFeelFrustrated
    End

CanalaveCitySailorEldritchHouse_CantThankYouEnough:
    NPCMessage CanalaveCitySailorEldritchHouse_Text_CantThankYouEnough
    End

CanalaveCitySailorEldritchHouse_LittleBoy:
    GoToIfEq VAR_LUNAR_WING_EVENT_STATE, 1, CanalaveCitySailorEldritchHouse_BoyThrashingInSleep
    GoToIfEq VAR_LUNAR_WING_EVENT_STATE, 2, CanalaveCitySailorEldritchHouse_BoyThrashingInSleep
    GoToIfEq VAR_LUNAR_WING_EVENT_STATE, 3, CanalaveCitySailorEldritchHouse_ScaryDreamDarkPokemon
    NPCMessage CanalaveCitySailorEldritchHouse_Text_GoingToBeSailor
    End

CanalaveCitySailorEldritchHouse_ScaryDreamDarkPokemon:
    NPCMessage CanalaveCitySailorEldritchHouse_Text_ScaryDreamDarkPokemon
    End

CanalaveCitySailorEldritchHouse_BoyThrashingInSleep:
    GoToIfUnset FLAG_TALKED_TO_CANALAVE_CITY_SAILOR_ELDRITCH_HOUSE_LITTLE_BOY, CanalaveCitySailorEldritchHouse_FirstTimeBoyThrashingInSleep
    GoToIfUnset FLAG_OBTAINED_LUNAR_WING, CanalaveCitySailorEldritchHouse_ThrashingInSleep
    CheckItem ITEM_LUNAR_WING, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, CanalaveCitySailorEldritchHouse_ThrashingInSleep
    PlaySE SEQ_SE_CONFIRM
    LockAll
    SetFlag FLAG_WOKE_UP_CANALAVE_CITY_SAILOR_ELDRITCH_HOUSE_LITTLE_BOY
    SetVar VAR_LUNAR_WING_EVENT_STATE, 3
    RemoveItem ITEM_LUNAR_WING, 1, VAR_RESULT
    BufferPlayerName 0
    Message CanalaveCitySailorEldritchHouse_Text_LunarWingGlows
    Message CanalaveCitySailorEldritchHouse_Text_LittleBoyWokeUp
    PlayFanfare SEQ_ASA
    WaitFanfare
    CloseMessage
    WaitTime 15, VAR_RESULT
    Call CanalaveCitySailorEldritchHouse_SailorEldritchEnter
    Message CanalaveCitySailorEldritchHouse_Text_YoureAwake
    Call CanalaveCitySailorEldritchHouse_SailorEldritchFaceSouth
    Message CanalaveCitySailorEldritchHouse_Text_WellNeverForgetYou
    Call CanalaveCitySailorEldritchHouse_SailorEldritchFaceEast
    Message CanalaveCitySailorEldritchHouse_Text_ComeSailWithMe
    CloseMessage
    Call CanalaveCitySailorEldritchHouse_SailorEldritchLeave
    ReleaseAll
    End

CanalaveCitySailorEldritchHouse_ThrashingInSleep:
    EventMessage CanalaveCitySailorEldritchHouse_Text_ThrashingInSleep
    End

CanalaveCitySailorEldritchHouse_FirstTimeBoyThrashingInSleep:
    SetFlag FLAG_TALKED_TO_CANALAVE_CITY_SAILOR_ELDRITCH_HOUSE_LITTLE_BOY
    SetVar VAR_LUNAR_WING_EVENT_STATE, 2
    GoTo CanalaveCitySailorEldritchHouse_ThrashingInSleep
    End

CanalaveCitySailorEldritchHouse_SailorEldritchEnter:
    PlaySE SEQ_SE_DP_KAIDAN2
    WaitSE SEQ_SE_DP_KAIDAN2
    ClearFlag FLAG_HIDE_CANALAVE_CITY_SAILOR_ELDRITCH_HOUSE_SAILOR_ELDRITCH
    AddObject LOCALID_SAILOR_ELDRITCH
    WaitTime 5, VAR_RESULT
    ApplyMovement LOCALID_POKEFAN_F, CanalaveCitySailorEldritchHouse_Movement_FaceWest
    ApplyMovement LOCALID_LITTLE_BOY, CanalaveCitySailorEldritchHouse_Movement_FaceWest
    ApplyMovement LOCALID_PLAYER, CanalaveCitySailorEldritchHouse_Movement_FaceWest
    WaitMovement
    ApplyMovement LOCALID_SAILOR_ELDRITCH, CanalaveCitySailorEldritchHouse_Movement_SailorEldritchEnter
    WaitMovement
    ApplyMovement LOCALID_PLAYER, CanalaveCitySailorEldritchHouse_Movement_PlayerMoveAside
    WaitMovement
    ApplyMovement LOCALID_SAILOR_ELDRITCH, CanalaveCitySailorEldritchHouse_Movement_SailorEldritchWalkToLittleBoy
    WaitMovement
    ApplyMovement LOCALID_PLAYER, CanalaveCitySailorEldritchHouse_Movement_PlayerFaceNorth
    WaitMovement
    Return

CanalaveCitySailorEldritchHouse_SailorEldritchFaceSouth:
    ApplyMovement LOCALID_SAILOR_ELDRITCH, CanalaveCitySailorEldritchHouse_Movement_SailorEldritchFaceSouth
    WaitMovement
    Return

CanalaveCitySailorEldritchHouse_SailorEldritchFaceEast:
    ApplyMovement LOCALID_SAILOR_ELDRITCH, CanalaveCitySailorEldritchHouse_Movement_SailorEldritchFaceEast
    WaitMovement
    Return

CanalaveCitySailorEldritchHouse_SailorEldritchLeave:
    ApplyMovement LOCALID_PLAYER, CanalaveCitySailorEldritchHouse_Movement_FaceWest
    ApplyMovement LOCALID_SAILOR_ELDRITCH, CanalaveCitySailorEldritchHouse_Movement_SailorEldritchLeave
    WaitMovement
    SetFlag FLAG_HIDE_CANALAVE_CITY_SAILOR_ELDRITCH_HOUSE_SAILOR_ELDRITCH
    RemoveObject LOCALID_SAILOR_ELDRITCH
    PlaySE SEQ_SE_DP_KAIDAN2
    WaitSE SEQ_SE_DP_KAIDAN2
    Return

    .balign 4, 0
CanalaveCitySailorEldritchHouse_Movement_FaceWest:
    FaceWest
    EndMovement

    .balign 4, 0
CanalaveCitySailorEldritchHouse_Movement_PlayerFaceNorth:
    FaceNorth
    EndMovement

    .balign 4, 0
CanalaveCitySailorEldritchHouse_Movement_SailorEldritchFaceSouth:
    FaceSouth
    EndMovement

    .balign 4, 0
CanalaveCitySailorEldritchHouse_Movement_SailorEldritchFaceEast:
    FaceEast
    EndMovement

    .balign 4, 0
CanalaveCitySailorEldritchHouse_Movement_SailorEldritchEnter:
    WalkNormalNorth 2
    WalkNormalEast 2
    EndMovement

    .balign 4, 0
CanalaveCitySailorEldritchHouse_Movement_PlayerMoveAside:
    FaceNorth
    LockDir
    WalkNormalSouth
    UnlockDir
    EndMovement

    .balign 4, 0
CanalaveCitySailorEldritchHouse_Movement_SailorEldritchWalkToLittleBoy:
    WalkNormalEast
    EndMovement

    .balign 4, 0
CanalaveCitySailorEldritchHouse_Movement_SailorEldritchLeave:
    WalkNormalWest 3
    WalkNormalSouth 2
    EndMovement
