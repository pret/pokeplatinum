#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower_battle_room.h"


    ScriptEntry _0016
    ScriptEntry _0101
    ScriptEntry _012C
    ScriptEntry _0058
    ScriptEntry _0037
    ScriptEntryEnd

_0016:
    GoToIfEq VAR_UNK_0x40D9, 0, _0035
    SetFlag FLAG_UNK_0x01CB
    ScrCmd_1DD 55, 0, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
_0035:
    End

_0037:
    ScrCmd_1B2 0xFF
    GoToIfEq VAR_UNK_0x40D9, 3, _004A
    End

_004A:
    ScrCmd_187 2, 5, 0, 6, 3
    End

_0058:
    SetVar VAR_UNK_0x40D9, 0
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Call _015D
    ReleaseAll
    End

_0070:
    Message 0
    PlaySound SEQ_ASA
    WaitSound
    HealParty
    Return

_007D:
    WaitTime 30, VAR_RESULT
    SetVar VAR_UNK_0x40D8, 1
    ScrCmd_1DD 43, 0, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 4, _00D9
    GoToIfEq VAR_0x8008, 5, _00D9
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 11, 6, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_00D9:
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 15, 6, 0
    FadeScreen 6, 1, 1, 0
    WaitFadeScreen
    ReleaseAll
    End

_0101:
    LockAll
    SetVar VAR_UNK_0x40D9, 3
    ScrCmd_1DD 100, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _007D
    Call _043C
    GoTo _0201
    End

_012C:
    LockAll
    SetVar VAR_UNK_0x40D9, 3
    ScrCmd_1DD 100, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _007D
    Call _043C
    Call _0448
    GoTo _02F7
    End

_015D:
    ScrCmd_1DD 40, 0, 0
    Call _045C
    ScrCmd_1FE 0
    WaitABPress
    CloseMessage
    Call _047E
    ScrCmd_1DD 42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    Return

_018C:
    ScrCmd_1DD 37, 0, 0
    GoTo _007D
    End

_019C:
    ScrCmd_1DD 38, 0, 0
    GoTo _007D
    End

_01AC:
    SetVar VAR_UNK_0x40D8, 2
    ScrCmd_1DD 39, 0, 0
    ScrCmd_1DC
    Message 4
    ScrCmd_18D
    ScrCmd_12D VAR_RESULT
    ScrCmd_18E
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    FadeScreen 6, 1, 0, 0
    WaitFadeScreen
    CloseMessage
    ScrCmd_1DD 2, 0, 0
    End

_01E7:
    GoTo _018C
    End

_01EF:
    ScrCmd_1DD 34, 0, VAR_RESULT
    ScrCmd_1DD 35, 0, VAR_RESULT
    Return

_0201:
    Call _015D
    GoToIfEq VAR_0x8004, FALSE, _018C
    Call _01EF
    GoToIfEq VAR_RESULT, 1, _019C
    Call _0492
    Call _04A6
    Call _0070
    GoTo _02F7
    End

_0241:
    ScrCmd_1DD 33, 0, VAR_0x8004
    BufferNumber 0, VAR_0x8004
    Message 1
    InitGlobalTextListMenu 31, 11, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry 146, 0
    AddListMenuEntry 147, 1
    AddListMenuEntry 148, 2
    ShowListMenu
    CloseMessage
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _02AD
    GoToIfEq VAR_0x8008, 1, _02BB
    GoToIfEq VAR_0x8008, 2, _02D9
    GoTo _02AD
    End

_02AD:
    Call _04BA
    GoTo _0201
    End

_02BB:
    Message 2
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, _01AC
    GoTo _0241
    End

_02D9:
    Message 3
    ShowYesNoMenu VAR_RESULT
    CloseMessage
    GoToIfEq VAR_RESULT, MENU_YES, _01E7
    GoTo _0241
    End

_02F7:
    ScrCmd_1DD 43, 0, VAR_RESULT
    GoToIfNe VAR_RESULT, 0, _0241
    ScrCmd_1DD 36, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 20, _0336
    GoToIfEq VAR_RESULT, 48, _0336
    GoTo _0241
    End

