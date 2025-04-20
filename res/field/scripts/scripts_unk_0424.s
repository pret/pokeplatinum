#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0431.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    LockAll
    WaitTime 1, VAR_RESULT
    SetVar VAR_0x8005, VAR_0x8000
    DrawPokemonPreviewFromPartySlot VAR_0x8000
    ScrCmd_059 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0031
    GoTo _0054
    End

_0031:
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0054
    GoToIfEq VAR_RESULT, MENU_NO, _00B2
    End

_0054:
    FadeOutMusic 42, 10
    Message 1
    ScrCmd_05A VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    WaitTime 30, VAR_RESULT
    ScrCmd_055 10
    WaitTime 10, VAR_RESULT
    GoToIfEq VAR_0x8004, 0, _00BA
    ScrCmd_05B
    WaitTime 1, VAR_RESULT
    ScrCmd_05C
    WaitTime 1, VAR_RESULT
    ScrCmd_28D
    BufferPartyMonNickname 0, VAR_0x8005
    Message 2
    ScrCmd_28E VAR_RESULT
    PlayCry SPECIES_CHATOT
    WaitCry
    GoTo _00B2
    End

_00B2:
    ScrCmd_209
    CloseMessage
    ReleaseAll
    End

_00BA:
    BufferPartyMonNickname 0, VAR_0x8005
    Message 3
    Message 4
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0054
    GoToIfEq VAR_RESULT, MENU_NO, _00B2
    End

    .byte 0
    .byte 0
    .byte 0
