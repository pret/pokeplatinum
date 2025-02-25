#include "macros/scrcmd.inc"
#include "res/text/bank/route_227_house.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0031
    GoToIfEq 0x800C, MENU_NO, _0079
    End

_0031:
    Message 1
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Message 2
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0031
    GoToIfEq 0x800C, MENU_NO, _0079
    End

_0079:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
