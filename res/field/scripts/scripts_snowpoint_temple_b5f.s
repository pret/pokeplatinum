#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_temple_b5f.h"

    .data

    ScriptEntry _000A
    ScriptEntry _0025
    ScriptEntryEnd

_000A:
    GoToIfSet FLAG_UNK_0x008E, _0017
    End

_0017:
    SetFlag FLAG_UNK_0x0243
    RemoveObject 0
    ClearFlag FLAG_UNK_0x008E
    End

_0025:
    LockAll
    PlayFanfare SEQ_SE_CONFIRM
    WaitFanfare SEQ_SE_CONFIRM
    GoToIfSet FLAG_UNK_0x011A, _0081
    ScrCmd_26B VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _0073
    SetFlag FLAG_UNK_0x011A
    BufferPlayerName 0
    Message 1
    CloseMessage
    ScrCmd_063 0
    ScrCmd_269 0, 8, 90, 3, 0
    ScrCmd_062 0
    GoTo _0081
    End

_0073:
    BufferPlayerName 0
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0081:
    Message 2
    CloseMessage
    PlayCry SPECIES_REGIGIGAS
    WaitCry
    SetFlag FLAG_UNK_0x008E
    StartLegendaryBattle SPECIES_REGIGIGAS, 1
    ClearFlag FLAG_UNK_0x008E
    CheckWonBattle VAR_0x800C
    GoToIfEq VAR_0x800C, FALSE, _00D1
    CheckDidNotCapture VAR_0x800C
    GoToIfEq VAR_0x800C, TRUE, _00C6
    SetFlag FLAG_UNK_0x011B
    ReleaseAll
    End

_00C6:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D1:
    BlackOutFromBattle
    ReleaseAll
    End

    .byte 0
