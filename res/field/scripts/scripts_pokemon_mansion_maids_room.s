#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_mansion_maids_room.h"

    .data

    ScriptEntry _000E
    ScriptEntry _0068
    ScriptEntry _007B
    ScriptEntryEnd

_000E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0139, _005D
    Message 0
    SetVar VAR_0x8004, ITEM_SOOTHE_BELL
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _0053
    SetFlag FLAG_UNK_0x0139
    CallCommonScript 0x7E0
    CloseMessage
    ReleaseAll
    End

_0053:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_005D:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0068:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_007B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 3
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _009D
    GoTo _00D3
    End

_009D:
    BufferPlayerName 0
    Message 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    BufferPlayerName 0
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00D3:
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
