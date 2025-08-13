#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower_multi_battle_room.h"


    ScriptEntry _0012
    ScriptEntry _0074
    ScriptEntry _0156
    ScriptEntry _0181
    ScriptEntryEnd

_0012:
    GoToIfEq VAR_UNK_0x40DE, 0, _0054
    SetFlag FLAG_UNK_0x01EA
    SetFlag FLAG_UNK_0x01EB
    ScrCmd_207 VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 1, _0056
    ScrCmd_1DD 55, 0, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    ScrCmd_1DD 55, 1, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
_0054:
    End

_0056:
    ScrCmd_1DD 55, 0, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_1, VAR_MAP_LOCAL_0
    ScrCmd_1DD 55, 1, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
    End

_0074:
    CallIfNe VAR_UNK_0x40DE, 0, _0090
    GoToIfEq VAR_UNK_0x40DE, 3, _009E
_008E:
    End

_0090:
    HideObject LOCALID_PLAYER
    ScrCmd_06B 8, 0, 0
    Return

_009E:
    SetPosition 2, 5, 0, 5, 3
    SetPosition 3, 5, 0, 6, 3
    GoTo _008E
    End

_00BE:
    Message 2
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    Return

_00CB:
    ScrCmd_1DD 43, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 3, _0114
    WaitTime 30, VAR_RESULT
    SetVar VAR_UNK_0x40D8, 1
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 7, 6, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0114:
    WaitTime 30, VAR_RESULT
    SetVar VAR_UNK_0x40D8, 1
    ScrCmd_136
    ScrCmd_135 6
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    ScrCmd_136
    ScrCmd_135 8
    ScrCmd_150
    Warp MAP_HEADER_BATTLE_TOWER, 0, 7, 6, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0156:
    LockAll
    SetVar VAR_UNK_0x40DE, 3
    Call _048D
    ScrCmd_1DD 43, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 3, _039E
    GoTo _02B0
    End

_0181:
    LockAll
    SetVar VAR_UNK_0x40DE, 3
    Call _048D
    Call _04A1
    GoTo _02E8
    End

_019D:
    ScrCmd_1DD 40, 0, 0
    Call _04C5
    Call _0529
    ScrCmd_1FE 0
    WaitABPress
    CloseMessage
    Call _0535
    ScrCmd_1FE 1
    WaitABPress
    CloseMessage
    Call _0505
    ScrCmd_1DD 42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    Return

_01DF:
    ScrCmd_1DD 40, 0, 0
    Call _04C5
    Call _0529
    ScrCmd_1FE 0
    WaitTime 30, VAR_RESULT
    CloseMessage
    Call _0535
    ScrCmd_1FE 1
    WaitTime 30, VAR_RESULT
    CloseMessage
    Call _0505
    ScrCmd_136
    ScrCmd_135 4
    ScrCmd_1DD 42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    Return

_022F:
    ScrCmd_1DD 37, 0, 0
    SetVar VAR_MAP_LOCAL_0, 0
    GoTo _00CB
    End

_0245:
    ScrCmd_1DD 38, 0, 0
    SetVar VAR_MAP_LOCAL_0, 1
    GoTo _00CB
    End

_025B:
    SetVar VAR_UNK_0x40D8, 2
    ScrCmd_1DD 39, 0, 0
    ScrCmd_1DC
    Message 0
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_1DD 2, 0, 0
    End

_0296:
    GoTo _022F
    End

_029E:
    ScrCmd_1DD 34, 0, VAR_RESULT
    ScrCmd_1DD 35, 0, VAR_RESULT
    Return

_02B0:
    Call _019D
    GoToIfEq VAR_0x8004, FALSE, _022F
    Call _029E
    GoToIfEq VAR_RESULT, 1, _0245
    Call _0541
    Call _0565
    Call _00BE
_02E8:
    ScrCmd_1DD 33, 0, VAR_0x8004
    BufferNumber 0, VAR_0x8004
    Message 3
    InitGlobalTextListMenu 31, 11, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry 146, 0
    AddListMenuEntry 147, 1
    AddListMenuEntry 148, 2
    ShowListMenu
    CloseMessage
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0354
    GoToIfEq VAR_0x8008, 1, _0362
    GoToIfEq VAR_0x8008, 2, _0380
    GoTo _0354
    End

_0354:
    Call _0589
    GoTo _02B0
    End

_0362:
    Message 4
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, _025B
    GoTo _02E8
    End

_0380:
    Message 5
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, _0296
    GoTo _02E8
    End

