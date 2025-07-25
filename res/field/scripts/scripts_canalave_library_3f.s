#include "macros/scrcmd.inc"
#include "res/text/bank/canalave_library_3f.h"


    ScriptEntry _0032
    ScriptEntry _0062
    ScriptEntry _03E8
    ScriptEntry _0411
    ScriptEntry _043A
    ScriptEntry _047C
    ScriptEntry _04BE
    ScriptEntry _0500
    ScriptEntry _056A
    ScriptEntry _05D4
    ScriptEntry _0616
    ScriptEntry _06A2
    ScriptEntryEnd

_0032:
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _0052
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _005A
    End

_0052:
    SetVar VAR_OBJ_GFX_ID_0, 97
    End

_005A:
    SetVar VAR_OBJ_GFX_ID_0, 0
    End

_0062:
    LockAll
    BufferRivalName 0
    BufferPlayerName 1
    Message 0
    CloseMessage
    ApplyMovement 4, _0364
    ApplyMovement LOCALID_PLAYER, _0310
    WaitMovement
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ScrCmd_066 VAR_0x8004, VAR_0x8005
    ApplyMovement 241, _0340
    WaitMovement
    WaitTime 30, VAR_RESULT
    BufferRivalName 0
    BufferPlayerName 1
    Message 1
    CloseMessage
    ApplyMovement 4, _0350
    WaitMovement
    BufferPlayerName 0
    Message 2
    BufferRivalName 0
    Message 3
    CloseMessage
    ApplyMovement 4, _035C
    WaitMovement
    WaitTime 10, VAR_RESULT
    BufferPlayerName 0
    Message 4
    CloseMessage
    ApplyMovement 2, _02C8
    WaitMovement
    Message 5
    CloseMessage
    ApplyMovement 2, _02D4
    WaitMovement
    Message 6
    BufferRivalName 0
    Message 7
    Message 8
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0116
    GoTo _0124
    End

_0116:
    BufferPlayerName 0
    Message 9
    GoTo _0132
    End

_0124:
    BufferPlayerName 0
    Message 10
    GoTo _0132
    End

_0132:
    Message 11
    CloseMessage
    ApplyMovement 2, _02E0
    ApplyMovement 3, _03D8
    WaitMovement
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0162
    GoTo _0173
    End

_0162:
    Message 12
    BufferCounterpartName 0
    Message 13
    GoTo _0184
    End

_0173:
    Message 14
    BufferCounterpartName 0
    Message 15
    GoTo _0184
    End

_0184:
    CloseMessage
    ApplyMovement 2, _02E8
    ApplyMovement 3, _03E0
    WaitMovement
    BufferRivalName 0
    Message 16
    CloseMessage
    ApplyMovement 4, _039C
    WaitMovement
    Message 17
    CloseMessage
    ApplyMovement 4, _03A4
    WaitMovement
    BufferPlayerName 0
    Message 18
    WaitFanfare SEQ_SE_CONFIRM
    MessageInstant 19
    ScrCmd_29F 1
    Message 20
    BufferRivalName 0
    Message 21
    CloseMessage
    ApplyMovement 4, _03AC
    ApplyMovement LOCALID_PLAYER, _0330
    WaitMovement
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_067
    ScrCmd_310
    ReturnToField
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ScrCmd_066 VAR_0x8004, VAR_0x8005
    ApplyMovement 241, _0340
    WaitMovement
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    Message 22
    CloseMessage
    WaitTime 15, VAR_RESULT
    ApplyMovement 4, _03B4
    WaitMovement
    BufferRivalName 0
    Message 23
    ApplyMovement LOCALID_PLAYER, _0338
    WaitMovement
    Message 24
    CloseMessage
    ApplyMovement 3, _03BC
    ApplyMovement 4, _0388
    ApplyMovement 2, _02F0
    ApplyMovement 241, _0348
    WaitMovement
    RemoveObject 4
    RemoveObject 3
    ScrCmd_067
    ApplyMovement LOCALID_PLAYER, _02C0
    WaitMovement
    Message 25
    CloseMessage
    StopFanfare SEQ_SE_CONFIRM
    ApplyMovement 2, _0308
    WaitMovement
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject 2
    StopFanfare SEQ_SE_DP_KAIDAN2
    SetVar VAR_UNK_0x4078, 4
    SetVar VAR_UNK_0x40B2, 2
    SetFlag FLAG_UNK_0x00A8
    SetFlag FLAG_UNK_0x01AE
    ClearFlag FLAG_UNK_0x01B3
    ClearFlag FLAG_UNK_0x01B5
    ClearFlag FLAG_UNK_0x01B2
    ReleaseAll
    End

    .balign 4, 0
