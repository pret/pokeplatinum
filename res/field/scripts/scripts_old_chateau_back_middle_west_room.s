#include "macros/scrcmd.inc"
#include "res/text/bank/old_chateau_back_middle_west_room.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet 0x149, _009C
    GoToIfSet 0xAB0, _009C
    GetTimeOfDay 0x800C
    GoToIfLt 0x800C, 3, _009C
    Message 1
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_NO, _0096
    BufferPlayerName 0
    Message 2
    CloseMessage
    PlayCry SPECIES_ROTOM, 0
    ScrCmd_04D
    SetFlag 0xAB0
    StartWildBattle SPECIES_ROTOM, 20
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _00A7
    CheckDidNotCapture 0x800C
    GoToIfEq 0x800C, TRUE, _008B
    SetFlag 0x149
    ReleaseAll
    End

_008B:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0096:
    CloseMessage
    ReleaseAll
    End

_009C:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A7:
    BlackOutFromBattle
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
