#include "macros/scrcmd.inc"
#include "res/text/bank/solaceon_town_east_house.h"


    ScriptEntry _000C
    ScriptEntry _0109
    ScriptEntryEnd
    End

_000C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_UNK_0x0117, _00FE
    CallIfUnset FLAG_UNK_0x0001, _00F6
    CheckPartyHasSpecies VAR_RESULT, SPECIES_UNOWN
    GoToIfEq VAR_RESULT, 1, _0048
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0048:
    FindPartySlotWithSpecies VAR_0x8004, SPECIES_UNOWN
    GetPartyMonForm VAR_0x8004, VAR_0x8006
    GoToIfEq VAR_MAP_LOCAL_0, VAR_0x8006, _00EB
    GoTo _0067

_0067:
    SetVar VAR_0x8007, 50
    AddVar VAR_0x8007, VAR_0x8006
    ScrCmd_093 VAR_0x8007, VAR_RESULT
    GoToIfEq VAR_RESULT, 99, _00EB
    BufferPartyMonSpecies 0, VAR_0x8004
    Message 1
    SetVar VAR_0x8000, 10
    ScrCmd_093 VAR_0x8007, VAR_RESULT
    GoToIfLe VAR_RESULT, 89, _00B3
    SubVar VAR_RESULT, 89
    SubVar VAR_0x8000, VAR_RESULT
_00B3:
    ScrCmd_094 VAR_0x8007, VAR_0x8000
    SetVar VAR_MAP_LOCAL_0, VAR_0x8006
    SetFlag FLAG_UNK_0x0001
    GoToIfEq VAR_0x8000, 1, _00DB
    ScrCmd_345 0, VAR_0x8007
    GoTo _00E0

_00DB:
    ScrCmd_2B3 0, VAR_0x8007
_00E0:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00EB:
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F6:
    SetVar VAR_MAP_LOCAL_0, -1
    Return

_00FE:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0109:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0117, _0144
    Message 5
    SetVar VAR_0x8004, 0x1B2
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0117
    Call _014F
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0144:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_014F:
    Message 6
    GetRandom VAR_0x8007, 6
    AddVar VAR_0x8007, 1
    ScrCmd_094 VAR_0x8007, 1
    GetRandom VAR_0x8007, 6
    AddVar VAR_0x8007, 7
    ScrCmd_094 VAR_0x8007, 1
    GetRandom VAR_0x8007, 6
    AddVar VAR_0x8007, 7
    ScrCmd_094 VAR_0x8007, 1
    GetRandom VAR_0x8007, 4
    AddVar VAR_0x8007, 25
    ScrCmd_094 VAR_0x8007, 1
    GetRandom VAR_0x8007, 7
    AddVar VAR_0x8007, 43
    ScrCmd_094 VAR_0x8007, 1
    Return

    .balign 4, 0
