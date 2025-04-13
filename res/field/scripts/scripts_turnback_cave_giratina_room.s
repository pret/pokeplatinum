#include "macros/scrcmd.inc"
#include "res/text/bank/turnback_cave_giratina_room.h"

    .data

    ScriptEntry _001C
    ScriptEntry _0037
    ScriptEntry _00A5
    ScriptEntry _0116
    ScriptEntry _001A
    ScriptEntry _0127
    ScriptEntryEnd

_001A:
    End

_001C:
    GoToIfSet FLAG_UNK_0x008E, _0029
    End

_0029:
    SetFlag FLAG_UNK_0x0250
    RemoveObject 0
    ClearFlag FLAG_UNK_0x008E
    End

_0037:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_GIRATINA
    Message 0
    CloseMessage
    SetFlag FLAG_UNK_0x008E
    StartLegendaryBattle SPECIES_GIRATINA, 47
    ClearFlag FLAG_UNK_0x008E
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _009B
    CheckDidNotCapture 0x800C
    GoToIfEq 0x800C, TRUE, _0090
    GoTo _0084
    End

_0084:
    SetFlag FLAG_UNK_0x0121
    SetFlag FLAG_UNK_0x0250
    ReleaseAll
    End

_0090:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_009B:
    ClearFlag FLAG_UNK_0x0250
    BlackOutFromBattle
    ReleaseAll
    End

_00A5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfEq 0x410C, 3, _00F4
    GoToIfLt 0x410C, 15, _0100
    SetVar 0x8004, ITEM_STARDUST
_00CB:
    SetVar 0x8005, 1
    GoToIfCannotFitItem 0x8004, 0x8005, 0x800C, _010C
    CallCommonScript 0x7E0
    CloseMessage
    RemoveObject 1
    ReleaseAll
    End

_00F4:
    SetVar 0x8004, ITEM_REAPER_CLOTH
    GoTo _00CB

_0100:
    SetVar 0x8004, ITEM_RARE_BONE
    GoTo _00CB

_010C:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_0116:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0127:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 2
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0149
    GoTo _017F
    End

_0149:
    BufferPlayerName 0
    Message 3
    CloseMessage
    PlayFanfare SEQ_SE_PL_SYUWA
    SetPartyGiratinaForm GIRATINA_FORM_ORIGIN
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_DISTORTION_WORLD_TURNBACK_CAVE_ROOM, 0, 116, 75, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_017F:
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
