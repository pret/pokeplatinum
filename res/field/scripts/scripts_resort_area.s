#include "macros/scrcmd.inc"
#include "res/text/bank/resort_area.h"
#include "res/field/events/events_resort_area.h"


    ScriptEntry ResortArea_Beauty1
    ScriptEntry ResortArea_Beauty2
    ScriptEntry ResortArea_AceTrainerF
    ScriptEntry ResortArea_BlackBelt
    ScriptEntry ResortArea_MapSign
    ScriptEntry ResortArea_SignRibbonSyndicate
    ScriptEntry ResortArea_SwimmerM
    ScriptEntry ResortArea_TriggerSchoolKidM
    ScriptEntry ResortArea_ProfRowan
    ScriptEntry ResortArea_Roark
    ScriptEntry ResortArea_Gardenia
    ScriptEntry ResortArea_Maylene
    ScriptEntry ResortArea_Byron
    ScriptEntry ResortArea_OnTransition
    ScriptEntry ResortArea_SignVilla
    ScriptEntryEnd

ResortArea_OnTransition:
    SetFlag FLAG_HIDE_RESORT_AREA_PROF_ROWAN
    SetFlag FLAG_HIDE_RESORT_AREA_ROARK
    SetFlag FLAG_HIDE_RESORT_AREA_GARDENIA
    SetFlag FLAG_HIDE_RESORT_AREA_MAYLENE
    SetFlag FLAG_HIDE_RESORT_AREA_BYRON
    GoToIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_NONE, ResortArea_DontShowVisitor
    GoToIfEq VAR_RESORT_AREA_STATE, 0, ResortArea_DontShowVisitor
    GoToIfSet FLAG_VILLA_VISITOR_INSIDE, ResortArea_DontShowVisitor
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_PROF_ROWAN, ResortArea_ShowProfRowan
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_ROARK, ResortArea_ShowRoark
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_GARDENIA, ResortArea_ShowGardenia
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_MAYLENE, ResortArea_ShowMaylene
    CallIfEq VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_BYRON, ResortArea_ShowByron
    End

ResortArea_DontShowVisitor:
    End

ResortArea_ShowProfRowan:
    ClearFlag FLAG_HIDE_RESORT_AREA_PROF_ROWAN
    Return

ResortArea_ShowRoark:
    ClearFlag FLAG_HIDE_RESORT_AREA_ROARK
    Return

ResortArea_ShowGardenia:
    ClearFlag FLAG_HIDE_RESORT_AREA_GARDENIA
    Return

ResortArea_ShowMaylene:
    ClearFlag FLAG_HIDE_RESORT_AREA_MAYLENE
    Return

ResortArea_ShowByron:
    ClearFlag FLAG_HIDE_RESORT_AREA_BYRON
    Return

ResortArea_Beauty1:
    NPCMessage ResortArea_Text_TraveledLongWay
    End

ResortArea_Beauty2:
    NPCMessage ResortArea_Text_NothingTooGood
    End

ResortArea_AceTrainerF:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfUnset FLAG_JOINED_RIBBON_SYNDICATE, ResortArea_LongToBecomeMember
    CallIfSet FLAG_JOINED_RIBBON_SYNDICATE, ResortArea_YouAreAMember
    WaitButton
    CloseMessage
    ReleaseAll
    End

ResortArea_LongToBecomeMember:
    Message ResortArea_Text_LongToBecomeMember
    Return

ResortArea_YouAreAMember:
    Message ResortArea_Text_YouAreAMember
    Return

ResortArea_BlackBelt:
    NPCMessage ResortArea_Text_DigUpCoolStuff
    End

ResortArea_MapSign:
    ShowMapSign ResortArea_Text_MapSign
    End

ResortArea_SignRibbonSyndicate:
    ShowLandmarkSign ResortArea_Text_SignRibbonSyndicate
    End

ResortArea_SwimmerM:
    NPCMessage ResortArea_Text_SomethingLurks
    End

