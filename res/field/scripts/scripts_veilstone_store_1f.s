#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_1f.h"

    .data

    ScriptEntry _0022
    ScriptEntry _0035
    ScriptEntry _0048
    ScriptEntry _005B
    ScriptEntry _0071
    ScriptEntry _0087
    ScriptEntry _0098
    ScriptEntry _00A9
    ScriptEntryEnd

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0035:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0048:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_1F_RIGHT
    ReleaseAll
    End

_0071:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_1F_LEFT
    ReleaseAll
    End

_0087:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0098:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0129, _0109
    GetPlayerStarterSpecies 0x800C
    CallIfEq 0x800C, SPECIES_TURTWIG, _0119
    CallIfEq 0x800C, SPECIES_CHIMCHAR, _0121
    CallIfEq 0x800C, SPECIES_PIPLUP, _0129
    SetVar 0x4107, 0x8004
    ScrCmd_343 0, 0x8004
    Message 3
    SetVar 0x8005, 1
    CallCommonScript 0x7DF
    SetFlag FLAG_UNK_0x0129
    CloseMessage
    ReleaseAll
    End

_0109:
    ScrCmd_261 0, 0x4107
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0119:
    SetVar 0x8004, 94
    Return

_0121:
    SetVar 0x8004, 92
    Return

_0129:
    SetVar 0x8004, 93
    Return

    .byte 0
    .byte 0
    .byte 0
