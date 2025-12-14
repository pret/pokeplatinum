#include "macros/scrcmd.inc"
#include "res/text/bank/battle_tower_battle_room.h"
#include "res/text/bank/menu_entries.h"
#include "constants/map_object.h"


    ScriptEntry _0016
    ScriptEntry _0101
    ScriptEntry _012C
    ScriptEntry _0058
    ScriptEntry _0037
    ScriptEntryEnd

_0016:
    GoToIfEq VAR_UNK_0x40D9, 0, _0035
    SetFlag FLAG_UNK_0x01CB
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_PARTNER_PARAM, BT_PARAM_PLAYER_GRAPHICS_ID, VAR_MAP_LOCAL_0
    SetVar VAR_OBJ_GFX_ID_0, VAR_MAP_LOCAL_0
_0035:
    End

_0037:
    HideObject LOCALID_PLAYER
    GoToIfEq VAR_UNK_0x40D9, 3, _004A
    End

_004A:
    SetPosition 2, 5, 0, 6, 3
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
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE, 0, VAR_RESULT
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_WIFI, _00D9
    GoToIfEq VAR_0x8008, BATTLE_TOWER_MODE_5, _00D9
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 11, 6, 0
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

_00D9:
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_BATTLE_TOWER, 0, 15, 6, 0
    FadeScreenIn
    WaitFadeScreen
    ReleaseAll
    End

_0101:
    LockAll
    SetVar VAR_UNK_0x40D9, 3
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CHECK_IS_NULL, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _007D
    Call _043C
    GoTo _0201
    End

_012C:
    LockAll
    SetVar VAR_UNK_0x40D9, 3
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_CHECK_IS_NULL, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, _007D
    Call _043C
    Call _0448
    GoTo _02F7
    End

_015D:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_OPPONENT_TEAMS, 0, 0
    Call _045C
    PrintBattleTowerIntroMessage 0
    WaitABPress
    CloseMessage
    Call _047E
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    Return

_018C:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UPDATE_GAME_RECORDS, 0, 0
    GoTo _007D
    End

_019C:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UPDATE_GAME_RECORDS_AND_JOURNAL, 0, 0
    GoTo _007D
    End

_01AC:
    SetVar VAR_UNK_0x40D8, 2
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_39, 0, 0
    FreeBattleTower
    Message 4
    ShowSavingIcon
    TrySaveGame VAR_RESULT
    HideSavingIcon
    PlayFanfare SEQ_SE_DP_SAVE
    WaitFanfare SEQ_SE_DP_SAVE
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_RESET_SYSTEM, 0, 0
    End

_01E7:
    GoTo _018C
    End

_01EF:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_34, 0, VAR_RESULT
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_HAS_DEFEATED_SEVEN_TRAINERS, 0, VAR_RESULT
    Return

_0201:
    Call _015D
    GoToIfEq VAR_0x8004, FALSE, _018C
    Call _01EF
    GoToIfEq VAR_RESULT, TRUE, _019C
    Call _0492
    Call _04A6
    Call _0070
    GoTo _02F7
    End

_0241:
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_NEXT_OPPONENT_NUM, 0, VAR_0x8004
    BufferNumber 0, VAR_0x8004
    Message 1
    InitGlobalTextListMenu 31, 11, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 0
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Rest, 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Retire, 2
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
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_CHALLENGE_MODE, 0, VAR_RESULT
    GoToIfNe VAR_RESULT, BATTLE_TOWER_MODE_SINGLE, _0241
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_36, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 20, _0336
    GoToIfEq VAR_RESULT, 48, _0336
    GoTo _0241
    End

_0336:
    Message 14
    InitGlobalTextListMenu 31, 11, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_KeepGoing, 0
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Rest, 1
    AddListMenuEntry MenuEntries_Text_BattleTowerBattleRoom_Retire, 2
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
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_SET_OPPONENT_TEAMS, 0, 0
    Call _04CE
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_36, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 48, _041E
    BufferPlayerName 0
    BufferRivalName 1
    Message 15
_03C7:
    CloseMessage
    Call _047E
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_42, 0, 0
    CheckWonBattle VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_0x8004, FALSE, _018C
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_36, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, 48, _0429
    Message 17
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_44, 1, 0
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
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_UNK_44, 2, 0
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
    CallBattleTowerFunction BATTLE_TOWER_FUNCTION_GET_OPPONENT_OBJECT_ID, 0, VAR_RESULT
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

BattleTowerBattleRoom_UnusedMovement:
    Delay4
    FaceWest
    WalkNormalWest 5
    FaceNorth
    WalkNormalNorth 3
    FaceEast
    EndMovement

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
