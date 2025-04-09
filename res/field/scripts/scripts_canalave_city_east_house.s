#include "constants/moves.h"
#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_east_house.h"

    .data

    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0001, _0026
    Message 0
    SetFlag FLAG_UNK_0x0001
    GoTo _0026

_0026:
    Message 1
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0049
    GoToIfEq 0x800C, MENU_NO, _0130
    End

_0049:
    Message 2
    CloseMessage
    GoTo _0054

_0054:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot 0x8002
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8002, 0xFF, _0130
    GetPartyMonSpecies 0x8002, 0x8001
    GoToIfEq 0x8001, 0, _011A
    GetPartyMonMoveCount 0x800C, 0x8002
    GoToIfEq 0x800C, 1, _0125
    Message 6
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    SelectPartyMonMove 0x8002
    GetSelectedPartyMonMove 0x8001
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq 0x8001, MOVE_NOT_SELECTED, _0049
    ScrCmd_1CB 0, 0x8002, 0x8001
    Message 7
    ShowYesNoMenu 0x800C
    GoToIfEq 0x800C, MENU_YES, _0105
    GoToIfEq 0x800C, MENU_NO, _0049
    End

_0105:
    ScrCmd_1C9 0x8002, 0x8001
    Message 8
    PlaySound SEQ_WASURE
    WaitSound
    WaitABXPadPress
    CloseMessage
    End

_011A:
    Message 5
    CloseMessage
    GoTo _0054

_0125:
    Message 4
    CloseMessage
    GoTo _0054

_0130:
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
