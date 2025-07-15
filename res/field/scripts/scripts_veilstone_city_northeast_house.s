#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_northeast_house.h"


    ScriptEntry _000A
    ScriptEntry _011C
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0097, _0109
    GoToIfSet FLAG_UNK_0x00B5, _0037
    SetFlag FLAG_UNK_0x00B5
    Message 0
    GoTo _0042
    End

_0037:
    Message 1
    GoTo _0042
    End

_0042:
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _005B
    GoTo _00FE
    End

_005B:
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, 6, _00F3
    Message 2
    PlaySound SEQ_FANFA4
    BufferPlayerName 0
    Message 3
    WaitSound
    GivePokemon SPECIES_PORYGON, 25, ITEM_NONE, VAR_RESULT
    SetFlag FLAG_UNK_0x0097
    Message 4
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00AC
    GoToIfEq VAR_RESULT, MENU_NO, _00ED
    End

_00AC:
    CloseMessage
    GetPartyCount VAR_MAP_LOCAL_0
    SubVar VAR_MAP_LOCAL_0, 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BB VAR_MAP_LOCAL_0, VAR_RESULT
    CallIfNe VAR_RESULT, 1, _00E7
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_00E7:
    IncrementGameRecord RECORD_UNK_049
    Return

_00ED:
    CloseMessage
    ReleaseAll
    End

_00F3:
    Message 5
    GoTo _0114
    End

_00FE:
    Message 6
    GoTo _0114
    End

_0109:
    Message 7
    GoTo _0114
    End

_0114:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_011C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