ResortArea_TriggerSchoolKidM:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 472, ResortArea_SchoolKidMWalkToPlayerZ472
    CallIfEq VAR_0x8005, 473, ResortArea_SchoolKidMWalkToPlayerZ473
    CallIfEq VAR_0x8005, 474, ResortArea_SchoolKidMWalkToPlayerZ474
    Message ResortArea_Text_HaveThisVilla
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ResortArea_DeclinedVilla
    SaveTVSegmentHomeAndManorNoFurniture
    Message ResortArea_Text_LoadOffMyMind
    CloseMessage
    CallIfEq VAR_0x8005, 472, ResortArea_WalkToVillaZ472
    CallIfEq VAR_0x8005, 473, ResortArea_WalkToVillaZ473
    CallIfEq VAR_0x8005, 474, ResortArea_WalkToVillaZ474
    Message ResortArea_Text_StepInside
    CloseMessage
    ApplyMovement LOCALID_SCHOOL_KID_M, ResortArea_Movement_SchoolKidMWalkOnSpotNorth
    WaitMovement
    LoadDoorAnimation 25, 14, 22, 21, ANIMATION_TAG_DOOR_1
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    ApplyMovement LOCALID_SCHOOL_KID_M, ResortArea_Movement_SchoolKidMEnterVilla
    ApplyMovement LOCALID_PLAYER, ResortArea_Movement_PlayerEnterVilla
    WaitMovement
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    RemoveObject LOCALID_SCHOOL_KID_M
    SetVar VAR_RESORT_AREA_STATE, 1
    SetVar VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_NONE
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 10, 6, DIR_WEST
    FadeScreenIn
    WaitFadeScreen
    End

ResortArea_SchoolKidMWalkToPlayerZ472:
    ApplyMovement LOCALID_SCHOOL_KID_M, ResortArea_Movement_SchoolKidMWalkToPlayerZ472
    WaitMovement
    Return

ResortArea_SchoolKidMWalkToPlayerZ473:
    Return

ResortArea_SchoolKidMWalkToPlayerZ474:
    ApplyMovement LOCALID_SCHOOL_KID_M, ResortArea_Movement_SchoolKidMWalkToPlayerZ474
    WaitMovement
    Return

ResortArea_WalkToVillaZ472:
    ApplyMovement LOCALID_SCHOOL_KID_M, ResortArea_Movement_SchoolKidMWalkToVillaZ472
    ApplyMovement LOCALID_PLAYER, ResortArea_Movement_PlayerWalkToVillaZ472
    WaitMovement
    Return

ResortArea_WalkToVillaZ473:
    ApplyMovement LOCALID_SCHOOL_KID_M, ResortArea_Movement_SchoolKidMWalkToVillaZ473
    ApplyMovement LOCALID_PLAYER, ResortArea_Movement_PlayerWalkToVillaZ473
    WaitMovement
    Return

ResortArea_WalkToVillaZ474:
    ApplyMovement LOCALID_SCHOOL_KID_M, ResortArea_Movement_SchoolKidMWalkToVillaZ474
    ApplyMovement LOCALID_PLAYER, ResortArea_Movement_PlayerWalkToVillaZ474
    WaitMovement
    Return

ResortArea_DeclinedVilla:
    Message ResortArea_Text_StillStrikeAsShady
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 472, ResortArea_WalkBackZ472
    CallIfEq VAR_0x8005, 473, ResortArea_WalkBackZ473
    CallIfEq VAR_0x8005, 474, ResortArea_WalkBackZ474
    ReleaseAll
    End

ResortArea_WalkBackZ472:
    ApplyMovement LOCALID_SCHOOL_KID_M, ResortArea_Movement_SchoolKidMWalkBackZ472
    ApplyMovement LOCALID_PLAYER, ResortArea_Movement_PlayerWalkWest
    WaitMovement
    Return

ResortArea_WalkBackZ473:
    ApplyMovement LOCALID_PLAYER, ResortArea_Movement_PlayerWalkWest
    WaitMovement
    Return

ResortArea_WalkBackZ474:
    ApplyMovement LOCALID_SCHOOL_KID_M, ResortArea_Movement_SchoolKidMWalkBackZ474
    ApplyMovement LOCALID_PLAYER, ResortArea_Movement_PlayerWalkWest
    WaitMovement
    Return

    .balign 4, 0
