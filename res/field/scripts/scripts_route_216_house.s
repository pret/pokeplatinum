#include "macros/scrcmd.inc"
#include "res/text/bank/route_216_house.h"


    ScriptEntry _000E
    ScriptEntry _0071
    ScriptEntry _0084
    ScriptEntryEnd

_000E:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0039
    GoToIfEq VAR_RESULT, MENU_NO, _0066
    End

_0039:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    FadeScreenIn
    WaitFadeScreen
    Message 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

_0066:
    Message 2
    WaitButton
    CloseMessage
    ReleaseAll
    End

_0071:
    NPCMessage 3
    End

_0084:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    Message 4
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00AD
    GoToIfEq VAR_RESULT, MENU_NO, _00E3
    End

_00AD:
    BufferPlayerName 0
    Message 5
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    PlayFanfare SEQ_ASA
    WaitFanfare
    HealParty
    FadeScreenIn
    WaitFadeScreen
    BufferPlayerName 0
    Message 6
    WaitButton
    CloseMessage
    ReleaseAll
    End

_00E3:
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