_039E:
    Call _01DF
    GoToIfEq VAR_0x8004, FALSE, _022F
    Call _029E
    GoToIfEq VAR_RESULT, 1, _0245
    Call _0541
    Call _0565
    Call _00BE
_03D6:
    ScrCmd_1DD 33, 0, VAR_0x8004
    BufferNumber 0, VAR_0x8004
    Message 3
    InitGlobalTextListMenu 31, 13, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry 146, 0
    AddListMenuEntry 148, 1
    ShowListMenu
    CloseMessage
    SetVar VAR_MAP_LOCAL_0, 0
    GoToIfEq VAR_RESULT, 1, _0452
_0418:
    Message 12
    ScrCmd_136
    ScrCmd_135 5
    ScrCmd_1E1 2, VAR_MAP_LOCAL_0, VAR_RESULT
    ScrCmd_1E2 2, VAR_MAP_LOCAL_0
    CloseMessage
    SetVar VAR_0x8008, VAR_MAP_LOCAL_0
    GoToIfEq VAR_0x8008, 1, _0474
    Call _0589
    GoTo _039E
    End

_0452:
    Message 5
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _03D6
    SetVar VAR_MAP_LOCAL_0, 1
    GoTo _0418
    End

_0474:
    Message 11
    WaitTime 30, VAR_RESULT
    ScrCmd_136
    ScrCmd_135 7
    CloseMessage
    GoTo _0296
    End

_048D:
    ApplyMovement 2, _05B0
    ApplyMovement 3, _05C4
    WaitMovement
    Return

_04A1:
    ApplyMovement 0, _0644
    ApplyMovement 1, _0644
    ApplyMovement 2, _0664
    ApplyMovement 3, _0664
    WaitMovement
    Return

_04C5:
    ScrCmd_1DD 41, 0, VAR_RESULT
    SetVar VAR_OBJ_GFX_ID_2, VAR_RESULT
    ScrCmd_1DD 41, 1, VAR_RESULT
    SetVar VAR_OBJ_GFX_ID_3, VAR_RESULT
    ClearFlag FLAG_UNK_0x01EA
    ClearFlag FLAG_UNK_0x01EB
    AddObject 5
    AddObject 4
    ApplyMovement 5, _05D8
    ApplyMovement 4, _05EC
    WaitMovement
    Return

_0505:
    ApplyMovement 2, _0600
    ApplyMovement 3, _0600
    ApplyMovement 5, _0608
    ApplyMovement 4, _0608
    WaitMovement
    Return

_0529:
    ApplyMovement 5, _0610
    WaitMovement
    Return

_0535:
    ApplyMovement 4, _0610
    WaitMovement
    Return

_0541:
    ApplyMovement 5, _0618
    ApplyMovement 4, _0628
    WaitMovement
    SetFlag FLAG_UNK_0x01EA
    SetFlag FLAG_UNK_0x01EB
    RemoveObject 5
    RemoveObject 4
    Return

_0565:
    ApplyMovement 2, _0638
    ApplyMovement 3, _0638
    ApplyMovement 0, _0644
    ApplyMovement 1, _0644
    WaitMovement
    Return

_0589:
    ApplyMovement 2, _064C
    ApplyMovement 3, _064C
    ApplyMovement 0, _0654
    ApplyMovement 1, _0654
    WaitMovement
    Return

    .balign 4, 0
_05B0:
    WalkNormalNorth
    WalkNormalWest 3
    WalkNormalNorth 3
    FaceEast
    EndMovement

    .balign 4, 0
_05C4:
    WalkNormalNorth
    WalkNormalWest 4
    WalkNormalNorth 2
    FaceEast
    EndMovement

    .balign 4, 0
_05D8:
    WalkNormalSouth
    WalkNormalEast 3
    WalkNormalSouth 3
    FaceWest
    EndMovement

    .balign 4, 0
_05EC:
    WalkNormalSouth
    WalkNormalEast 4
    WalkNormalSouth 2
    FaceWest
    EndMovement

    .balign 4, 0
_0600:
    WalkNormalEast
    EndMovement

    .balign 4, 0
_0608:
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0610:
    WalkOnSpotSlowWest
    EndMovement

    .balign 4, 0
_0618:
    WalkNormalNorth 3
    WalkNormalWest 2
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0628:
    WalkNormalNorth 2
    WalkNormalWest 3
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0638:
    WalkNormalWest
    FaceWest
    EndMovement

    .balign 4, 0
_0644:
    WalkNormalEast
    EndMovement

    .balign 4, 0
_064C:
    FaceEast
    EndMovement

    .balign 4, 0
_0654:
    FaceWest
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
_0664:
    FaceWest
    EndMovement
