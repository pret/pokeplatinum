#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city_pokecenter_1f.h"
#include "res/field/events/events_snowpoint_city_pokecenter_1f.h"


    ScriptEntry SnowpointCityPokecenter1F_Nurse
    ScriptEntry SnowpointCityPokecenter1F_Lass
    ScriptEntry SnowpointCityPokecenter1F_BattleGirl
    ScriptEntry SnowpointCityPokecenter1F_Psyduck
    ScriptEntry SnowpointCityPokecenter1F_Maylene
    ScriptEntryEnd

SnowpointCityPokecenter1F_Nurse:
    Common_CallPokecenterNurse LOCALID_POKECENTER_NURSE
    End

SnowpointCityPokecenter1F_Lass:
    NPCMessage SnowpointCityPokecenter1F_Text_IcePokemonAroundSnowpoint
    End

SnowpointCityPokecenter1F_BattleGirl:
    NPCMessage SnowpointCityPokecenter1F_Text_SnowSwallowsSound
    End

SnowpointCityPokecenter1F_Psyduck:
    PokemonCryAndMessage SPECIES_PSYDUCK, SnowpointCityPokecenter1F_Text_PsyduckCry
    End

SnowpointCityPokecenter1F_Maylene:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfBadgeAcquired BADGE_ID_ICICLE, SnowpointCityPokecenter1F_ThatsTheIcicleBadge
    GetPlayerDir VAR_0x8000
    CallIfEq VAR_0x8000, DIR_NORTH, SnowpointCityPokecenter1F_MayleneWalkOnSpotSouth
    CallIfEq VAR_0x8000, DIR_SOUTH, SnowpointCityPokecenter1F_MayleneWalkOnSpotSouth
    CallIfEq VAR_0x8000, DIR_WEST, SnowpointCityPokecenter1F_MayleneWalkOnSpotEast
    CallIfEq VAR_0x8000, DIR_EAST, SnowpointCityPokecenter1F_MayleneWalkOnSpotWest
    BufferPlayerName 0
    Message SnowpointCityPokecenter1F_Text_IAdmireCandice
    WaitButton
    CloseMessage
    ReleaseAll
    End

SnowpointCityPokecenter1F_MayleneWalkOnSpotSouth:
    ApplyMovement LOCALID_MAYLENE, SnowpointCityPokecenter1F_Movement_MayleneWalkOnSpotSouth
    WaitMovement
    Return

SnowpointCityPokecenter1F_MayleneWalkOnSpotEast:
    ApplyMovement LOCALID_MAYLENE, SnowpointCityPokecenter1F_Movement_MayleneWalkOnSpotEast
    WaitMovement
    Return

SnowpointCityPokecenter1F_MayleneWalkOnSpotWest:
    ApplyMovement LOCALID_MAYLENE, SnowpointCityPokecenter1F_Movement_MayleneWalkOnSpotWest
    WaitMovement
    Return

SnowpointCityPokecenter1F_ThatsTheIcicleBadge:
    BufferPlayerName 0
    Message SnowpointCityPokecenter1F_Text_ThatsTheIcicleBadge
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
SnowpointCityPokecenter1F_Movement_MayleneWalkOnSpotSouth:
    WalkOnSpotFasterSouth 2
    EndMovement

    .balign 4, 0
SnowpointCityPokecenter1F_Movement_MayleneWalkOnSpotEast:
    WalkOnSpotFasterEast 2
    EndMovement

    .balign 4, 0
SnowpointCityPokecenter1F_Movement_MayleneWalkOnSpotWest:
    WalkOnSpotFasterWest 2
    EndMovement
