#include "macros/scrcmd.inc"
#include "res/text/bank/distortion_world_turnback_cave_room.h"

    .data

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
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _002E
    CloseMessage
    ReleaseAll
    End

_002E:
    BufferPlayerName 0
    Message 1
    CloseMessage
    PlayFanfare SEQ_SE_PL_SYUWA
    ScrCmd_328 0
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_TURNBACK_CAVE_GIRATINA_ROOM, 0, 11, 15, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End
