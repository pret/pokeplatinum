#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_meadow.h"


    ScriptEntry _001E
    ScriptEntry _0024
    ScriptEntry _01D8
    ScriptEntry _01D8
    ScriptEntry _01DA
    ScriptEntry _02EF
    ScriptEntry _0306
    ScriptEntryEnd

_001E:
    SetFlag FLAG_UNK_0x09CE
    End

_0024:
    LockAll
    Call _00CC
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_FLOAROMA_MEADOW_1
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _006E
    Call _00EE
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_FLOAROMA_MEADOW_2
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _006E
    Call _010E
    SetFlag FLAG_ALT_MUSIC_FLOAROMA_MEADOW
    ReleaseAll
    End

_006E:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_0074:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0080:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0088:
    WalkOnSpotNormalSouth
    EndMovement

    .byte 12
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 9
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_00A0:
    WalkNormalSouth
    WalkOnSpotNormalEast
    Delay8 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_00B4:
    WalkNormalSouth
    WalkOnSpotNormalEast
    Delay8 3
    WalkNormalEast
    WalkOnSpotNormalSouth
    EndMovement

_00CC:
    Message 0
    Message 1
    ApplyMovement 0, _0074
    ApplyMovement 1, _0074
    WaitMovement
    Message 2
    Message 3
    CloseMessage
    Return

_00EE:
    ApplyMovement 0, _0080
    WaitMovement
    Message 4
    CloseMessage
    ApplyMovement 0, _0088
    WaitMovement
    Message 5
    CloseMessage
    Return

_010E:
    Message 6
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 0
    RemoveObject 1
    SetVar VAR_UNK_0x40E9, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ClearFlag FLAG_UNK_0x019E
    AddObject 3
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 12, _01BA
    CallIfEq VAR_0x8004, 13, _01C6
    RemoveObject 3
    Message 7
    SetVar VAR_0x8004, 0x1B6
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x009F
    Message 8
    SetVar VAR_0x8004, ITEM_HONEY
    SetVar VAR_0x8005, 10
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _01AD
    CallCommonScript 0x7FC
    Message 9
    GoTo _01B0

_01AD:
    Message 12
_01B0:
    SetFlag FLAG_UNK_0x00A0
    WaitABXPadPress
    CloseMessage
    Return

_01BA:
    ApplyMovement 2, _00A0
    WaitMovement
    Return

_01C6:
    ApplyMovement 2, _00B4
    WaitMovement
    Return

    .byte 235
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

_01D8:
    End

_01DA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    ShowMoney 20, 2
    GoTo _01F3
    End

_01F3:
    InitLocalTextMenu 30, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 15, 0
    AddMenuEntryImm 16, 1
    AddMenuEntryImm 17, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0241
    GoToIfEq VAR_0x8008, 1, _026A
    GoToIfEq VAR_0x8008, 2, _02C8
    GoTo _02C8
    End

_0241:
    GoToIfNotEnoughMoney 100, _02E2
    SetVar VAR_0x8005, 1
    SetVar VAR_0x8006, 100
    GoTo _0293
    End

_026A:
    GoToIfNotEnoughMoney 1000, _02E2
    SetVar VAR_0x8005, 10
    SetVar VAR_0x8006, 1000
    GoTo _0293
    End

_0293:
    SetVar VAR_0x8004, ITEM_HONEY
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, _02D5
    RemoveMoney2 VAR_0x8006
    UpdateMoneyDisplay
    PlayFanfare SEQ_SE_DP_REGI
    WaitFanfare SEQ_SE_DP_REGI
    CallCommonScript 0x7E0
    HideMoney
    CloseMessage
    ReleaseAll
    End

_02C8:
    Message 14
    WaitABXPadPress
    HideMoney
    CloseMessage
    ReleaseAll
    End

_02D5:
    Message 12
    WaitABXPadPress
    HideMoney
    CloseMessage
    ReleaseAll
    End

_02E2:
    Message 13
    WaitABXPadPress
    HideMoney
    CloseMessage
    ReleaseAll
    End

_02EF:
    ShowArrowSign 18
    End

_0306:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_0x8004, 0x1B6
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    CloseMessage
    SetFlag FLAG_UNK_0x009F
    RemoveObject 3
    ReleaseAll
    End
