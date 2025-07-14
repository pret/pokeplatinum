#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_mansion.h"


    ScriptEntry _001A
    ScriptEntry _004D
    ScriptEntry _006A
    ScriptEntry _0087
    ScriptEntry _048A
    ScriptEntry _04C8
    ScriptEntryEnd

_001A:
    SetFlag FLAG_UNK_0x09EB
    SetFlag FLAG_UNK_0x0257
    SetFlag FLAG_UNK_0x0258
    GoToIfUnset FLAG_UNK_0x0AB6, _0033
    End

_0033:
    GetRandom VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET, 5
    AddVar VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET, 5
    SetFlag FLAG_UNK_0x0AB6
    ClearTrainerFlag TRAINER_RICH_BOY_LIAM
    ClearTrainerFlag TRAINER_LADY_CELESTE
    End

_004D:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ApplyMovement 0, _04A8
    WaitMovement
    ReleaseAll
    End

_006A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ApplyMovement 1, _04B0
    WaitMovement
    ReleaseAll
    End

_0087:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfDefeated 0x37C, _0396
    GoToIfDefeated 0x37D, _0396
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _00CB
    GoToIfEq VAR_RESULT, 1, _00E5
    GoTo _00FF
    End

_00CB:
    ApplyMovement 2, _03EC
    ApplyMovement LOCALID_PLAYER, _042C
    WaitMovement
    GoTo _00FF
    End

_00E5:
    ApplyMovement 2, _03F4
    ApplyMovement LOCALID_PLAYER, _043C
    WaitMovement
    GoTo _00FF
    End

_00FF:
    CallIfUnset FLAG_UNK_0x0166, _045A
    CallIfSet FLAG_UNK_0x0166, _0467
    SetFlag FLAG_UNK_0x0166
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0471
    SetTrainerFlag TRAINER_RICH_BOY_LIAM
    SetTrainerFlag TRAINER_LADY_CELESTE
    Message 5
    CloseMessage
    ApplyMovement 2, _03FC
    WaitMovement
    SetVar VAR_TOTAL_TURNS_LAST_BATTLE, 0
    SetVar VAR_0x8005, 0
    ClearFlag FLAG_UNK_0x0257
    AddObject 5
    ApplyMovement 5, _0420
    WaitMovement
    Message 15
    CloseMessage
    StartTrainerBattle TRAINER_MAID_BELINDA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0484
    AddVar VAR_0x8005, 0x404D
    Message 16
    CloseMessage
    ApplyMovement 5, _0414
    WaitMovement
    ApplyMovement 5, _0420
    WaitMovement
    Message 17
    CloseMessage
    StartTrainerBattle TRAINER_MAID_SOPHIE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0484
    AddVar VAR_0x8005, 0x404D
    Message 18
    CloseMessage
    ApplyMovement 5, _0414
    WaitMovement
    ApplyMovement 5, _0420
    WaitMovement
    Message 19
    CloseMessage
    StartTrainerBattle TRAINER_MAID_EMILY
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0484
    AddVar VAR_0x8005, 0x404D
    Message 20
    CloseMessage
    ApplyMovement 5, _0414
    WaitMovement
    ApplyMovement 5, _0420
    WaitMovement
    Message 21
    CloseMessage
    StartTrainerBattle TRAINER_MAID_ELENA
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0484
    AddVar VAR_0x8005, 0x404D
    Message 22
    CloseMessage
    ApplyMovement 5, _0414
    WaitMovement
    ApplyMovement 2, _0408
    WaitMovement
    BufferNumber 0, VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET
    BufferNumber 1, VAR_0x8005
    Message 6
    CloseMessage
    ApplyMovement 2, _03FC
    WaitMovement
    ApplyMovement 5, _0420
    WaitMovement
    Message 23
    CloseMessage
    StartTrainerBattle TRAINER_MAID_CLARE
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0484
    AddVar VAR_0x8005, 0x404D
    Message 24
    CloseMessage
    ApplyMovement 5, _0414
    WaitMovement
    RemoveObject 5
    ApplyMovement 2, _0408
    WaitMovement
    BufferNumber 0, VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET
    BufferNumber 1, VAR_0x8005
    Message 7
    GoToIfNe VAR_0x8005, VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET, _044C
    GetRandom VAR_0x8006, 2
    CallIfEq VAR_0x8006, 0, _03A1
    CallIfEq VAR_0x8006, 1, _03B7
    CloseMessage
    ApplyMovement 2, _03FC
    WaitMovement
    ClearFlag FLAG_UNK_0x0258
    AddObject 4
    ApplyMovement 4, _0420
    WaitMovement
    CallIfEq VAR_0x8006, 0, _03CD
    CallIfEq VAR_0x8006, 1, _03D2
    CloseMessage
    StartTrainerBattle VAR_0x8007
    CheckWonBattle VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, _0484
    SetTrainerFlag TRAINER_RICH_BOY_LIAM
    SetTrainerFlag TRAINER_LADY_CELESTE
    CallIfEq VAR_0x8006, 0, _03D7
    CallIfEq VAR_0x8006, 1, _03DC
    CloseMessage
    ApplyMovement 4, _0414
    WaitMovement
    RemoveObject 4
    ApplyMovement 2, _0408
    WaitMovement
    CallIfEq VAR_0x8006, 0, _03E1
    CallIfEq VAR_0x8006, 1, _03E6
    GoTo _0396
    End

_0396:
    Message 13
    GoTo _047C
    End

_03A1:
    SetVar VAR_0x8007, TRAINER_RICH_BOY_LIAM
    SetVar VAR_OBJ_GFX_ID_0, 62
    ScrCmd_2F3 2, VAR_0x8007
    Message 8
    Return

_03B7:
    SetVar VAR_0x8007, TRAINER_LADY_CELESTE
    SetVar VAR_OBJ_GFX_ID_0, 63
    ScrCmd_2F3 2, VAR_0x8007
    Message 9
    Return

_03CD:
    Message 25
    Return

_03D2:
    Message 27
    Return

_03D7:
    Message 26
    Return

_03DC:
    Message 28
    Return

_03E1:
    Message 10
    Return

_03E6:
    Message 11
    Return

    .balign 4, 0
_03EC:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_03F4:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_03FC:
    WalkNormalNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0408:
    WalkNormalSouth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0414:
    WalkOnSpotNormalWest
    SetInvisible
    EndMovement

    .balign 4, 0
_0420:
    SetVisible
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_042C:
    WalkNormalEast
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_043C:
    WalkNormalEast
    WalkNormalSouth
    WalkOnSpotNormalWest
    EndMovement

_044C:
    Message 12
    Message 13
    GoTo _047C
    End

_045A:
    Message 2
    BufferNumber 0, VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET
    Message 3
    Return

_0467:
    BufferNumber 0, VAR_FIVE_MAID_KNOCKOUT_TURN_TARGET
    Message 3
    Return

_0471:
    Message 4
    GoTo _047C
    End

_047C:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0484:
    BlackOutFromBattle
    ReleaseAll
    End

_048A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ApplyMovement 3, _04C0
    WaitMovement
    ReleaseAll
    End

    .balign 4, 0
_04A8:
    FaceSouth
    EndMovement

    .balign 4, 0
_04B0:
    FaceSouth
    EndMovement

    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_04C0:
    FaceWest
    EndMovement

_04C8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
