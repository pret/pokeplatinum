#include "macros/scrcmd.inc"
#include "res/text/bank/resort_area_house.h"
#include "res/field/events/events_resort_area_house.h"


    ScriptEntry ResortAreaHouse_Collector
    ScriptEntry ResortAreaHouse_OldMan
    ScriptEntry ResortAreaHouse_NinjaBoy
    ScriptEntryEnd

ResortAreaHouse_Collector:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message ResortAreaHouse_Text_AllINeedIsTV
    WaitButton
    CloseMessage
    ApplyMovement LOCALID_COLLECTOR, ResortAreaHouse_Movement_CollectorWalkOnSpotNorth
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
ResortAreaHouse_Movement_CollectorWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

ResortAreaHouse_OldMan:
    NPCMessage ResortAreaHouse_Text_BestTrainersAtFrontier
    End

ResortAreaHouse_NinjaBoy:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, ResortAreaHouse_SeenEveryPokemonSinnohMale
    GoToIfEq VAR_RESULT, GENDER_FEMALE, ResortAreaHouse_SeenEveryPokemonSinnohFemale
    End

ResortAreaHouse_SeenEveryPokemonSinnohMale:
    Message ResortAreaHouse_Text_SeenEveryPokemonSinnohMale
    GoTo ResortAreaHouse_NinjaBoyEnd
    End

ResortAreaHouse_SeenEveryPokemonSinnohFemale:
    Message ResortAreaHouse_Text_SeenEveryPokemonSinnohFemale
    GoTo ResortAreaHouse_NinjaBoyEnd
    End

ResortAreaHouse_NinjaBoyEnd:
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
