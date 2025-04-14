#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_2f.h"

    .data

    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntry _00CC
    ScriptEntry _0012
    ScriptEntryEnd

_0012:
    ScrCmd_238 9, VAR_0x4000
    GoToIfEq VAR_0x4000, 0, _002B
    ClearFlag FLAG_UNK_0x0215
    End

_002B:
    SetFlag FLAG_UNK_0x0215
    End

_0031:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0044:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x013D, _00A4
    GetPlayerStarterSpecies 0x800C
    CallIfEq 0x800C, SPECIES_TURTWIG, _00B4
    CallIfEq 0x800C, SPECIES_CHIMCHAR, _00BC
    CallIfEq 0x800C, SPECIES_PIPLUP, _00C4
    SetVar 0x410A, 0x8004
    ScrCmd_343 0, 0x8004
    Message 1
    SetVar 0x8005, 1
    CallCommonScript 0x7DF
    SetFlag FLAG_UNK_0x013D
    CloseMessage
    ReleaseAll
    End

_00A4:
    ScrCmd_261 0, 0x410A
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B4:
    SetVar 0x8004, ACCESSORY_TURTWIG_MASK
    Return

_00BC:
    SetVar 0x8004, ACCESSORY_CHIMCHAR_MASK
    Return

_00C4:
    SetVar 0x8004, ACCESSORY_PIPLUP_MASK
    Return

_00CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
