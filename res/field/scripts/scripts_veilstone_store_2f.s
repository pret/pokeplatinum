#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_2f.h"


    ScriptEntry _0022
    ScriptEntry _00F2
    ScriptEntry _0105
    ScriptEntry _0118
    ScriptEntry _012B
    ScriptEntry _0198
    ScriptEntry _01AE
    ScriptEntry _01C4
    ScriptEntryEnd

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckIsDepartmentStoreRegular VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _0063
    Message 0
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 229, 1
    AddMenuEntryImm 228, 0
    ShowMenu
    GoToIfEq VAR_RESULT, 1, _00C6
    GoTo _00BB

_0063:
    BufferPlayerName 0
    Message 1
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 229, 0
    AddMenuEntryImm 228, 1
    ShowMenu
    GoToIfNe VAR_RESULT, 0, _00BB
    GetRandom VAR_RESULT, 4
    GoToIfEq VAR_RESULT, 0, _00C6
    GoToIfEq VAR_RESULT, 1, _00D1
    GoToIfEq VAR_RESULT, 2, _00DC
    GoTo _00E7

_00BB:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C6:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D1:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DC:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E7:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0105:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0118:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_012B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPoketchAppRegistered POKETCH_APPID_COUNTER, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _016F
    Message 10
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _017A
    Message 11
    SetVar VAR_0x8004, 10
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_016F:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_017A:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 73
    .byte 0
    .byte 220
    .byte 5
    .byte 96
    .byte 0
    .byte 104
    .byte 0
    .byte 44
    .byte 0
    .byte 10
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_0198:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_2F_UP
    ReleaseAll
    End

_01AE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    CloseMessageWithoutErasing
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_2F_MID
    ReleaseAll
    End

_01C4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
