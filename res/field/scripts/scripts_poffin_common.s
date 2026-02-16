#include "macros/scrcmd.inc"
#include "res/text/bank/poffin_common.h"


    ScriptEntry _0008
    ScriptEntryEnd
    End

_0008:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    GoTo _001B
    End

_001B:
    Message 1
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 9, 0
    AddMenuEntryImm 10, 1
    AddMenuEntryImm 11, 2
    AddMenuEntryImm 12, 3
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _00D0
    GoToIfEq VAR_0x8008, 1, _0121
    GoToIfEq VAR_0x8008, 2, _0078
    GoTo _006D
    End

_006D:
    Message 33
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0078:
    Message 32
    WaitABXPadPress
    GoTo _001B
    End

_0085:
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    ReleaseAll
    Return

_0097:
    ReturnToField
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FadeScreenIn
    WaitFadeScreen
    Return

_00AF:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00BA:
    Message 6
    GoTo _006D
    End

_00C5:
    Message 7
    GoTo _006D
    End

_00D0:
    CheckItem ITEM_POFFIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _00AF
    ScrCmd_1D8 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _00BA
    GoToIfEq VAR_RESULT, 2, _00C5
    WaitTime 30, VAR_RESULT
    Call _0085
    ScrCmd_1D7 0
    Call _0097
    GoTo _006D
    End

_0121:
    CheckItem ITEM_POFFIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _00AF
    ScrCmd_1D8 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _00BA
    GoToIfEq VAR_RESULT, 2, _00C5
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 1, _0173
    GoTo _006D
    End

_0173:
    Message 13
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 13, 0
    AddMenuEntryImm 14, 1
    AddMenuEntryImm 5, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _01B7
    GoToIfEq VAR_0x8008, 1, _020D
    GoTo _006D
    End

_01B7:
    Message 2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0173
    CloseMessage
    StartBattleClient 6, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, _01F9
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, _0203
    GoTo _0263
    End

_01F9:
    EndCommunication
    GoTo _0173
    End

_0203:
    EndCommunication
    GoTo _0173
    End

_020D:
    Message 2
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0173
    CloseMessage
    StartBattleServer 6, 0, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, _024F
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, _0259
    GoTo _0263
    End

_024F:
    EndCommunication
    GoTo _0173
    End

_0259:
    EndCommunication
    GoTo _0173
    End

_0263:
    FadeScreenOut
    WaitFadeScreen
    ReleaseAll
    ScrCmd_1D7 1
    EndCommunication
    Call _0097
    GoTo _006D
    End

    .balign 4, 0
