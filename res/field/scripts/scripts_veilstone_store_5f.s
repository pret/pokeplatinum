#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_5f.h"


    ScriptEntry _001A
    ScriptEntry _002D
    ScriptEntry _0040
    ScriptEntry _009C
    ScriptEntry _00AF
    ScriptEntry _00C0
    ScriptEntryEnd

_001A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_002D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0040:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0105, _0087
    Message 2
    SetVar VAR_0x8004, ITEM_STICKY_BARB
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0092
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0105
    GoTo _0087
    End

_0087:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0092:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_009C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00AF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00C0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    ShowMoney 20, 2
    GoTo _00D5

_00D5:
    InitGlobalTextMenu 1, 1, 0, VAR_0x8000
    AddMenuEntryImm 219, 0
    AddMenuEntryImm 220, 1
    AddMenuEntryImm 221, 2
    AddMenuEntryImm 222, 3
    ShowMenu
    SetVar VAR_0x8008, VAR_0x8000
    GoToIfEq VAR_0x8008, 0, _0125
    GoToIfEq VAR_0x8008, 1, _0131
    GoToIfEq VAR_0x8008, 2, _013D
    Message 10
    GoTo _028C

_0125:
    SetVar VAR_0x8001, ITEM_FRESH_WATER
    GoTo _0191

_0131:
    SetVar VAR_0x8001, ITEM_SODA_POP
    GoTo _0191

_013D:
    SetVar VAR_0x8001, ITEM_LEMONADE
    GoTo _0191

_0149:
    CheckMoney VAR_RESULT, 200
    Return

_0153:
    CheckMoney VAR_RESULT, 300
    Return

_015D:
    CheckMoney VAR_RESULT, 350
    Return

_0167:
    AddToGameRecord RECORD_MONEY_SPENT, 200
    RemoveMoney 200
    Return

_0175:
    AddToGameRecord RECORD_MONEY_SPENT, 300
    RemoveMoney 300
    Return

_0183:
    AddToGameRecord RECORD_MONEY_SPENT, 350
    RemoveMoney 350
    Return

_0191:
    CallIfEq VAR_0x8000, 0, _0149
    CallIfEq VAR_0x8000, 1, _0153
    CallIfEq VAR_0x8000, 2, _015D
    GoToIfEq VAR_RESULT, 0, _0277
    GoToIfCannotFitItem VAR_0x8001, 1, VAR_RESULT, _0280
    CallIfEq VAR_0x8000, 0, _0167
    CallIfEq VAR_0x8000, 1, _0175
    CallIfEq VAR_0x8000, 2, _0183
    UpdateMoneyDisplay
    BufferItemName 0, VAR_0x8001
    PlayFanfare SEQ_SE_DP_JIHANKI
    BufferItemName 0, VAR_0x8001
    Message 7
    SetVar VAR_0x8004, VAR_0x8001
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    GetRandom VAR_RESULT, 64
    GoToIfNe VAR_RESULT, 0, _026E
    GoToIfCannotFitItem VAR_0x8001, 1, VAR_RESULT, _0280
    PlayFanfare SEQ_SE_DP_JIHANKI
    BufferItemName 0, VAR_0x8001
    Message 8
    SetVar VAR_0x8004, VAR_0x8001
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    GoTo _026E

_026E:
    Message 6
    GoTo _00D5

_0277:
    Message 9
    GoTo _028C

_0280:
    CallCommonScript 0x7E1
    CloseMessage
    HideMoney
    ReleaseAll
    End

_028C:
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

    .balign 4, 0
