#include "macros/scrcmd.inc"
#include "res/text/bank/snowpoint_city.h"


    ScriptEntry _0032
    ScriptEntry _00B4
    ScriptEntry _0047
    ScriptEntry _0174
    ScriptEntry _0187
    ScriptEntry _019A
    ScriptEntry _01AD
    ScriptEntry _01C0
    ScriptEntry _01EB
    ScriptEntry _01FE
    ScriptEntry _0215
    ScriptEntry _022A
    ScriptEntryEnd

_0032:
    GoToIfGe VAR_UNK_0x407F, 1, _0041
    End

_0041:
    SetFlag FLAG_UNK_0x01F3
    End

_0047:
    LockAll
    ApplyMovement 6, _009C
    WaitMovement
    Message 0
    CloseMessage
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0088
    GoTo _0072
    End

_0072:
    ApplyMovement 6, _00A4
    ApplyMovement LOCALID_PLAYER, _00AC
    WaitMovement
    ReleaseAll
    End

_0088:
    GoToIfUnset FLAG_GAME_COMPLETED, _0072
    GoTo _0111

    .balign 4, 0
_009C:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_00A4:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_00AC:
    WalkNormalSouth
    EndMovement

_00B4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GetNationalDexEnabled VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _00DF
    GoTo _00D4

_00D4:
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00DF:
    GoToIfUnset FLAG_GAME_COMPLETED, _00D4
    GoToIfEq VAR_UNK_0x407F, 0, _0102
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0102:
    Message 0
    CloseMessage
    Call _011B
    ReleaseAll
    End

_0111:
    Call _011B
    ReleaseAll
    End

_011B:
    WaitTime 30, VAR_RESULT
    ClearFlag FLAG_UNK_0x01F3
    AddObject 7
    ApplyMovement 7, _016C
    WaitMovement
    Message 3
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0164
    ApplyMovement 6, _015C
    WaitMovement
    SetVar VAR_UNK_0x407F, 1
    Message 4
    WaitABXPadPress
    CloseMessage
    Return

    .balign 4, 0
_015C:
    FaceSouth
    EndMovement

    .balign 4, 0
_0164:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_016C:
    WalkNormalNorth 7
    EndMovement

_0174:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0187:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_019A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 6
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01AD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_UNK_0x407F, 1, _01E0
    Message 7
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E0:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01EB:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 14
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01FE:
    ShowMapSign 18
    End

_0215:
    ShowScrollingSign 19
    End

_022A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_GAME_COMPLETED, _0260
    Message 10
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0276
    GoToIfEq VAR_RESULT, MENU_NO, _026B
    End

_0260:
    Message 13
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_026B:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0276:
    CallIfUnset FLAG_UNK_0x0157, _02A0
    Message 11
    CloseMessage
    Call _035C
    Call _0376
    ScrCmd_23D 2, 3, 188, 0x26F, 0x1B2
    ReleaseAll
    End

_02A0:
    ClearFlag FLAG_UNK_0x0256
    AddObject 10
    LockObject 10
    CloseMessage
    ApplyMovement 10, _0320
    WaitMovement
    Message 15
    ApplyMovement LOCALID_PLAYER, _030C
    WaitMovement
    CloseMessage
    ApplyMovement 10, _0334
    WaitMovement
    WaitTime 15, VAR_RESULT
    Message 16
    CloseMessage
    ApplyMovement 10, _033C
    WaitMovement
    Message 17
    CloseMessage
    ApplyMovement 10, _0348
    WaitMovement
    RemoveObject 10
    ApplyMovement LOCALID_PLAYER, _0318
    WaitMovement
    SetFlag FLAG_UNK_0x0157
    Return

    .balign 4, 0
_030C:
    EmoteExclamationMark
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0318:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0320:
    WalkNormalWest 4
    WalkNormalSouth 2
    WalkNormalWest 6
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_0334:
    WalkNormalEast
    EndMovement

    .balign 4, 0
_033C:
    WalkNormalWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0348:
    WalkNormalNorth 2
    WalkNormalEast 3
    WalkNormalNorth 2
    WalkNormalEast 7
    EndMovement

_035C:
    ApplyMovement 8, _0390
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement 8, _039C
    WaitMovement
    Return

_0376:
    ApplyMovement LOCALID_PLAYER, _03A4
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ApplyMovement LOCALID_PLAYER, _039C
    WaitMovement
    Return

    .balign 4, 0
_0390:
    FaceSouth
    Delay15
    EndMovement

    .balign 4, 0
_039C:
    SetInvisible
    EndMovement

    .balign 4, 0
_03A4:
    WalkNormalSouth
    Delay15
    EndMovement
