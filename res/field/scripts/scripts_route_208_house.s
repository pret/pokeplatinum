#include "macros/scrcmd.inc"
#include "res/text/bank/route_208_house.h"

    .data

    ScriptEntry _0016
    ScriptEntry _001C
    ScriptEntry _007C
    ScriptEntry _0108
    ScriptEntry _02D5
    ScriptEntryEnd

_0016:
    SetFlag FLAG_UNK_0x09E7
    End

_001C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0AA0, _0067
    Message 0
    GetRandom VAR_0x8004, 26
    AddVar VAR_0x8004, ITEM_CHERI_BERRY /* Random berry from Cheri to Tamato */
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0072
    SetFlag FLAG_UNK_0x0AA0
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0067:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0072:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_007C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfEq VAR_0x4000, 1, _00ED
    CheckPoketchAppRegistered POKETCH_APPID_BERRYSEARCHER, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _00FD
    Message 2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00C7
    GoToIfEq VAR_RESULT, MENU_NO, _00E2
    End

_00C7:
    Message 3
    SetVar VAR_0x4000, 1
    SetVar VAR_0x8004, 7
    CallCommonScript 0x7D9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E2:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00ED:
    BufferPoketchAppName 0, POKETCH_APPID_BERRYSEARCHER
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00FD:
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0108:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    ShowMoney 20, 2
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 223, 0
    AddMenuEntryImm 224, 1
    AddMenuEntryImm 225, 2
    AddMenuEntryImm 226, 3
    AddMenuEntryImm 227, 4
    ShowMenu
    SetVar VAR_0x8000, VAR_RESULT
    SetVar VAR_0x8008, VAR_0x8000
    GoToIfEq VAR_0x8008, 0, _0245
    GoToIfEq VAR_0x8008, 1, _0251
    GoToIfEq VAR_0x8008, 2, _025D
    GoToIfEq VAR_0x8008, 3, _0269
    Message 9
    GoTo _0229

_0180:
    CallIfEq VAR_0x8000, 0, _0275
    CallIfEq VAR_0x8000, 1, _027F
    CallIfEq VAR_0x8000, 2, _0289
    CallIfEq VAR_0x8000, 3, _0293
    GoToIfEq VAR_RESULT, 0, _023C
    GoToIfCannotFitItem VAR_0x8001, 1, VAR_RESULT, _0233
    CallIfEq VAR_0x8000, 0, _029D
    CallIfEq VAR_0x8000, 1, _02AB
    CallIfEq VAR_0x8000, 2, _02B9
    CallIfEq VAR_0x8000, 3, _02C7
    UpdateMoneyDisplay
    PlayFanfare SEQ_SE_DP_REGI
    AddItem VAR_0x8001, 1, VAR_RESULT
    BufferItemName 0, VAR_0x8001
    Message 10
    Message 8
    GoTo _0229

_0229:
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_0233:
    Message 11
    GoTo _0229

_023C:
    Message 12
    GoTo _0229

_0245:
    SetVar VAR_0x8001, ITEM_GROWTH_MULCH
    GoTo _0180

_0251:
    SetVar VAR_0x8001, ITEM_DAMP_MULCH
    GoTo _0180

_025D:
    SetVar VAR_0x8001, ITEM_STABLE_MULCH
    GoTo _0180

_0269:
    SetVar VAR_0x8001, ITEM_GOOEY_MULCH
    GoTo _0180

_0275:
    CheckMoney VAR_RESULT, 200
    Return

_027F:
    CheckMoney VAR_RESULT, 200
    Return

_0289:
    CheckMoney VAR_RESULT, 200
    Return

_0293:
    CheckMoney VAR_RESULT, 200
    Return

_029D:
    AddToGameRecord RECORD_MONEY_SPENT, 200
    RemoveMoney 200
    Return

_02AB:
    AddToGameRecord RECORD_MONEY_SPENT, 200
    RemoveMoney 200
    Return

_02B9:
    AddToGameRecord RECORD_MONEY_SPENT, 200
    RemoveMoney 200
    Return

_02C7:
    AddToGameRecord RECORD_MONEY_SPENT, 200
    RemoveMoney 200
    Return

_02D5:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    GoTo _02E8
    End

_02E8:
    Message 14
    InitLocalTextMenu 30, 7, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 19, 0
    AddMenuEntryImm 20, 1
    AddMenuEntryImm 21, 2
    AddMenuEntryImm 22, 3
    AddMenuEntryImm 23, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _035B
    GoToIfEq VAR_0x8008, 1, _0366
    GoToIfEq VAR_0x8008, 2, _0371
    GoToIfEq VAR_0x8008, 3, _037C
    GoToIfEq VAR_0x8008, 4, _0387
    GoTo _0387
    End

_035B:
    Message 15
    GoTo _02E8
    End

_0366:
    Message 16
    GoTo _02E8
    End

_0371:
    Message 17
    GoTo _02E8
    End

_037C:
    Message 18
    GoTo _02E8
    End

_0387:
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
