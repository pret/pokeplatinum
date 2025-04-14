#include "macros/scrcmd.inc"
#include "res/text/bank/veilstone_store_b1f.h"

    .data

    ScriptEntry _0032
    ScriptEntry _0045
    ScriptEntry _0058
    ScriptEntry _006B
    ScriptEntry _007E
    ScriptEntry _0091
    ScriptEntry _00A4
    ScriptEntry _00FE
    ScriptEntry _022A
    ScriptEntry _06FE
    ScriptEntry _00E8
    ScriptEntry _0708
    ScriptEntryEnd

_0032:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0045:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0058:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_006B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0091:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00A4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    GoToIfSet FLAG_UNK_0x00B9, _00D0
    SetFlag FLAG_UNK_0x00B9
    SetFlag FLAG_UNK_0x0185
    Message 0
    FacePlayer
    BufferPlayerName 0
    Message 1
    GoTo _00E0
    End

_00D0:
    FacePlayer
    BufferPlayerName 0
    Message 1
    GoTo _00E0
    End

_00E0:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00E8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallCommonScript 0x7E3
    ScrCmd_035
    PokeMartSpecialties MART_SPECIALTIES_ID_VEILSTONE_B1F
    ReleaseAll
    End

_00FE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowMoney 20, 2
    Message 8
    InitLocalTextMenu 31, 11, 0, VAR_0x800C
    SetMenuXOriginToRight
    AddMenuEntryImm 14, 0
    AddMenuEntryImm 15, 1
    AddMenuEntryImm 16, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_0x800C
    GoToIfEq VAR_0x8008, 0, _0150
    GoToIfEq VAR_0x8008, 1, _018F
    GoTo _0215
    End

_0150:
    SetVar VAR_0x8004, 1
    SetVar VAR_0x8005, 200
    GoToIfCannotFitItem ITEM_LAVA_COOKIE, VAR_0x8004, VAR_0x800C, _01FF
    CheckMoney2 VAR_0x800C, 200
    GoToIfEq VAR_0x800C, 0, _020A
    Message 9
    GoTo _01CE
    End

_018F:
    SetVar VAR_0x8004, 10
    SetVar VAR_0x8005, 2000
    GoToIfCannotFitItem ITEM_LAVA_COOKIE, VAR_0x8004, VAR_0x800C, _01FF
    CheckMoney2 VAR_0x800C, 2000
    GoToIfEq VAR_0x800C, 0, _020A
    Message 10
    GoTo _01CE
    End

_01CE:
    AddItem ITEM_LAVA_COOKIE, VAR_0x8004, VAR_0x800C
    PlayFanfare SEQ_SE_DP_REGI
    AddToGameRecord RECORD_MONEY_SPENT, VAR_0x8005
    RemoveMoney2 VAR_0x8005
    UpdateMoneyDisplay
    WaitFanfare SEQ_SE_DP_REGI
    CallIfLt VAR_DEPARTMENT_STORE_REGULAR_COUNTER, 0x2710, _0700
    GoTo _0220
    End

_01FF:
    Message 11
    GoTo _0220
    End

_020A:
    Message 12
    GoTo _0220
    End

_0215:
    Message 13
    GoTo _0220
    End

_0220:
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_022A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowMoney 20, 2
    Message 17
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _025B
    GoToIfEq VAR_0x800C, MENU_NO, _0306
    End

_025B:
    CheckItem ITEM_POFFIN_CASE, 1, VAR_0x800C
    GoToIfEq VAR_0x800C, 0, _0537
    Call _0697
    SetVar VAR_0x8008, VAR_0x800C
    GoToIfEq VAR_0x8008, 0, _031B
    GoToIfEq VAR_0x8008, 1, _0344
    GoToIfEq VAR_0x8008, 2, _036D
    GoToIfEq VAR_0x8008, 3, _0396
    GoToIfEq VAR_0x8008, 4, _03BF
    GoToIfEq VAR_0x8008, 5, _03E8
    GoToIfEq VAR_0x8008, 6, _0411
    GoToIfEq VAR_0x8008, 7, _043A
    GoToIfEq VAR_0x8008, 8, _0463
    GoToIfEq VAR_0x8008, 9, _048C
    GoTo _0306
    End

