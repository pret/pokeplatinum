#include "macros/scrcmd.inc"
#include "res/text/bank/unk_0431.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    LockAll
    WaitTime 1, 0x800C
    SetVar 0x8005, 0x8000
    DrawPokemonPreviewFromPartySlot 0x8000
    ScrCmd_059 0x800C
    GoToIfEq 0x800C, 1, _0031
    GoTo _0054
    End

_0031:
    Message 0
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0054
    GoToIfEq 0x800C, MENU_NO, _00B2
    End

_0054:
    FadeOutMusic 42, 10
    Message 1
    ScrCmd_05A 0x800C
    SetVar 0x8004, 0x800C
    WaitTime 30, 0x800C
    ScrCmd_055 10
    WaitTime 10, 0x800C
    GoToIfEq 0x8004, 0, _00BA
    ScrCmd_05B
    WaitTime 1, 0x800C
    ScrCmd_05C
    WaitTime 1, 0x800C
    ScrCmd_28D
    BufferPartyMonNickname 0, 0x8005
    Message 2
    ScrCmd_28E 0x800C
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
    BufferPartyMonNickname 0, 0x8005
    Message 3
    Message 4
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0054
    GoToIfEq 0x800C, MENU_NO, _00B2
    End

    .byte 0
    .byte 0
    .byte 0
