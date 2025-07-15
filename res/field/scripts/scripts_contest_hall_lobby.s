#include "macros/scrcmd.inc"
#include "res/text/bank/contest_hall_lobby.h"


    ScriptEntry _002E
    ScriptEntry _01EC
    ScriptEntry _0229
    ScriptEntry _0266
    ScriptEntry _02A3
    ScriptEntry _02E0
    ScriptEntry _0328
    ScriptEntry _033B
    ScriptEntry _034E
    ScriptEntry _0361
    ScriptEntry _04A4
    ScriptEntryEnd

_002E:
    LockAll
    ApplyMovement 6, _0140
    WaitMovement
    Message 0
    CloseMessage
    ApplyMovement 5, _0174
    WaitMovement
    BufferPlayerName 0
    Message 1
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _0138
    WaitMovement
    ApplyMovement 6, _014C
    WaitMovement
    Message 2
    BufferPlayerName 0
    Message 3
    Message 4
    SetVar VAR_0x8004, ACCESSORY_GLITTER_POWDER
    SetVar VAR_0x8005, 1
    CallCommonScript 0x7FF
    Message 5
    ApplyMovement 6, _0158
    ApplyMovement 5, _017C
    WaitMovement
    Message 6
    CloseMessage
    ApplyMovement 6, _0160
    ApplyMovement LOCALID_PLAYER, _01DC
    WaitMovement
    RemoveObject 6
    SetVar VAR_UNK_0x40F7, 1
    ApplyMovement 5, _0190
    ApplyMovement LOCALID_PLAYER, _01E4
    WaitMovement
    BufferPlayerName 0
    Message 7
    CloseMessage
    PlaySound SEQ_FANFA4
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _00EE
    GoTo _00F9
    End

_00EE:
    Message 8
    GoTo _0104
    End

_00F9:
    Message 9
    GoTo _0104
    End

_0104:
    WaitSound
    Message 10
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement LOCALID_PLAYER, _01C8
    ApplyMovement 5, _01B0
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 5
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_CONTEST_HALL_VISITED
    ReleaseAll
    End

    .balign 4, 0
_0138:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_0140:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_014C:
    WalkOnSpotFastWest
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0158:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0160:
    WalkNormalEast 3
    WalkNormalNorth 3
    WalkNormalEast 3
    WalkNormalNorth 6
    EndMovement

    .balign 4, 0
_0174:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_017C:
    Delay4
    WalkOnSpotNormalEast
    EndMovement

    .byte 35
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0190:
    WalkOnSpotNormalSouth
    EndMovement

    .byte 14
    .byte 0
    .byte 8
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 12
    .byte 0
    .byte 6
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0
    .byte 15
    .byte 0
    .byte 8
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_01B0:
    WalkNormalWest
    WalkNormalSouth 2
    WalkNormalEast
    WalkNormalSouth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_01C8:
    Delay4
    WalkOnSpotNormalWest
    Delay8
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_01DC:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_01E4:
    WalkOnSpotNormalNorth
    EndMovement

_01EC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12F 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _031D
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A8 0, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0229:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12F 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _031D
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A8 1, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0266:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12F 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _031D
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A8 2, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_02A3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12F 3, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _031D
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A8 3, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_02E0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12F 4, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _031D
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A8 4, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_031D:
    Message 24
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0328:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 21
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_033B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 22
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_034E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 23
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0361:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_UNK_0x0159, _03D3
    GoToIfUnset FLAG_UNK_0x015A, _038A
_037F:
    Message 18
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_038A:
    CheckItem ITEM_POFFIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _037F
    Message 13
    ScrCmd_28A VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _03C8
    Call _0437
    SetFlag FLAG_UNK_0x015A
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03C8:
    Message 19
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_03D3:
    SetFlag FLAG_UNK_0x0159
    CheckItem ITEM_POFFIN_CASE, 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0428
    Message 13
    ScrCmd_28A VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0419
    Call _0437
    SetFlag FLAG_UNK_0x015A
    Message 16
    CloseMessage
    Call _0458
    ReleaseAll
    End

_0419:
    Message 20
    CloseMessage
    Call _0458
    ReleaseAll
    End

_0428:
    Message 12
    CloseMessage
    Call _0458
    ReleaseAll
    End

_0437:
    ScrCmd_289 VAR_RESULT, 60, 30, 30, 30, 30, 40
    PlaySound SEQ_FANFA4
    BufferPlayerName 0
    Message 14
    WaitSound
    Message 15
    Return

_0458:
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 2, _0475
    ApplyMovement 9, _0484
    WaitMovement
    Return

_0475:
    ApplyMovement 9, _0490
    WaitMovement
    Return

    .balign 4, 0
_0484:
    WalkNormalEast 8
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
_0490:
    WalkNormalSouth
    WalkNormalEast 8
    WalkNormalNorth
    WalkOnSpotFastSouth
    EndMovement

_04A4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    WaitTime 30, VAR_RESULT
    GetPlayerDir VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _052B
    GoToIfEq VAR_RESULT, 1, _053D
    GoToIfEq VAR_RESULT, 2, _054F
    GoToIfEq VAR_RESULT, 3, _0561
    End

_04EC:
    Message 11
    CloseMessage
    GetPlayerDir VAR_0x8004
    GoToIfEq VAR_0x8004, 1, _0573
    GoToIfEq VAR_0x8004, 0, _058D
    GoToIfEq VAR_0x8004, 2, _05A7
    GoToIfEq VAR_0x8004, 3, _05B9
    End

_052B:
    ApplyMovement 10, _0624
    WaitMovement
    GoTo _04EC
    End

_053D:
    ApplyMovement 10, _0638
    WaitMovement
    GoTo _04EC
    End

_054F:
    ApplyMovement 10, _064C
    WaitMovement
    GoTo _04EC
    End

_0561:
    ApplyMovement 10, _0660
    WaitMovement
    GoTo _04EC
    End

_0573:
    ApplyMovement 10, _05E8
    ApplyMovement LOCALID_PLAYER, _0604
    WaitMovement
    GoTo _05D3
    End

_058D:
    ApplyMovement 10, _05E8
    ApplyMovement LOCALID_PLAYER, _0604
    WaitMovement
    GoTo _05D3
    End

_05A7:
    ApplyMovement 10, _05E8
    WaitMovement
    GoTo _05D3
    End

_05B9:
    ApplyMovement 10, _05F4
    ApplyMovement LOCALID_PLAYER, _0610
    WaitMovement
    GoTo _05D3
    End

_05D3:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 10
    WaitFanfare SEQ_SE_DP_KAIDAN2
    SetFlag FLAG_UNK_0x018D
    ReleaseAll
    End

    .balign 4, 0
_05E8:
    WalkNormalWest 6
    WalkNormalSouth 4
    EndMovement

    .balign 4, 0
_05F4:
    WalkNormalNorth
    WalkNormalWest 6
    WalkNormalSouth 5
    EndMovement

    .balign 4, 0
_0604:
    Delay8
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0610:
    Delay8 2
    WalkOnSpotNormalNorth
    Delay4
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0624:
    FaceWest 4
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    EndMovement

    .balign 4, 0
_0638:
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    FaceNorth 4
    EndMovement

    .balign 4, 0
_064C:
    FaceSouth 4
    FaceWest 4
    FaceNorth 4
    FaceEast 4
    EndMovement

    .balign 4, 0
_0660:
    FaceNorth 4
    FaceEast 4
    FaceSouth 4
    FaceWest 4
    EndMovement
