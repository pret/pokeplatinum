#include "macros/scrcmd.inc"
#include "res/text/bank/turnback_cave_giratina_room.h"


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
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _009B
    CheckDidNotCapture VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _0090
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
    GoToIfEq VAR_UNK_0x410C, 3, _00F4
    GoToIfLt VAR_UNK_0x410C, 15, _0100
    SetVar VAR_0x8004, ITEM_STARDUST
_00CB:
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _010C
    CallCommonScript CommonScript_Unk10
    CloseMessage
    RemoveObject 1
    ReleaseAll
    End

_00F4:
    SetVar VAR_0x8004, ITEM_REAPER_CLOTH
    GoTo _00CB

_0100:
    SetVar VAR_0x8004, ITEM_RARE_BONE
    GoTo _00CB

_010C:
    CallCommonScript CommonScript_Unk11
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
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0149
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

    .balign 4, 0
