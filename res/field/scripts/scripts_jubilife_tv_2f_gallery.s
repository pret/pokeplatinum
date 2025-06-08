#include "macros/scrcmd.inc"
#include "res/text/bank/jubilife_tv_2f_gallery.h"

    .data

    ScriptEntry _003A
    ScriptEntry _03CC
    ScriptEntry _0409
    ScriptEntry _0446
    ScriptEntry _0483
    ScriptEntry _04C0
    ScriptEntry _04FD
    ScriptEntry _053A
    ScriptEntry _0577
    ScriptEntry _05B4
    ScriptEntry _05F1
    ScriptEntry _062E
    ScriptEntry _0676
    ScriptEntry _0689
    ScriptEntryEnd

_003A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_0x8007, 0
    CallIfUnset FLAG_UNK_0x0088, _006F
    GoToIfEq VAR_MAP_LOCAL_1, 0, _0077
    GoToIfEq VAR_MAP_LOCAL_1, 1, _0080
    End

_006F:
    SetVar VAR_0x8007, 1
    Return

_0077:
    Message 1
    GoTo _00B5

_0080:
    Message 11
    GoTo _00B5

_0089:
    Message 3
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00AC
    GoToIfEq VAR_RESULT, MENU_NO, _00F5
    End

_00AC:
    Message 6
    GoTo _00D5

_00B5:
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0089
    GoToIfEq VAR_RESULT, MENU_NO, _02B3
    End

_00D5:
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00F5
    GoToIfEq VAR_RESULT, MENU_NO, _02B3
    End

_00F5:
    GetPartyCount VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0115
    GoToIfNe VAR_RESULT, 1, _0121
    End

_0115:
    SetVar VAR_MAP_LOCAL_2, 0
    GoTo _016C

_0121:
    Message 4
    CloseMessage
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_191
    GetSelectedPartySlot VAR_MAP_LOCAL_2
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, 0xFF, _02B3
    GetPartyMonSpecies VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _02BE
    GoTo _016C

_016C:
    Message 5
    CloseMessage
    GetPlayerDir VAR_0x8006
    GoToIfEq VAR_0x8006, 0, _019E
    GoToIfEq VAR_0x8006, 2, _01B8
    GoToIfEq VAR_0x8006, 3, _01D2
    End

_019E:
    ApplyMovement 0, _0374
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0340
    WaitMovement
    GoTo _01EC

_01B8:
    ApplyMovement 0, _0380
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0348
    WaitMovement
    GoTo _01EC

_01D2:
    ApplyMovement 0, _038C
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0354
    WaitMovement
    GoTo _01EC

_01EC:
    SetFlag FLAG_UNK_0x0088
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A6 VAR_MAP_LOCAL_2, VAR_0x8005, VAR_0x8007
    ReturnToField
    ApplyMovement LOCALID_PLAYER, _0360
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_0x8006, 0, _0245
    GoToIfEq VAR_0x8006, 2, _025F
    GoToIfEq VAR_0x8006, 3, _0279
    End

_0245:
    ApplyMovement LOCALID_PLAYER, _0368
    WaitMovement
    ApplyMovement 0, _0398
    WaitMovement
    GoTo _0293

_025F:
    ApplyMovement LOCALID_PLAYER, _0368
    WaitMovement
    ApplyMovement 0, _03A4
    WaitMovement
    GoTo _0293

_0279:
    ApplyMovement LOCALID_PLAYER, _0368
    WaitMovement
    ApplyMovement 0, _03B0
    WaitMovement
    GoTo _0293

_0293:
    GoToIfEq VAR_0x8005, 0, _0335
    SetVar VAR_MAP_LOCAL_1, 1
    Message 7
    WaitABXPadPress
    CloseMessage
    GoTo _02C7

_02B3:
    Message 2
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02BE:
    Message 13
    GoTo _0121

_02C7:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_243 0, VAR_RESULT, VAR_0x8004
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 0, _0328
    ScrCmd_130 VAR_0x8004
    IncrementGameRecord RECORD_UNK_054
    ScrCmd_316
    ScrCmd_245 0, VAR_0x8004
    Message 8
    ApplyMovement 0, _03BC
    WaitMovement
    Message 14
    WaitABXPadPress
    CloseMessage
    ApplyMovement 0, _03C4
    WaitMovement
    ReleaseAll
    End

_0328:
    Message 9
    WaitABXPadPress
    CloseMessage
    GoTo _02C7

_0335:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_0340:
    WalkSlowNorth 2
    EndMovement

    .balign 4, 0
_0348:
    WalkSlowWest
    WalkSlowNorth
    EndMovement

    .balign 4, 0
_0354:
    WalkSlowEast
    WalkSlowNorth
    EndMovement

    .balign 4, 0
_0360:
    FaceSouth
    EndMovement

    .balign 4, 0
_0368:
    WalkSlowSouth 2
    FaceNorth
    EndMovement

    .balign 4, 0
_0374:
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
_0380:
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
_038C:
    WalkNormalEast
    FaceWest
    EndMovement

    .balign 4, 0
_0398:
    WalkNormalEast
    FaceSouth
    EndMovement

    .balign 4, 0
_03A4:
    WalkNormalEast
    FaceSouth
    EndMovement

    .balign 4, 0
_03B0:
    WalkNormalWest
    FaceSouth
    EndMovement

    .balign 4, 0
_03BC:
    FaceEast
    EndMovement

    .balign 4, 0
_03C4:
    FaceSouth
    EndMovement

_03CC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 0, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0409:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 1, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 1, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0446:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 2, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0483:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 3, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 3, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_04C0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 4, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 4, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_04FD:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 5, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 5, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_053A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 6, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 6, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0577:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 7, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 7, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_05B4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 8, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 8, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_05F1:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 9, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 9, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_062E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ScrCmd_12E 10, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _066B
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_0A7 10, VAR_RESULT
    ReturnToField
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_066B:
    Message 15
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0676:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 16
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0689:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 17
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