_0336:
    Message 14
    InitGlobalTextListMenu 31, 11, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry 146, 0
    AddListMenuEntry 147, 1
    AddListMenuEntry 148, 2
    ShowListMenu
    CloseMessage
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0395
    GoToIfEq VAR_0x8008, 1, _02BB
    GoToIfEq VAR_0x8008, 2, _02D9
    GoTo _0395
    End

_0395:
    Call _04BA
    ScrCmd_1DD 40, 0, 0
    Call _04CE
    ScrCmd_1DD 36, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 48, _041E
    BufferPlayerName 0
    BufferRivalName 1
    Message 15
_03C7:
    CloseMessage
    Call _047E
    ScrCmd_1DD 42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_0x8004, FALSE, _018C
    ScrCmd_1DD 36, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 48, _0429
    Message 17
    ScrCmd_1DD 44, 1, 0
_040E:
    CloseMessage
    Call _01EF
    GoTo _019C
    End

_041E:
    Message 16
    GoTo _03C7
    End

_0429:
    Message 18
    ScrCmd_1DD 44, 2, 0
    GoTo _040E
    End

_043C:
    ApplyMovement 2, _0504
    WaitMovement
    Return

_0448:
    ApplyMovement 0, _0580
    ApplyMovement 2, _05A0
    WaitMovement
    Return

_045C:
    ScrCmd_1DD 41, 0, VAR_RESULT
    SetVar VAR_OBJ_GFX_ID_1, VAR_RESULT
    ClearFlag FLAG_UNK_0x01CB
    AddObject 1
    ApplyMovement 1, _0524
    WaitMovement
    Return

_047E:
    ApplyMovement 2, _0540
    ApplyMovement 1, _0548
    WaitMovement
    Return

_0492:
    ApplyMovement 1, _0550
    WaitMovement
    SetFlag FLAG_UNK_0x01CB
    RemoveObject 1
    Return

_04A6:
    ApplyMovement 2, _0574
    ApplyMovement 0, _0580
    WaitMovement
    Return

_04BA:
    ApplyMovement 2, _0588
    ApplyMovement 0, _0590
    WaitMovement
    Return

_04CE:
    SetVar VAR_OBJ_GFX_ID_1, 169
    ClearFlag FLAG_UNK_0x01CB
    AddObject 1
    ApplyMovement 1, _05A8
    WaitMovement
    Return

    .byte 62
    .byte 0
    .byte 1
    .byte 0
    .byte 2
    .byte 0
    .byte 1
    .byte 0
    .byte 14
    .byte 0
    .byte 5
    .byte 0
    .byte 0
    .byte 0
    .byte 1
    .byte 0
    .byte 12
    .byte 0
    .byte 3
    .byte 0
    .byte 3
    .byte 0
    .byte 1
    .byte 0
    .byte 254
    .byte 0
    .byte 0
    .byte 0

    .balign 4, 0
_0504:
    Delay4
    WalkNormalNorth
    FaceWest
    WalkNormalWest 3
    FaceNorth
    WalkNormalNorth 3
    FaceEast
    EndMovement

    .balign 4, 0
_0524:
    WalkNormalSouth
    FaceEast
    WalkNormalEast 3
    FaceSouth
    WalkNormalSouth 3
    FaceWest
    EndMovement

    .balign 4, 0
_0540:
    WalkNormalEast
    EndMovement

    .balign 4, 0
_0548:
    WalkNormalWest
    EndMovement

    .balign 4, 0
_0550:
    FaceEast
    WalkNormalEast
    FaceNorth
    WalkNormalNorth 3
    FaceWest
    WalkNormalWest 3
    FaceNorth
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_0574:
    WalkNormalWest
    FaceWest
    EndMovement

    .balign 4, 0
_0580:
    WalkNormalEast
    EndMovement

    .balign 4, 0
_0588:
    FaceEast
    EndMovement

    .balign 4, 0
_0590:
    FaceWest
    WalkNormalWest
    FaceEast
    EndMovement

    .balign 4, 0
_05A0:
    FaceWest
    EndMovement

    .balign 4, 0
_05A8:
    WalkSlowSouth
    FaceEast
    WalkSlowEast 3
    FaceSouth
    WalkSlowSouth 3
    FaceWest
    EndMovement
