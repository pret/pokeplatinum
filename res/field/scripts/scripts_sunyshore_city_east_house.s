#include "macros/scrcmd.inc"
#include "res/text/bank/sunyshore_city_east_house.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe 0x40B5, 1, _002C
    SetVar 0x40B5, 1
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002C:
    CheckPoketchAppRegistered POKETCH_APPID_ROULETTE, 0x800C
    GoToIfEq 0x800C, 1, _0125
    CheckPoketchAppRegistered POKETCH_APPID_DOTART, 0x800C
    GoToIfEq 0x800C, 1, _00A7
    CheckPoketchAppRegistered POKETCH_APPID_CALENDAR, 0x800C
    GoToIfEq 0x800C, 1, _0089
    GoTo _006B

_006B:
    ScrCmd_213 0x8000, 12
    GoToIfNe 0x8000, 0xFF, _00C5
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0089:
    ScrCmd_213 0x8000, 14
    GoToIfNe 0x8000, 0xFF, _00E5
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A7:
    ScrCmd_213 0x8000, 24
    GoToIfNe 0x8000, 0xFF, _0105
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C5:
    ScrCmd_198 0x8000, 0x8001
    BufferPartyMonSpecies 0, 0x8000
    Message 4
    SetVar 0x8004, 16
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E5:
    ScrCmd_198 0x8000, 0x8001
    BufferPartyMonSpecies 0, 0x8000
    Message 5
    SetVar 0x8004, 17
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0105:
    ScrCmd_198 0x8000, 0x8001
    BufferPartyMonSpecies 0, 0x8000
    Message 6
    SetVar 0x8004, 18
    CallCommonScript 0x7D9
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