_02C0:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_02C8:
    WalkSlowEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_02D4:
    WalkNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_02E0:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_02E8:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_02F0:
    WalkNormalEast
    WalkNormalNorth 4
    WalkNormalWest 5
    WalkNormalNorth 3
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0308:
    WalkNormalEast
    EndMovement

    .balign 4, 0
_0310:
    Delay8 3
    WalkOnSpotNormalSouth
    WalkNormalSouth 2
    WalkNormalEast
    WalkNormalSouth
    WalkNormalEast 2
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0330:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0338:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_0340:
    WalkSlowEast 3
    EndMovement

    .balign 4, 0
_0348:
    WalkSlowWest 3
    EndMovement

    .balign 4, 0
_0350:
    WalkFastNorth
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_035C:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0364:
    WalkNormalSouth
    WalkNormalEast 2
    WalkOnSpotNormalNorth
    WalkNormalSouth
    WalkNormalEast
    WalkNormalSouth
    WalkNormalEast 3
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0388:
    WalkFastWest 4
    WalkFastNorth 3
    WalkFastEast
    SetInvisible
    EndMovement

    .balign 4, 0
_039C:
    WalkOnSpotFastEast
    EndMovement

    .balign 4, 0
_03A4:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_03AC:
    WalkFastNorth
    EndMovement

    .balign 4, 0
_03B4:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
_03BC:
    WalkNormalWest
    WalkNormalNorth 5
    WalkNormalWest 2
    WalkNormalNorth 2
    WalkNormalEast
    SetInvisible
    EndMovement

    .balign 4, 0
_03D8:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_03E0:
    WalkOnSpotNormalNorth
    EndMovement

_03E8:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00A8, _0406
    Message 26
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0406:
    Message 27
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0411:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x00A8, _042F
    Message 28
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_042F:
    Message 29
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_043A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 30
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0471
    GoToIfEq VAR_RESULT, MENU_NO, _0463
    End

_0463:
    BufferPlayerName 0
    Message 31
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0471:
    Message 32
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_047C:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 33
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _04B3
    GoToIfEq VAR_RESULT, MENU_NO, _04A5
    End

_04A5:
    BufferPlayerName 0
    Message 34
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04B3:
    Message 35
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04BE:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 36
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _04F5
    GoToIfEq VAR_RESULT, MENU_NO, _04E7
    End

_04E7:
    BufferPlayerName 0
    Message 37
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_04F5:
    Message 38
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0500:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 39
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0537
    GoToIfEq VAR_RESULT, MENU_NO, _0529
    End

_0529:
    BufferPlayerName 0
    Message 40
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0537:
    Message 41
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0529
    Message 42
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0529
    Message 43
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_056A:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 44
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _05A1
    GoToIfEq VAR_RESULT, MENU_NO, _0593
    End

_0593:
    BufferPlayerName 0
    Message 45
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05A1:
    Message 46
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0593
    Message 47
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0593
    Message 48
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_05D4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 49
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _060B
    GoToIfEq VAR_RESULT, MENU_NO, _05FD
    End

_05FD:
    BufferPlayerName 0
    Message 50
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_060B:
    Message 51
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0616:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 52
    Message 53
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntry 0x103, 0
    AddMenuEntry 0x104, 1
    AddMenuEntry 0x105, 2
    AddMenuEntry 0x106, 3
    ShowMenu
    GoToIfEq VAR_RESULT, 0, _0673
    GoToIfEq VAR_RESULT, 1, _067E
    GoToIfEq VAR_RESULT, 2, _0689
    GoTo _0694
    End

_0673:
    Message 55
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_067E:
    Message 56
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0689:
    Message 57
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0694:
    BufferPlayerName 0
    Message 54
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_06A2:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    Message 58
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
