#include "macros/scrcmd.inc"
#include "generated/hidden_locations.h"
#include "res/text/bank/distortion_world_giratina_room.h"

// NOTE: These constants must mirror those in ov9_02249960.c
#define LOCALID_GIRATINA 128
#define LOCALID_CYNTHIA  129
#define LOCALID_CYRUS    130

    ScriptEntry DistortionWorldGiratinaRoom_OnTransition
    ScriptEntry DistortionWorldGiratinaRoom_OnLoad
    ScriptEntry DistortionWorldGiratinaRoom_Portal
    ScriptEntry DistortionWorldGiratinaRoom_TriggerWarpToB7F
    ScriptEntry DistortionWorldGiratinaRoom_Giratina
    ScriptEntry DistortionWorldGiratinaRoom_Cynthia
    ScriptEntry DistortionWorldGiratinaRoom_TriggerFirstShadow
    ScriptEntry DistortionWorldGiratinaRoom_TriggerGiratinaArrival
    ScriptEntryEnd

DistortionWorldGiratinaRoom_OnTransition:
    InitPersistedMapFeaturesForDistortionWorld
    End

DistortionWorldGiratinaRoom_OnLoad:
    GoToIfSet FLAG_MAP_LOCAL, DistortionWorldGiratinaRoom_RemoveGiratina
    End

DistortionWorldGiratinaRoom_RemoveGiratina:
    ResetDistortionWorldPersistedCameraAngles
    SetVar VAR_DISTORTION_WORLD_PROGRESS, 14
    RemoveObject LOCALID_GIRATINA
    End

DistortionWorldGiratinaRoom_Portal:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message DistortionWorldGiratinaRoom_Text_LeapIntoPortal
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DistortionWorldGiratinaRoom_GoToSendoffSpring
    CloseMessage
    ReleaseAll
    End

DistortionWorldGiratinaRoom_GoToSendoffSpring:
    BufferPlayerName 0
    Message DistortionWorldGiratinaRoom_Text_PlayerLeaptIntoPortal
    CloseMessage
    EnableHiddenLocation HIDDEN_LOCATION_SPRING_PATH
    SetVar VAR_EXITED_DISTORTION_WORLD_STATE, 1
    PlaySE SEQ_SE_PL_SYUWA
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_SENDOFF_SPRING, 0, 32, 17, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    End

DistortionWorldGiratinaRoom_TriggerWarpToB7F:
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_DISTORTION_WORLD_B7F, 0, 89, 57, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    End

DistortionWorldGiratinaRoom_Giratina:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    PlayCry SPECIES_GIRATINA
    Message DistortionWorldGiratinaRoom_Text_GiratinaCryGiygogagohgwooh
    WaitCry
    CloseMessage
    SetFlag FLAG_MAP_LOCAL
    StartGiratinaOriginBattle SPECIES_GIRATINA, 47
    ClearFlag FLAG_MAP_LOCAL
    CheckWonBattle VAR_RESULT
    GetBattleResult VAR_RESULT
    GoToIfEq VAR_RESULT, BATTLE_RESULT_LOSE, DistortionWorldGiratinaRoom_BlackOut
    GoToIfEq VAR_RESULT, BATTLE_RESULT_DRAW, DistortionWorldGiratinaRoom_BlackOut
    GoToIfEq VAR_RESULT, BATTLE_RESULT_PLAYER_FLED, DistortionWorldGiratinaRoom_PlayerRan
    GoToIfEq VAR_RESULT, BATTLE_RESULT_ENEMY_FLED, DistortionWorldGiratinaRoom_PlayerRan
    GoToIfEq VAR_RESULT, BATTLE_RESULT_CAPTURED_MON, DistortionWorldGiratinaRoom_CaughtGiratina
    AddDistortionWorldMapObject LOCALID_CYRUS
    AddDistortionWorldMapObject LOCALID_CYNTHIA
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldGiratinaRoom_Movement_CynthiaJumpNorth
    WaitMovement
    Message DistortionWorldGiratinaRoom_Text_GiratinaUnderstoodUs
    CloseMessage
    Message DistortionWorldGiratinaRoom_Text_ThatPokemonWasDefeated
    GoTo DistortionWorldGiratinaRoom_PostBattle

DistortionWorldGiratinaRoom_PlayerRan:
    AddDistortionWorldMapObject LOCALID_CYRUS
    AddDistortionWorldMapObject LOCALID_CYNTHIA
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldGiratinaRoom_Movement_CynthiaJumpNorth
    WaitMovement
    Message DistortionWorldGiratinaRoom_Text_GiratinaUnderstoodUs
    CloseMessage
    Message DistortionWorldGiratinaRoom_Text_YouRefusedToBattle
    GoTo DistortionWorldGiratinaRoom_PostBattle

