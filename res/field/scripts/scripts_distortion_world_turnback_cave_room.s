#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_turnback_cave_room.h"


    ScriptEntry DistortionWorldTurnbackCaveRoom_OnTransition
    ScriptEntry DistortionWorldTurnbackCaveRoom_Portal
    ScriptEntryEnd

DistortionWorldTurnbackCaveRoom_OnTransition:
    InitPersistedMapFeaturesForDistortionWorld
    End

DistortionWorldTurnbackCaveRoom_Portal:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message DistortionWorldTurnbackCaveRoom_Text_LeapIntoPortal
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, DistortionWorldTurnbackCaveRoom_GoToTurnbackCave
    CloseMessage
    ReleaseAll
    End

DistortionWorldTurnbackCaveRoom_GoToTurnbackCave:
    BufferPlayerName 0
    Message DistortionWorldTurnbackCaveRoom_Text_PlayerLeaptIntoPortal
    CloseMessage
    PlaySE SEQ_SE_PL_SYUWA
    SetPartyGiratinaForm GIRATINA_FORM_ALTERED
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_TURNBACK_CAVE_GIRATINA_ROOM, 0, 11, 15, DIR_SOUTH
    FadeScreenIn
    WaitFadeScreen
    End
