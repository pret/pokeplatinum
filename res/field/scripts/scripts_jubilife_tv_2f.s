#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_2f.h"

    .data

    ScriptEntry _0031
    ScriptEntry _0044
    ScriptEntry _00CC
    ScriptEntry _0012
    ScriptEntryEnd

_0012:
    ScrCmd_238 9, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _002B
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
    GetPlayerStarterSpecies VAR_RESULT
    CallIfEq VAR_RESULT, SPECIES_TURTWIG, _00B4
    CallIfEq VAR_RESULT, SPECIES_CHIMCHAR, _00BC
    CallIfEq VAR_RESULT, SPECIES_PIPLUP, _00C4
    SetVar VAR_UNK_0x410A, VAR_0x8004
    ScrCmd_343 0, VAR_0x8004
    Message 1
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7DF
    SetFlag FLAG_UNK_0x013D
    CloseMessage
    ReleaseAll
    End

_00A4:
    BufferAccessoryName 0, VAR_UNK_0x410A
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00B4:
    SetVar VAR_0x8004, ACCESSORY_TURTWIG_MASK
    Return

_00BC:
    SetVar VAR_0x8004, ACCESSORY_CHIMCHAR_MASK
    Return

_00C4:
    SetVar VAR_0x8004, ACCESSORY_PIPLUP_MASK
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