ResortArea_Movement_SchoolKidMWalkToPlayerZ472:
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ResortArea_Movement_SchoolKidMWalkToPlayerZ474:
    WalkNormalSouth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ResortArea_Movement_SchoolKidMWalkBackZ472:
    WalkNormalSouth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ResortArea_Movement_SchoolKidMWalkBackZ474:
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
ResortArea_Movement_SchoolKidMWalkToVillaZ472:
    WalkNormalEast 6
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ResortArea_Movement_SchoolKidMWalkToVillaZ473:
    WalkNormalEast 6
    WalkNormalNorth 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ResortArea_Movement_SchoolKidMWalkToVillaZ474:
    WalkNormalEast 6
    WalkNormalNorth 4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
ResortArea_Movement_SchoolKidMWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
ResortArea_Movement_SchoolKidMEnterVilla:
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
ResortArea_Movement_PlayerWalkToVillaZ472:
    WalkNormalEast 7
    WalkNormalNorth
    EndMovement

    .balign 4, 0
ResortArea_Movement_PlayerWalkToVillaZ473:
    WalkNormalEast 7
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
ResortArea_Movement_PlayerWalkToVillaZ474:
    WalkNormalEast 7
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
ResortArea_Movement_PlayerEnterVilla:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
ResortArea_Movement_PlayerWalkWest:
    WalkNormalWest
    EndMovement

ResortArea_ProfRowan:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message ResortArea_Text_RowanAskVisit
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ResortArea_ProfRowanDeclinedVisit
    Message ResortArea_Text_RowanAcceptedVisit
    CloseMessage
    SetFlag FLAG_HIDE_RESORT_AREA_PROF_ROWAN
    SetVar VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_PROF_ROWAN
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 11, 11, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

ResortArea_ProfRowanDeclinedVisit:
    Message ResortArea_Text_RowanDeclinedVisit
    GoTo ResortArea_VillaVisitorEnd
    End

ResortArea_VillaVisitorEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

ResortArea_Roark:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message ResortArea_Text_RoarkAskVisit
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ResortArea_RoarkDeclinedVisit
    Message ResortArea_Text_RoarkAcceptedVisit
    CloseMessage
    SetFlag FLAG_HIDE_RESORT_AREA_ROARK
    SetVar VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_ROARK
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 11, 11, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

ResortArea_RoarkDeclinedVisit:
    Message ResortArea_Text_RoarkDeclinedVisit
    GoTo ResortArea_VillaVisitorEnd
    End

ResortArea_Gardenia:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message ResortArea_Text_GardeniaAskVisit
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ResortArea_GardeniaDeclinedVisit
    Message ResortArea_Text_GardeniaAcceptedVisit
    CloseMessage
    SetFlag FLAG_HIDE_RESORT_AREA_GARDENIA
    SetVar VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_GARDENIA
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 11, 11, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

ResortArea_GardeniaDeclinedVisit:
    Message ResortArea_Text_GardeniaDeclinedVisit
    GoTo ResortArea_VillaVisitorEnd
    End

ResortArea_Maylene:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message ResortArea_Text_MayleneAskVisit
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ResortArea_MayleneDeclinedVisit
    Message ResortArea_Text_MayleneAcceptedVisit
    CloseMessage
    SetFlag FLAG_HIDE_RESORT_AREA_MAYLENE
    SetVar VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_MAYLENE
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 11, 11, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

ResortArea_MayleneDeclinedVisit:
    Message ResortArea_Text_MayleneDeclinedVisit
    GoTo ResortArea_VillaVisitorEnd
    End

ResortArea_Byron:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message ResortArea_Text_ByronAskVisit
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, ResortArea_ByronDeclinedVisit
    Message ResortArea_Text_ByronAcceptedVisit
    CloseMessage
    SetFlag FLAG_HIDE_RESORT_AREA_BYRON
    SetVar VAR_RESORT_VILLA_VISITOR, VILLA_VISITOR_BYRON
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 11, 11, DIR_NORTH
    FadeScreenIn
    WaitFadeScreen
    End

ResortArea_ByronDeclinedVisit:
    Message ResortArea_Text_ByronDeclinedVisit
    GoTo ResortArea_VillaVisitorEnd
    End

ResortArea_SignVilla:
    ShowLandmarkSign ResortArea_Text_SignVilla
    End

    .balign 4, 0
