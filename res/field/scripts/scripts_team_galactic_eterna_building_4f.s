#include "macros/scrcmd.inc"
#include "res/text/bank/team_galactic_eterna_building_4f.h"

    .data

    ScriptEntry _001A
    ScriptEntry _0022
    ScriptEntry _0198
    ScriptEntry _01B7
    ScriptEntry _01D6
    ScriptEntry _01FF
    ScriptEntryEnd

_001A:
    ScrCmd_2CD
    End

    .byte 205
    .byte 2
    .byte 2
    .byte 0

_0022:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ApplyMovement 2, _013C
    WaitMovement
    Message 0
    CloseMessage
    StartTrainerBattle TRAINER_COMMANDER_JUPITER_TEAM_GALACTIC_ETERNA_BUILDING
    CheckWonBattle 0x800C
    GoToIfEq 0x800C, FALSE, _0135
    Message 1
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    RemoveObject 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    WaitTime 15, 0x800C
    GetPlayerDir 0x8004
    GoToIfEq 0x8004, 0, _00A4
    GoToIfEq 0x8004, 2, _00BE
    GoToIfEq 0x8004, 3, _00D0
    End

_00A4:
    ApplyMovement 2, _0144
    ApplyMovement LOCALID_PLAYER, _0174
    WaitMovement
    GoTo _00E2
    End

_00BE:
    ApplyMovement 2, _015C
    WaitMovement
    GoTo _00E2
    End

_00D0:
    ApplyMovement 2, _0168
    WaitMovement
    GoTo _00E2
    End

_00E2:
    Message 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    SetFlag FLAG_UNK_0x01FD
    SetFlag FLAG_UNK_0x01BB
    SetFlag FLAG_UNK_0x01C2
    SetFlag FLAG_UNK_0x0081
    ClearFlag FLAG_UNK_0x0192
    ClearFlag FLAG_UNK_0x0200
    ClearFlag FLAG_UNK_0x01FE
    RemoveObject 2
    RemoveObject 1
    RemoveObject 3
    SetVar 0x407A, 3
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    SetFlag FLAG_ALT_MUSIC_GALACTIC_ETERNA_BUILDING
    ReleaseAll
    End

_0135:
    BlackOutFromBattle
    ReleaseAll
    End

    .balign 4, 0
_013C:
    MoveAction_032
    EndMovement

    .balign 4, 0
_0144:
    MoveAction_012
    EndMovement

    .byte 63
    .byte 0
    .byte 1
    .byte 0
    .byte 15
    .byte 0
    .byte 2
    .byte 0
    .byte 32
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_015C:
    MoveAction_012 3
    MoveAction_035
    EndMovement

    .balign 4, 0
_0168:
    MoveAction_012 3
    MoveAction_034
    EndMovement

    .balign 4, 0
_0174:
    MoveAction_063
    MoveAction_033
    EndMovement

    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 33
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 34
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

_0198:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_CLEFAIRY
    Message 2
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01B7:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitFanfare SEQ_SE_CONFIRM
    PlayCry SPECIES_BUNEARY
    Message 5
    ScrCmd_04D
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01D6:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0081, _01F4
    Message 3
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01F4:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01FF:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