DistortionWorldGiratinaRoom_CaughtGiratina:
    SetFlag FLAG_CAUGHT_GIRATINA
    SetFlag FLAG_HIDE_TURNBACK_CAVE_GIRATINA_ROOM_GIRATINA
    ClearFlag FLAG_HIDE_TURNBACK_CAVE_GIRATINA_ROOM_ITEM
    AddDistortionWorldMapObject LOCALID_CYRUS
    AddDistortionWorldMapObject LOCALID_CYNTHIA
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldGiratinaRoom_Movement_CynthiaJumpNorth
    WaitMovement
    Message DistortionWorldGiratinaRoom_Text_GiratinaUnderstoodUs
    CloseMessage
    Message DistortionWorldGiratinaRoom_Text_ThatPokemonWasCaptured
DistortionWorldGiratinaRoom_PostBattle:
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    AddFreeCamera VAR_0x8004, VAR_0x8005
    ApplyFreeCameraMovement DistortionWorldGiratinaRoom_Movement_CameraMoveSouth
    ApplyMovement LOCALID_CYRUS, DistortionWorldGiratinaRoom_Movement_CyrusEnter
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldGiratinaRoom_Movement_CynthiaNoticeCyrus
    ApplyMovement LOCALID_PLAYER, DistortionWorldGiratinaRoom_Movement_PlayerNoticeCyrus
    WaitMovement
    Message DistortionWorldGiratinaRoom_Text_NewWorldCantBeMade
    Message DistortionWorldGiratinaRoom_Text_PokemonUniteUs
    Message DistortionWorldGiratinaRoom_Text_BigSilence
    Message DistortionWorldGiratinaRoom_Text_EnoughBlathering
    CloseMessage
    ApplyMovement LOCALID_CYRUS, DistortionWorldGiratinaRoom_Movement_CyrusLeave
    WaitMovement
    DeleteDistortionWorldMapObject LOCALID_CYRUS
    ApplyFreeCameraMovement DistortionWorldGiratinaRoom_Movement_CameraMoveNorth
    WaitMovement
    RestoreCamera
    Message DistortionWorldGiratinaRoom_Text_WeCanFeelJoy
    ApplyMovement LOCALID_CYNTHIA, DistortionWorldGiratinaRoom_Movement_CynthiaWalkOnSpotNorth
    WaitMovement
    Message DistortionWorldGiratinaRoom_Text_LetsGoBackHome
    WaitButton
    CloseMessage
    ReleaseAll
    End

DistortionWorldGiratinaRoom_BlackOut:
    BlackOutFromBattle
    ReleaseAll
    End

DistortionWorldGiratinaRoom_Cynthia:
    NPCMessage DistortionWorldGiratinaRoom_Text_LetsGoBackHome
    End

DistortionWorldGiratinaRoom_TriggerFirstShadow:
    LockAll
    PlayCry SPECIES_GIRATINA
    Message DistortionWorldGiratinaRoom_Text_GiratinaCryGiygogagogwoh
    WaitCry
    WaitABPadPress
    CloseMessage
    ReleaseAll
    End

DistortionWorldGiratinaRoom_TriggerGiratinaArrival:
    LockAll
    BufferPlayerName 0
    Message DistortionWorldGiratinaRoom_Text_GiratinaIsEyeingPlayer
    WaitABPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
DistortionWorldGiratinaRoom_Movement_PlayerNoticeCyrus:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
DistortionWorldGiratinaRoom_Movement_CynthiaJumpNorth:
    JumpDistortionWorldNorth 2
    EndMovement

    .balign 4, 0
DistortionWorldGiratinaRoom_Movement_CynthiaNoticeCyrus:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
DistortionWorldGiratinaRoom_Movement_CynthiaWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
DistortionWorldGiratinaRoom_Movement_CyrusEnter:
    JumpDistortionWorldNorth
    EndMovement

    .balign 4, 0
DistortionWorldGiratinaRoom_Movement_CyrusLeave:
    JumpDistortionWorldSouth
    WalkNormalSouth 5
    EndMovement

    .balign 4, 0
DistortionWorldGiratinaRoom_Movement_CameraMoveSouth:
    WalkNormalSouth 5
    EndMovement

    .balign 4, 0
DistortionWorldGiratinaRoom_Movement_CameraMoveNorth:
    WalkNormalNorth 5
    EndMovement
