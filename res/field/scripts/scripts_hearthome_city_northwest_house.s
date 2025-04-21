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
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0057
    GoTo _00FA
    End

_0057:
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, 6, _00EF
    Message 2
    PlaySound SEQ_FANFA4
    BufferPlayerName 0
    Message 3
    WaitSound
    GivePokemon SPECIES_EEVEE, 20, ITEM_NONE, VAR_RESULT
    SetFlag FLAG_UNK_0x0131
    Message 4
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00A8
    GoToIfEq VAR_RESULT, MENU_NO, _00E9
    End

_00A8:
    CloseMessage
    GetPartyCount VAR_MAP_LOCAL_0
    SubVar VAR_MAP_LOCAL_0, 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BB VAR_MAP_LOCAL_0, VAR_RESULT
    CallIfNe VAR_RESULT, 1, _00E3
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
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0122
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
