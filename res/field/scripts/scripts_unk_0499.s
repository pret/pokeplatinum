#include "macros/scrcmd.inc"
#include "res/text/bank/scratch_off_cards.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ShowBattlePoints 21, 1
    GoToIfSet FLAG_UNK_0x0072, _0031
    SetFlag FLAG_UNK_0x0072
    BufferNumber 0, 1
    Message 15
    GoTo _0041
    End

_0031:
    BufferNumber 0, 1
    Message 0
    GoTo _0041
    End

_0041:
    Message 1
    InitLocalTextMenu 30, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 2, 0
    AddMenuEntryImm 3, 1
    AddMenuEntryImm 4, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0085
    GoToIfEq VAR_0x8008, 1, _015D
    GoTo _0152
    End

_0085:
    BufferNumber 2, 1
    Message 7
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0152
    ScrCmd_29A 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0147
    ScrCmd_299 1
    UpdateBPDisplay
    Message 10
    FadeScreenOut
    WaitFadeScreen
    HideBattlePoints
    CloseMessage
    ScrCmd_2E2
    ScrCmd_2E4 0, VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1
    ScrCmd_2E4 1, VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_3
    ScrCmd_2E4 2, VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_5
    ScrCmd_2E3
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_0x8000, 0
    Call _017A
    GoToIfEq VAR_0x8000, 0, _01AB
    BufferNumber 0, VAR_0x8000
    Message 11
    CallIfNe VAR_MAP_LOCAL_1, 0, _01B6
    CallIfNe VAR_MAP_LOCAL_3, 0, _0200
    CallIfNe VAR_MAP_LOCAL_5, 0, _024A
    Message 5
    GoTo _0172
    End

_0147:
    Message 14
    GoTo _0168
    End

_0152:
    Message 5
    GoTo _0168
    End

_015D:
    Message 6
    GoTo _0041
    End

_0168:
    WaitABXPadPress
    CloseMessage
    HideBattlePoints
    ReleaseAll
    End

_0172:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_017A:
    CallIfNe VAR_MAP_LOCAL_1, 0, _01A3
    CallIfNe VAR_MAP_LOCAL_3, 0, _01A3
    CallIfNe VAR_MAP_LOCAL_5, 0, _01A3
    Return

_01A3:
    AddVar VAR_0x8000, 1
    Return

_01AB:
    Message 5
    GoTo _0172
    End

_01B6:
    GoToIfGt VAR_MAP_LOCAL_1, 1, _01CE
    BufferItemName 0, VAR_MAP_LOCAL_0
    GoTo _01D3

_01CE:
    BufferItemNamePlural 0, VAR_MAP_LOCAL_0
_01D3:
    BufferNumber 1, VAR_MAP_LOCAL_1
    GoToIfCannotFitItem VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1, VAR_RESULT, _0294
    PlaySound SEQ_FANFA4
    Message 13
    AddItem VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1, VAR_RESULT
    WaitSound
    Return

_0200:
    GoToIfGt VAR_MAP_LOCAL_3, 1, _0218
    BufferItemName 0, VAR_MAP_LOCAL_2
    GoTo _021D

_0218:
    BufferItemNamePlural 0, VAR_MAP_LOCAL_2
_021D:
    BufferNumber 1, VAR_MAP_LOCAL_3
    GoToIfCannotFitItem VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_3, VAR_RESULT, _0294
    PlaySound SEQ_FANFA4
    Message 13
    AddItem VAR_MAP_LOCAL_2, VAR_MAP_LOCAL_3, VAR_RESULT
    WaitSound
    Return

_024A:
    GoToIfGt VAR_MAP_LOCAL_5, 1, _0262
    BufferItemName 0, VAR_MAP_LOCAL_4
    GoTo _0267

_0262:
    BufferItemNamePlural 0, VAR_MAP_LOCAL_4
_0267:
    BufferNumber 1, VAR_MAP_LOCAL_5
    GoToIfCannotFitItem VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_5, VAR_RESULT, _0294
    PlaySound SEQ_FANFA4
    Message 13
    AddItem VAR_MAP_LOCAL_4, VAR_MAP_LOCAL_5, VAR_RESULT
    WaitSound
    Return

_0294:
    Message 12
    Return

    .balign 4, 0
