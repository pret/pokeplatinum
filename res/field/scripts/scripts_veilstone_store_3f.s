#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_3f.h"

    .data

    ScriptEntry _001E
    ScriptEntry _00EE
    ScriptEntry _0101
    ScriptEntry _0114
    ScriptEntry _0127
    ScriptEntry _013D
    ScriptEntry _0153
    ScriptEntryEnd

_001E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckIsDepartmentStoreRegular 0x800C
    GoToIfEq 0x800C, TRUE, _005F
    Message 0
    InitCommonStrings2MenuBuilder 1, 1, 0, TRUE, 0x800C
    AddMenuEntrySmallStringID 229, 1
    AddMenuEntrySmallStringID 228, 0
    FinishAndShowMenu
    GoToIfEq 0x800C, 1, _00C2
    GoTo _00B7

_005F:
    BufferPlayerName 0
    Message 1
    InitCommonStrings2MenuBuilder 1, 1, 0, TRUE, 0x800C
    AddMenuEntrySmallStringID 229, 0
    AddMenuEntrySmallStringID 228, 1
    FinishAndShowMenu
    GoToIfNe 0x800C, 0, _00B7
    GetRandom2 0x800C, 4
    GoToIfEq 0x800C, 0, _00C2
    GoToIfEq 0x800C, 1, _00CD
    GoToIfEq 0x800C, 2, _00D8
    GoTo _00E3

_00B7:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C2:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00CD:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D8:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E3:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0101:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0114:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0127:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_3F_UP
    ReleaseAll
    End

_013D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_3F_DOWN
    ReleaseAll
    End

_0153:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
