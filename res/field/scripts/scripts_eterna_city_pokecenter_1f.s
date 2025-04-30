#include "macros/scrcmd.inc"
#include "res/text/bank/eterna_city_pokecenter_1f.h"

    .data

    ScriptEntry _0016
    ScriptEntry _0022
    ScriptEntry _0035
    ScriptEntry _005E
    ScriptEntry _007D
    ScriptEntryEnd

_0016:
    SetVar VAR_0x8007, 3
    CallCommonScript 0x7D2
    End

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
    GoToIfSet FLAG_UNK_0x0081, _0053
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0053:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_005E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_BUNEARY
    Message 3
    WaitCry
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_MAP_LOCAL_2, 1, _00F4
    CheckPoketchAppRegistered POKETCH_APPID_FRIENDSHIPCHECKER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _00D9
    GetFirstNonEggInParty VAR_0x8000
    BufferPartyMonSpecies 0, VAR_0x8000
    Message 6
    GetPartyMonFriendship VAR_RESULT, VAR_0x8000
    GoToIfGe VAR_RESULT, 120, _00FF
    GoToIfGe VAR_RESULT, 70, _010A
    GoTo _0115
    End

_00D9:
    Message 4
    SetVar VAR_MAP_LOCAL_2, 1
    SetVar VAR_0x8004, 5
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00F4:
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FF:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_010A:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0115:
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
