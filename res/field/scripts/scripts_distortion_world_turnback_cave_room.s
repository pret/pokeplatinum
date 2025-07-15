#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_turnback_cave_room.h"


    ScriptEntry _000A
    ScriptEntry _000E
    ScriptEntryEnd

_000A:
    InitPersistedMapFeaturesForDistortionWorld
    End

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _002E
    CloseMessage
    ReleaseAll
    End

_002E:
    BufferPlayerName 0
    Message 1
    CloseMessage
    PlayFanfare SEQ_SE_PL_SYUWA
    SetPartyGiratinaForm GIRATINA_FORM_ALTERED
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_TURNBACK_CAVE_GIRATINA_ROOM, 0, 11, 15, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End
