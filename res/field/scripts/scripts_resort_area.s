#include "macros/scrcmd.inc"
#include "res/text/bank/resort_area.h"

    .data

    ScriptEntry _00DA
    ScriptEntry _00ED
    ScriptEntry _0100
    ScriptEntry _0130
    ScriptEntry _0143
    ScriptEntry _015A
    ScriptEntry _0171
    ScriptEntry _0184
    ScriptEntry _03D4
    ScriptEntry _043C
    ScriptEntry _049C
    ScriptEntry _04FC
    ScriptEntry _055C
    ScriptEntry _003E
    ScriptEntry _05BC
    ScriptEntryEnd

_003E:
    SetFlag FLAG_UNK_0x02AA
    SetFlag FLAG_UNK_0x02AD
    SetFlag FLAG_UNK_0x02AF
    SetFlag FLAG_UNK_0x02B2
    SetFlag FLAG_UNK_0x02B5
    GoToIfEq VAR_RESORT_VILLA_VISITOR, 0xFF, _00BA
    GoToIfEq VAR_UNK_0x40C8, 0, _00BA
    GoToIfSet FLAG_VILLA_VISITOR_INSIDE, _00BA
    CallIfEq VAR_RESORT_VILLA_VISITOR, 2, _00BC
    CallIfEq VAR_RESORT_VILLA_VISITOR, 4, _00C2
    CallIfEq VAR_RESORT_VILLA_VISITOR, 5, _00C8
    CallIfEq VAR_RESORT_VILLA_VISITOR, 7, _00CE
    CallIfEq VAR_RESORT_VILLA_VISITOR, 9, _00D4
    End

_00BA:
    End

_00BC:
    ClearFlag FLAG_UNK_0x02AA
    Return

_00C2:
    ClearFlag FLAG_UNK_0x02AD
    Return

_00C8:
    ClearFlag FLAG_UNK_0x02AF
    Return

_00CE:
    ClearFlag FLAG_UNK_0x02B2
    Return

_00D4:
    ClearFlag FLAG_UNK_0x02B5
    Return

_00DA:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_00ED:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0100:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CallIfUnset FLAG_UNK_0x00FA, _0126
    CallIfSet FLAG_UNK_0x00FA, _012B
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0126:
    Message 2
    Return

_012B:
    Message 3
    Return

_0130:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0143:
    ShowMapSign 25
    End

_015A:
    ShowLandmarkSign 26
    End

_0171:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0184:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 0x1D8, _0266
    CallIfEq VAR_0x8005, 0x1D9, _0272
    CallIfEq VAR_0x8005, 0x1DA, _0274
    Message 6
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _02BC
    ScrCmd_30C
    Message 7
    CloseMessage
    CallIfEq VAR_0x8005, 0x1D8, _0280
    CallIfEq VAR_0x8005, 0x1D9, _0294
    CallIfEq VAR_0x8005, 0x1DA, _02A8
    Message 9
    CloseMessage
    ApplyMovement 13, _0388
    WaitMovement
    ScrCmd_168 25, 14, 22, 21, 77
    ScrCmd_16B 77
    ScrCmd_169 77
    ApplyMovement 13, _0390
    ApplyMovement LOCALID_PLAYER, _03C0
    WaitMovement
    ScrCmd_16C 77
    ScrCmd_169 77
    ScrCmd_16A 77
    RemoveObject 13
    SetVar VAR_UNK_0x40C8, 1
    SetVar VAR_RESORT_VILLA_VISITOR, 0xFF
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 10, 6, 2
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0266:
    ApplyMovement 13, _0328
    WaitMovement
    Return

_0272:
    Return

_0274:
    ApplyMovement 13, _0334
    WaitMovement
    Return

_0280:
    ApplyMovement 13, _0358
    ApplyMovement LOCALID_PLAYER, _039C
    WaitMovement
    Return

_0294:
    ApplyMovement 13, _0368
    ApplyMovement LOCALID_PLAYER, _03A8
    WaitMovement
    Return

_02A8:
    ApplyMovement 13, _0378
    ApplyMovement LOCALID_PLAYER, _03B4
    WaitMovement
    Return

_02BC:
    Message 8
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8005, 0x1D8, _02F2
    CallIfEq VAR_0x8005, 0x1D9, _0306
    CallIfEq VAR_0x8005, 0x1DA, _0312
    ReleaseAll
    End

_02F2:
    ApplyMovement 13, _0340
    ApplyMovement LOCALID_PLAYER, _03CC
    WaitMovement
    Return

_0306:
    ApplyMovement LOCALID_PLAYER, _03CC
    WaitMovement
    Return

_0312:
    ApplyMovement 13, _034C
    ApplyMovement LOCALID_PLAYER, _03CC
    WaitMovement
    Return

    .balign 4, 0
_0328:
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0334:
    WalkNormalSouth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0340:
    WalkNormalSouth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_034C:
    WalkNormalNorth
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0358:
    WalkNormalEast 6
    WalkNormalNorth 2
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0368:
    WalkNormalEast 6
    WalkNormalNorth 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0378:
    WalkNormalEast 6
    WalkNormalNorth 4
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0388:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0390:
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
_039C:
    WalkNormalEast 7
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_03A8:
    WalkNormalEast 7
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_03B4:
    WalkNormalEast 7
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
_03C0:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_03CC:
    WalkNormalWest
    EndMovement

_03D4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 10
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0429
    Message 11
    CloseMessage
    SetFlag FLAG_UNK_0x02AA
    SetVar VAR_RESORT_VILLA_VISITOR, 2
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 11, 11, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0429:
    Message 12
    GoTo _0434
    End

_0434:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_043C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 13
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0491
    Message 14
    CloseMessage
    SetFlag FLAG_UNK_0x02AD
    SetVar VAR_RESORT_VILLA_VISITOR, 4
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 11, 11, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0491:
    Message 15
    GoTo _0434
    End

_049C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _04F1
    Message 17
    CloseMessage
    SetFlag FLAG_UNK_0x02AF
    SetVar VAR_RESORT_VILLA_VISITOR, 5
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 11, 11, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_04F1:
    Message 18
    GoTo _0434
    End

_04FC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 19
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0551
    Message 20
    CloseMessage
    SetFlag FLAG_UNK_0x02B2
    SetVar VAR_RESORT_VILLA_VISITOR, 7
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 11, 11, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_0551:
    Message 21
    GoTo _0434
    End

_055C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 22
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _05B1
    Message 23
    CloseMessage
    SetFlag FLAG_UNK_0x02B5
    SetVar VAR_RESORT_VILLA_VISITOR, 9
    SetFlag FLAG_VILLA_VISITOR_INSIDE
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_VILLA, 0, 11, 11, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    End

_05B1:
    Message 24
    GoTo _0434
    End

_05BC:
    ShowLandmarkSign 27
    End

    .byte 0
