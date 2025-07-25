#include "macros/scrcmd.inc"
#include "res/text/bank/poketch_co_1f.h"


    ScriptEntry _0042
    ScriptEntry _01C3
    ScriptEntry _01D6
    ScriptEntry _01E9
    ScriptEntry _0016
    ScriptEntryEnd

_0016:
    ScrCmd_238 6, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _003C
    GoToIfLt VAR_UNK_0x4077, 2, _003C
    ClearFlag FLAG_UNK_0x0212
    End

_003C:
    SetFlag FLAG_UNK_0x0212
    End

_0042:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    CountBadgesAcquired VAR_0x8000
    GoToIfEq VAR_0x8000, 0, _0181
    CheckPoketchAppRegistered POKETCH_APPID_MEMOPAD, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _00C5
    CheckPoketchAppRegistered POKETCH_APPID_MARKINGMAP, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _00DC
    CheckPoketchAppRegistered POKETCH_APPID_LINKSEARCHER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _00F3
    CheckPoketchAppRegistered POKETCH_APPID_MOVETESTER, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _010A
    CheckItem ITEM_POKE_RADAR, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _01B8
    GoTo _01AD

_00C5:
    CountBadgesAcquired VAR_RESULT
    GoToIfGe VAR_RESULT, 1, _0121
    GoTo _0181

_00DC:
    CountBadgesAcquired VAR_RESULT
    GoToIfGe VAR_RESULT, 3, _0139
    GoTo _018C

_00F3:
    CountBadgesAcquired VAR_RESULT
    GoToIfGe VAR_RESULT, 5, _0151
    GoTo _0197

_010A:
    CountBadgesAcquired VAR_RESULT
    GoToIfGe VAR_RESULT, 7, _0169
    GoTo _01A2

_0121:
    Message 2
    SetVar VAR_0x8004, 2
    CallCommonScript 0x7D9
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0139:
    Message 5
    SetVar VAR_0x8004, 12
    CallCommonScript 0x7D9
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0151:
    Message 8
    SetVar VAR_0x8004, 13
    CallCommonScript 0x7D9
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0169:
    Message 11
    SetVar VAR_0x8004, 15
    CallCommonScript 0x7D9
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0181:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_018C:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0197:
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A2:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01AD:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B8:
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
