#include "macros/scrcmd.inc"
#include "res/text/bank/hearthome_city_northwest_house.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0131, _0105
    GoToIfSet FLAG_MET_BEBE, _0033
    SetFlag FLAG_MET_BEBE
    Message 0
    GoTo _003E
    End

_0033:
    Message 1
    GoTo _003E
    End

_003E:
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0057
    GoTo _00FA
    End

_0057:
    GetPartyCount 0x800C
    GoToIfEq 0x800C, 6, _00EF
    Message 2
    PlaySound SEQ_FANFA4
    BufferPlayerName 0
    Message 3
    WaitSound
    GivePokemon SPECIES_EEVEE, 20, ITEM_NONE, 0x800C
    SetFlag FLAG_UNK_0x0131
    Message 4
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _00A8
    GoToIfEq 0x800C, MENU_NO, _00E9
    End

_00A8:
    CloseMessage
    GetPartyCount VAR_0x4000
    SubVar VAR_0x4000, 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BB VAR_0x4000, 0x800C
    CallIfNe 0x800C, 1, _00E3
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_00E3:
    IncrementGameRecord RECORD_UNK_049
    Return

_00E9:
    CloseMessage
    ReleaseAll
    End

_00EF:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FA:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0105:
    ScrCmd_22D 2, 0x800C
    GoToIfEq 0x800C, 1, _0122
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0122:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
