#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_city_northeast_house.h"

    .data

    ScriptEntry _000A
    ScriptEntry _011C
    ScriptEntryEnd

_000A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet 151, _0109
    GoToIfSet 181, _0037
    SetFlag 181
    Message 0
    GoTo _0042
    End

_0037:
    Message 1
    GoTo _0042
    End

_0042:
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, 0, _005B
    GoTo _00FE
    End

_005B:
    GetPartyCount 0x800C
    GoToIfEq 0x800C, 6, _00F3
    Message 2
    PlaySound SEQ_FANFA4
    BufferPlayerName 0
    Message 3
    WaitSound
    GivePokemon SPECIES_PORYGON, 25, ITEM_NONE, 0x800C
    SetFlag 151
    Message 4
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, 0, _00AC
    GoToIfEq 0x800C, 1, _00ED
    End

_00AC:
    CloseMessage
    GetPartyCount 0x4000
    SubVar 0x4000, 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0BB 0x4000, 0x800C
    CallIfNe 0x800C, 1, _00E7
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