_0306:
    Message 23
    GoTo _0311
    End

_0311:
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_031B:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0557
    GoTo _04B5
    End

_0344:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0577
    GoTo _04B5
    End

_036D:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0597
    GoTo _04B5
    End

_0396:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _05B7
    GoTo _04B5
    End

_03BF:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _05D7
    GoTo _04B5
    End

_03E8:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _05F7
    GoTo _04B5
    End

_0411:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0617
    GoTo _04B5
    End

_043A:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0637
    GoTo _04B5
    End

_0463:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0657
    GoTo _04B5
    End

_048C:
    GoToIfNotEnoughMoney 6400, _052C
    SetVar VAR_0x8005, 1
    Call _0677
    GoTo _04B5
    End

_04B5:
    ScrCmd_307 VAR_0x800C
    GoToIfLt VAR_0x800C, VAR_0x8005, _0521
    GoTo _04CE
    End

_04CE:
    GoToIfEq VAR_0x8005, 0, _0503
    ScrCmd_289 VAR_0x800C, VAR_0x8007, VAR_0x8000, VAR_0x8001, VAR_0x8002, VAR_0x8003, 20
    AddToGameRecord RECORD_MONEY_SPENT, 6400
    RemoveMoney2 6400
    SubVar VAR_0x8005, 1
    GoTo _04CE
    End

_0503:
    PlayFanfare SEQ_SE_DP_REGI
    UpdateMoneyDisplay
    CallIfLt VAR_DEPARTMENT_STORE_REGULAR_COUNTER, 0x2710, _0700
    Message 20
    GoTo _054D
    End

_0521:
    Message 22
    GoTo _054D
    End

_052C:
    Message 21
    GoTo _054D
    End

_0537:
    Message 24
    GoTo _054D

    .byte 2
    .byte 0
    .byte 44
    .byte 0
    .byte 23
    .byte 22
    .byte 0
    .byte 2
    .byte 0
    .byte 0
    .byte 0
    .byte 2
    .byte 0

_054D:
    WaitABXPadPress
    CloseMessage
    HideMoney
    ReleaseAll
    End

_0557:
    SetVar VAR_0x8007, 32
    SetVar VAR_0x8000, 32
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 0
    Return

_0577:
    SetVar VAR_0x8007, 32
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 32
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 0
    Return

_0597:
    SetVar VAR_0x8007, 32
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 32
    SetVar VAR_0x8003, 0
    Return

_05B7:
    SetVar VAR_0x8007, 32
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 32
    Return

_05D7:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 32
    SetVar VAR_0x8001, 32
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 0
    Return

_05F7:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 32
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 32
    SetVar VAR_0x8003, 0
    Return

_0617:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 32
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 32
    Return

_0637:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 32
    SetVar VAR_0x8002, 32
    SetVar VAR_0x8003, 0
    Return

_0657:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 32
    SetVar VAR_0x8002, 0
    SetVar VAR_0x8003, 32
    Return

_0677:
    SetVar VAR_0x8007, 0
    SetVar VAR_0x8000, 0
    SetVar VAR_0x8001, 0
    SetVar VAR_0x8002, 32
    SetVar VAR_0x8003, 32
    Return

_0697:
    Message 18
    InitLocalTextListMenu 1, 1, 0, VAR_0x800C
    AddListMenuEntry 25, 0
    AddListMenuEntry 26, 1
    AddListMenuEntry 27, 2
    AddListMenuEntry 28, 3
    AddListMenuEntry 29, 4
    AddListMenuEntry 30, 5
    AddListMenuEntry 31, 6
    AddListMenuEntry 32, 7
    AddListMenuEntry 33, 8
    AddListMenuEntry 34, 9
    AddListMenuEntry 35, 10
    ShowListMenu
    Return

_06FE:
    End

_0700:
    AddVar 0x4042, 1
    Return

_0708:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 37
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
