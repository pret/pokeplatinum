#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town_pokemon_news_press.h"


    ScriptEntry _000E
    ScriptEntry _02BB
    ScriptEntry _02CE
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00DC, _0216
    GoToIfSet FLAG_UNK_0x0AB1, _02B0
    GoToIfUnset FLAG_UNK_0x00D8, _004A
    GoToIfEq VAR_UNK_0x40E5, 0, _0057
    GoTo _0081

_004A:
    SetFlag FLAG_UNK_0x00D8
    Message 0
    GoTo _0060

_0057:
    Message 1
    GoTo _0060

_0060:
    ScrCmd_218 VAR_RESULT
    SetVar VAR_UNK_0x40E5, VAR_RESULT
    SetNewsPressDeadline 1
    BufferSpeciesNameFromVar 0, VAR_UNK_0x40E5, 0, 0
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0081:
    Message 3
    GetNewsPressDeadline VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _029F
    CheckPartyHasSpecies VAR_RESULT, VAR_UNK_0x40E5
    GoToIfEq VAR_RESULT, 0, _0283
    GoTo _00AE

_00AE:
    BufferSpeciesNameFromVar 0, VAR_UNK_0x40E5, 0, 0
    Message 4
    GetRandom VAR_RESULT, 12
    CallIfEq VAR_RESULT, 0, _0189
    CallIfEq VAR_RESULT, 1, _0191
    CallIfEq VAR_RESULT, 2, _0199
    CallIfEq VAR_RESULT, 3, _01A1
    CallIfEq VAR_RESULT, 4, _01A9
    CallIfEq VAR_RESULT, 5, _01B1
    CallIfEq VAR_RESULT, 6, _01B9
    CallIfEq VAR_RESULT, 7, _01C1
    CallIfEq VAR_RESULT, 8, _01C9
    CallIfEq VAR_RESULT, 9, _01D1
    CallIfEq VAR_RESULT, 10, _01D9
    CallIfEq VAR_RESULT, 11, _01E1
    SetVar VAR_0x8005, 3
    CanFitItem ITEM_HEART_SCALE, 1, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _01E9
    SetFlag FLAG_UNK_0x0AB1
    GoToIfEq VAR_RESULT, 0, _023F
    End

_0189:
    SetVar VAR_0x8004, 2
    Return

_0191:
    SetVar VAR_0x8004, 3
    Return

_0199:
    SetVar VAR_0x8004, 4
    Return

_01A1:
    SetVar VAR_0x8004, 6
    Return

_01A9:
    SetVar VAR_0x8004, 7
    Return

_01B1:
    SetVar VAR_0x8004, 8
    Return

_01B9:
    SetVar VAR_0x8004, 9
    Return

_01C1:
    SetVar VAR_0x8004, 10
    Return

_01C9:
    SetVar VAR_0x8004, 11
    Return

_01D1:
    SetVar VAR_0x8004, 13
    Return

_01D9:
    SetVar VAR_0x8004, 14
    Return

_01E1:
    SetVar VAR_0x8004, 15
    Return

_01E9:
    CallCommonScript 0x7FC
    SetVar VAR_0x8004, 93
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    ClearFlag FLAG_UNK_0x00DC
    SetVar VAR_UNK_0x40E5, 0
    SetFlag FLAG_UNK_0x0AB1
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0216:
    GoToIfCannotFitItem ITEM_HEART_SCALE, 1, VAR_RESULT, _0251
    SetVar VAR_0x8004, VAR_UNK_0x4117
    SetVar VAR_0x8005, 3
    GoTo _025C
    End

_023F:
    SetVar VAR_UNK_0x4117, VAR_0x8004
    SetFlag FLAG_UNK_0x00DC
    GoTo _0251
    End

_0251:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_025C:
    Message 7
    ClearFlag FLAG_UNK_0x00DC
    SetVar VAR_UNK_0x40E5, 0
    CallCommonScript 0x7FC
    SetVar VAR_0x8004, 93
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0283:
    BufferSpeciesNameFromVar 0, VAR_UNK_0x40E5, 0, 0
    GetNewsPressDeadline VAR_RESULT
    BufferNumber 1, VAR_RESULT
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_029F:
    Message 9
    SetVar VAR_UNK_0x40E5, 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02B0:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02BB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02CE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 12
    Message 13
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntry 0x107, 0
    AddMenuEntry 0x108, 1
    AddMenuEntry 0x109, 2
    AddMenuEntry 0x10B, 3
    AddMenuEntry 0x10A, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0344
    GoToIfEq VAR_0x8008, 1, _034F
    GoToIfEq VAR_0x8008, 2, _035A
    GoToIfEq VAR_0x8008, 3, _0365
    GoTo _0370
    End

_0344:
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_034F:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_035A:
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0365:
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0370:
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
