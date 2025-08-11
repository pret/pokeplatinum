#include "constants/moves.h"
#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_city_east_house.h"


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
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0049
    GoToIfEq VAR_RESULT, MENU_NO, _0130
    End

_0049:
    Message 2
    CloseMessage
    GoTo _0054

_0054:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot VAR_0x8002
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8002, 0xFF, _0130
    GetPartyMonSpecies VAR_0x8002, VAR_0x8001
    GoToIfEq VAR_0x8001, 0, _011A
    GetPartyMonMoveCount VAR_RESULT, VAR_0x8002
    GoToIfEq VAR_RESULT, 1, _0125
    Message 6
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    SelectPartyMonMove VAR_0x8002
    GetSelectedPartyMonMove VAR_0x8001
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8001, MOVE_NOT_SELECTED, _0049
    ScrCmd_1CB 0, VAR_0x8002, VAR_0x8001
    Message 7
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0105
    GoToIfEq VAR_RESULT, MENU_NO, _0049
    End

_0105:
    ScrCmd_1C9 VAR_0x8002, VAR_0x8001
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

    .balign 4, 0
