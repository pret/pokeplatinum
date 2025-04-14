#include "macros/scrcmd.inc"
#include "res/text/bank/trainers_school.h"

    .data

    ScriptEntry _0032
    ScriptEntry _0154
    ScriptEntry _0167
    ScriptEntry _0169
    ScriptEntry _017C
    ScriptEntry _018F
    ScriptEntry _01A2
    ScriptEntry _01A4
    ScriptEntry _01A6
    ScriptEntry _02E4
    ScriptEntry _03D9
    ScriptEntry _049C
    ScriptEntryEnd

_0032:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    BufferPlayerName 0
    BufferRivalName 1
    Message 0
    PlaySound SEQ_FANFA4
    BufferPlayerName 0
    Message 1
    WaitSound
    RemoveItem ITEM_PARCEL, 1, VAR_0x800C
    BufferPlayerName 0
    BufferRivalName 1
    Message 2
    SetVar VAR_0x8004, 0x1BA
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FC
    BufferRivalName 1
    Message 3
    CloseMessage
    GetPlayerDir VAR_0x800C
    SetVar VAR_0x8008, VAR_0x800C
    GoToIfEq VAR_0x8008, 0, _00A4
    GoToIfEq VAR_0x8008, 2, _00BE
    GoTo _00D8
    End

_00A4:
    ApplyMovement 1, _0114
    ApplyMovement LOCALID_PLAYER, _0138
    WaitMovement
    GoTo _00F2
    End

_00BE:
    ApplyMovement 1, _0124
    ApplyMovement LOCALID_PLAYER, _0148
    WaitMovement
    GoTo _00F2
    End

_00D8:
    ApplyMovement 1, _0124
    ApplyMovement LOCALID_PLAYER, _0148
    WaitMovement
    GoTo _00F2
    End

_00F2:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 1
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetVar VAR_UNK_0x40E7, 1
    SetFlag FLAG_UNK_0x00F1
    ClearFlag FLAG_UNK_0x01F6
    ClearFlag FLAG_UNK_0x01F5
    ReleaseAll
    End

    .balign 4, 0
_0114:
    MoveAction_019
    MoveAction_017 8
    MoveAction_037
    EndMovement

    .balign 4, 0
_0124:
    MoveAction_017 4
    MoveAction_019
    MoveAction_017 4
    MoveAction_037
    EndMovement

    .balign 4, 0
_0138:
    MoveAction_063
    MoveAction_035
    MoveAction_033
    EndMovement

    .balign 4, 0
_0148:
    MoveAction_063
    MoveAction_033
    EndMovement

_0154:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0167:
    End

_0169:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_017C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_018F:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01A2:
    End

_01A4:
    End

_01A6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0112, _02A8
    GoToIfSet FLAG_UNK_0x010C, _02BD
    Message 9
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _01E7
    GoToIfEq VAR_0x800C, MENU_NO, _02D3
    End

_01E7:
    Message 10
    CloseMessage
    GetPlayerStarterSpecies VAR_0x800C
    GoToIfEq VAR_0x800C, SPECIES_TURTWIG, _0220
    GoToIfEq VAR_0x800C, SPECIES_CHIMCHAR, _022E
    GoTo _0212
    End

_0212:
    StartTrainerBattle TRAINER_SCHOOL_KID_HARRISON
    GoTo _023C
    End

_0220:
    StartTrainerBattle TRAINER_SCHOOL_KID_HARRISON
    GoTo _023C
    End

_022E:
    StartTrainerBattle TRAINER_SCHOOL_KID_HARRISON
    GoTo _023C
    End

_023C:
    CheckWonBattle VAR_0x800C
    GoToIfEq VAR_0x800C, FALSE, _02DE
    SetFlag FLAG_UNK_0x010C
    GoToIfSet FLAG_UNK_0x010D, _0274
    GoToIfUnset FLAG_UNK_0x010D, _0269
    End

_0269:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0274:
    Message 13
    SetVar VAR_0x8004, ITEM_POTION
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_0x800C, _02B3
    CallCommonScript 0x7FC
    SetFlag FLAG_UNK_0x0112
    GoTo _02A8
    End

_02A8:
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02B3:
    CallCommonScript 0x7E1
    CloseMessage
    ReleaseAll
    End

_02BD:
    GoToIfSet FLAG_UNK_0x010D, _0274
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02D3:
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02DE:
    BlackOutFromBattle
    ReleaseAll
    End

_02E4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x010D, _039C
    Message 15
    ShowYesNoMenu VAR_0x800C
    GoToIfEq VAR_0x800C, MENU_YES, _031A
    GoToIfEq VAR_0x800C, MENU_NO, _03A7
    End

_031A:
    Message 16
    CloseMessage
    GetPlayerStarterSpecies VAR_0x800C
    GoToIfEq VAR_0x800C, SPECIES_TURTWIG, _0353
    GoToIfEq VAR_0x800C, SPECIES_CHIMCHAR, _0361
    GoTo _0345
    End

_0345:
    StartTrainerBattle TRAINER_SCHOOL_KID_CHRISTINE
    GoTo _036F
    End

_0353:
    StartTrainerBattle TRAINER_SCHOOL_KID_CHRISTINE
    GoTo _036F
    End

_0361:
    StartTrainerBattle TRAINER_SCHOOL_KID_CHRISTINE
    GoTo _036F
    End

_036F:
    CheckWonBattle VAR_0x800C
    GoToIfEq VAR_0x800C, FALSE, _03D3
    SetFlag FLAG_UNK_0x010D
    GoToIfSet FLAG_UNK_0x010C, _03BD
    GoToIfUnset FLAG_UNK_0x010C, _03B2
    End

_039C:
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03A7:
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03B2:
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03BD:
    GoToIfSet FLAG_UNK_0x0112, _03B2
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03D3:
    BlackOutFromBattle
    ReleaseAll
    End

_03D9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 20
    GoTo _03EA
    End

_03EA:
    Message 21
    InitGlobalTextMenu 7, 2, 0, VAR_0x800C
    AddMenuEntryImm 0, 0
    AddMenuEntryImm 1, 1
    AddMenuEntryImm 2, 2
    AddMenuEntryImm 3, 3
    AddMenuEntryImm 4, 4
    AddMenuEntryImm 5, 5
    ShowMenuMultiColumn 2
    SetVar VAR_0x8008, VAR_0x800C
    GoToIfEq VAR_0x8008, 0, _045F
    GoToIfEq VAR_0x8008, 1, _046A
    GoToIfEq VAR_0x8008, 2, _0475
    GoToIfEq VAR_0x8008, 3, _0480
    GoToIfEq VAR_0x8008, 4, _048B
    GoTo _0496
    End

_045F:
    Message 22
    GoTo _03EA
    End

_046A:
    Message 23
    GoTo _03EA
    End

_0475:
    Message 24
    GoTo _03EA
    End

_0480:
    Message 25
    GoTo _03EA
    End

_048B:
    Message 26
    GoTo _03EA
    End

_0496:
    CloseMessage
    ReleaseAll
    End

_049C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
    .byte 0
