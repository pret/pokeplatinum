#include "macros/scrcmd.inc"

    .data

    ScriptEntry _000A
    ScriptEntry _000E
    .short 0xFD13

_000A:
    ScrCmd_2F2
    End

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 0
    ScrCmd_03E 0x800C
    GoToIfEq 0x800C, 0, _002E
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
