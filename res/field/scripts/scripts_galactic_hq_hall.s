#include "macros/scrcmd.inc"
#include "res/text/bank/galactic_hq_hall.h"


    ScriptEntry _0006
    ScriptEntryEnd

_0006:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ApplyMovement 3, _0234
    WaitMovement
    Message 0
    CloseMessage
    CallIfEq VAR_0x8005, 12, _01AD
    CallIfEq VAR_0x8005, 13, _01C1
    AddFreeCamera VAR_0x8004, VAR_0x8005
    FadeScreen 6, 3, 0, 0
    ApplyMovement 241, _01F8
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    WaitTime 15, VAR_RESULT
    ClearFlag FLAG_UNK_0x0253
    AddObject 2
    ApplyMovement 2, _01D8
    WaitMovement
    PlayFanfare SEQ_SE_DP_DENDOU
    WaitTime 30, VAR_RESULT
    Message 1
    CloseMessage
    PlayFanfare SEQ_SE_DP_DENDOU
    WaitTime 30, VAR_RESULT
    Message 2
    CloseMessage
    WaitTime 30, VAR_RESULT
    Message 3
    CloseMessage
    PlayFanfare SEQ_SE_DP_DENDOU
    WaitTime 15, VAR_RESULT
    Message 4
    Message 5
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement 2, _01E8
    WaitMovement
    RemoveObject 2
    FadeScreen 6, 3, 0, 0
    WaitFadeScreen
    ApplyMovement 241, _0204
    WaitMovement
    ScrCmd_067
    RemoveObject 0
    RemoveObject 1
    RemoveObject 4
    RemoveObject 5
    RemoveObject 6
    RemoveObject 7
    RemoveObject 8
    RemoveObject 9
    RemoveObject 10
    RemoveObject 11
    RemoveObject 12
    RemoveObject 13
    RemoveObject 14
    RemoveObject 15
    RemoveObject 16
    RemoveObject 17
    RemoveObject 18
    RemoveObject 19
    RemoveObject 20
    RemoveObject 21
    RemoveObject 22
    RemoveObject 23
    RemoveObject 24
    RemoveObject 25
    RemoveObject 26
    RemoveObject 27
    RemoveObject 28
    RemoveObject 29
    RemoveObject 30
    RemoveObject 31
    RemoveObject 32
    RemoveObject 33
    RemoveObject 34
    RemoveObject 35
    ApplyMovement 3, _0248
    ApplyMovement LOCALID_PLAYER, _0224
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    WaitTime 15, VAR_RESULT
    Message 6
    CloseMessage
    ApplyMovement 3, _0250
    ApplyMovement LOCALID_PLAYER, _022C
    WaitMovement
    RemoveObject 3
    SetVar VAR_UNK_0x408E, 1
    ReleaseAll
    End

_01AD:
    ApplyMovement 3, _0240
    ApplyMovement LOCALID_PLAYER, _0210
    WaitMovement
    Return

_01C1:
    ApplyMovement 3, _0240
    ApplyMovement LOCALID_PLAYER, _021C
    WaitMovement
    Return

    .balign 4, 0
_01D8:
    WalkNormalSouth 3
    WalkNormalWest 4
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_01E8:
    WalkNormalNorth
    WalkNormalEast 4
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
_01F8:
    WalkNormalWest 6
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
_0204:
    WalkNormalSouth 6
    WalkNormalEast 6
    EndMovement

    .balign 4, 0
_0210:
    WalkNormalSouth
    WalkNormalWest
    EndMovement

    .balign 4, 0
_021C:
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0224:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_022C:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0234:
    WalkOnSpotFastEast
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_0240:
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
_0248:
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
_0250:
    WalkFastWest
    WalkOnSpotFastNorth
    Delay8
    WalkOnSpotFastSouth
    Delay4
    WalkOnSpotFastWest
    Delay8
    WalkFastWest 9
    EndMovement
