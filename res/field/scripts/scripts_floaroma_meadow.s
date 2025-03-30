#include "macros/scrcmd.inc"
#include "res/text/bank/floaroma_meadow.h"

    .data

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
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _006E
    Call _00EE
    StartTrainerBattle TRAINER_GALACTIC_GRUNT_FLOAROMA_MEADOW_2
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _006E
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
    MoveAction_033
    MoveAction_075
    EndMovement

    .balign 4, 0
_0080:
    MoveAction_035
    EndMovement

    .balign 4, 0
_0088:
    MoveAction_033
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
    MoveAction_013
    MoveAction_035
    MoveAction_063 3
    MoveAction_033
    EndMovement

    .balign 4, 0
_00B4:
    MoveAction_013
    MoveAction_035
    MoveAction_063 3
    MoveAction_015
    MoveAction_033
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
    SetVar 0x40E9, 1
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ClearFlag FLAG_UNK_0x019E
    AddObject 3
    GetPlayerMapPos 0x8004, 0x8005
    CallIfEq 0x8004, 12, _01BA
    CallIfEq 0x8004, 13, _01C6
    RemoveObject 3
    Message 7
    SetVar 0x8004, 0x1B6
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x009F
    Message 8
    SetVar 0x8004, 94
    SetVar 0x8005, 10
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _01AD
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
    ScrCmd_072 20, 2
    GoTo _01F3
    End

_01F3:
    ScrCmd_041 30, 11, 0, 1, 0x800C
    ScrCmd_33A 1
    ScrCmd_042 15, 0
    ScrCmd_042 16, 1
    ScrCmd_042 17, 2
    ScrCmd_043
    SetVar 0x8008, 0x800C
    GoToIfEq 0x8008, 0, _0241
    GoToIfEq 0x8008, 1, _026A
    GoToIfEq 0x8008, 2, _02C8
    GoTo _02C8
    End

_0241:
    ScrCmd_071 0x800C, 100
    GoToIfEq 0x800C, 0, _02E2
    SetVar 0x8005, 1
    SetVar 0x8006, 100
    GoTo _0293
    End

_026A:
    ScrCmd_071 0x800C, 0x3E8
    GoToIfEq 0x800C, 0, _02E2
    SetVar 0x8005, 10
    SetVar 0x8006, 0x3E8
    GoTo _0293
    End

_0293:
    SetVar 0x8004, 94
    ScrCmd_07D 0x8004, 0x8005, 0x800C
    GoToIfEq 0x800C, 0, _02D5
    ScrCmd_1A3 0x8006
    ScrCmd_074
    PlayFanfare SEQ_SE_DP_REGI
    WaitFanfare SEQ_SE_DP_REGI
    CallCommonScript 0x7E0
    ScrCmd_073
    CloseMessage
    ReleaseAll
    End

_02C8:
    Message 14
    WaitABXPadPress
    ScrCmd_073
    CloseMessage
    ReleaseAll
    End

_02D5:
    Message 12
    WaitABXPadPress
    ScrCmd_073
    CloseMessage
    ReleaseAll
    End

_02E2:
    Message 13
    WaitABXPadPress
    ScrCmd_073
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
    SetVar 0x8004, 0x1B6
    SetVar 0x8005, 1
    CallCommonScript 0x7FC
    CloseMessage
    SetFlag FLAG_UNK_0x009F
    RemoveObject 3
    ReleaseAll
    End
