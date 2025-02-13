#include "macros/scrcmd.inc"
#include "res/text/bank/acuity_cavern.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0014
    ScriptEntry _002F
    TableEnd

_000E:
    SetFlag 0x9E3
    End

_0014:
    GoToIfSet 142, _0021
    End

_0021:
    SetFlag 0x1E1
    RemoveObject 0
    ClearFlag 142
    End

_002F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_04C 0x1E0, 0
    Message 0
    CloseMessage
    SetFlag 142
    StartLegendaryBattle SPECIES_UXIE, 50
    ClearFlag 142
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, 0, _0085
    CheckDidNotCapture 0x800C
    GoToIfEq 0x800C, 1, _007A
    SetFlag 0x127
    ReleaseAll
    End

_007A:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0085:
    WhiteOut
    ReleaseAll
    End

    .byte 0
