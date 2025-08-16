#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_east_house.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_UNK_0x40B5, 1, _002C
    SetVar VAR_UNK_0x40B5, 1
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002C:
    CheckPoketchAppRegistered POKETCH_APPID_ROULETTE, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0125
    CheckPoketchAppRegistered POKETCH_APPID_DOTART, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _00A7
    CheckPoketchAppRegistered POKETCH_APPID_CALENDAR, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0089
    GoTo _006B

_006B:
    ScrCmd_213 VAR_0x8000, 12
    GoToIfNe VAR_0x8000, 0xFF, _00C5
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0089:
    ScrCmd_213 VAR_0x8000, 14
    GoToIfNe VAR_0x8000, 0xFF, _00E5
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A7:
    ScrCmd_213 VAR_0x8000, 24
    GoToIfNe VAR_0x8000, 0xFF, _0105
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C5:
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    BufferPartyMonSpecies 0, VAR_0x8000
    Message 4
    SetVar VAR_0x8004, 16
    CallCommonScript CommonScript_Unk09
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E5:
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    BufferPartyMonSpecies 0, VAR_0x8000
    Message 5
    SetVar VAR_0x8004, 17
    CallCommonScript CommonScript_Unk09
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0105:
    GetPartyMonSpecies VAR_0x8000, VAR_0x8001
    BufferPartyMonSpecies 0, VAR_0x8000
    Message 6
    SetVar VAR_0x8004, 18
    CallCommonScript CommonScript_Unk09
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0125:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
