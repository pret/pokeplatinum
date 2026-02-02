#include "macros/scrcmd.inc"
#include "res/text/bank/contest_registration.h"
#include "constants/map_object.h"
#include "generated/pokemon_contest_types.h"


    ScriptEntry _0036
    ScriptEntry _0148
    ScriptEntry _014A
    ScriptEntry _0184
    ScriptEntry _01D4
    ScriptEntry _01E9
    ScriptEntry _01FC
    ScriptEntry _021B
    ScriptEntry _0E74
    ScriptEntry _0E74
    ScriptEntry _0E74
    ScriptEntry _0E74
    ScriptEntry ContestRegistration_LinkContestRecordsDisplay
    ScriptEntryEnd

_0036:
    LockAll
    SetVar VAR_RESULT, 7
    Call _0052
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    SetVar VAR_UNK_0x40D5, 0
    ReleaseAll
    End

_0052:
    ApplyMovement LOCALID_PLAYER, _0120
    WaitMovement
    LoadDoorAnimation 0, 0, VAR_RESULT, 5, ANIMATION_TAG_DOOR_1
    Call _010D
    ApplyMovement LOCALID_PLAYER, _0128
    WaitMovement
    Call _0115
    Return

_007F:
    ApplyMovement LOCALID_PLAYER, _013C
    WaitMovement
    Return

_008B:
    ApplyMovement LOCALID_PLAYER, _0130
    WaitMovement
    CallIfEq VAR_0x8007, 3, _00C8
    CallIfEq VAR_0x8007, 5, _00DF
    CallIfEq VAR_0x8007, 7, _00F6
    SetVar VAR_0x8004, 0
    ShowYesNoMenu VAR_RESULT
    Return

_00C8:
    GoToIfGt VAR_0x8004, 1, _00DA
    Message 184
    Return

_00DA:
    Message 185
    Return

_00DF:
    GoToIfGt VAR_0x8004, 1, _00F1
    Message 194
    Return

_00F1:
    Message 195
    Return

_00F6:
    GoToIfGt VAR_0x8004, 1, _0108
    Message 204
    Return

_0108:
    Message 205
    Return

_010D:
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    Return

_0115:
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Return

    .balign 4, 0
_0120:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0128:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_0130:
    WalkNormalWest
    WalkOnSpotFastNorth
    EndMovement

    .balign 4, 0
_013C:
    WalkNormalWest 2
    WalkOnSpotFastNorth
    EndMovement

_0148:
    End

_014A:
    CallIfEq VAR_UNK_0x40CC, 0, _0168
    GoToIfEq VAR_UNK_0x40CC, 0, _0166
    HidePoketch
_0166:
    End

_0168:
    SetVar VAR_UNK_0x40CC, 0
    SetFlag FLAG_UNK_0x0201
    SetFlag FLAG_UNK_0x0202
    SetFlag FLAG_UNK_0x0203
    SetFlag FLAG_UNK_0x0204
    SetFlag FLAG_UNK_0x0205
    Return

_0184:
    ShowPoketch
    Call _01B1
    Call _0168
    CheckTVInterviewEligible TV_PROGRAM_SEGMENT_CONTEST_HALL, VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _01AB
    ClearFlag FLAG_UNK_0x0213
    End

_01AB:
    SetFlag FLAG_UNK_0x0213
    End

_01B1:
    GoToIfSet FLAG_UNK_0x0159, _01BE
    Return

_01BE:
    SetObjectEventPos 9, 24, 6
    SetObjectEventMovementType 9, MOVEMENT_TYPE_LOOK_SOUTH
    SetObjectEventDir 9, DIR_SOUTH
    Return

_01D4:
    CallIfEq VAR_UNK_0x40CC, 1, _01E3
    End

_01E3:
    HideObject LOCALID_PLAYER
    Return

_01E9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01FC:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 0
    SetVar VAR_0x8007, 2
    Message 3
    GoTo _023A
    End

_021B:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 1
    SetVar VAR_0x8007, 2
    Message 7
    GoTo _023A
    End

_023A:
    GoToIfEq VAR_MAP_LOCAL_3, 1, _0250
    Message 4
    GoTo _0253

_0250:
    Message 12
_0253:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 8, 0
    AddMenuEntryImm 9, 1
    AddMenuEntryImm 10, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _02A8
    GoToIfEq VAR_0x8008, 1, _02F0
    GoTo _0291
    End

_0291:
    EndCommunication
    SetVar VAR_UNK_0x40D5, 0
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    Message 11
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_02A8:
    GoToIfEq VAR_MAP_LOCAL_3, 1, _02BD
    GoTo _040D
    End

_02BD:
    HealParty
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 1, _02E2
    GoTo _0291
    End

_02E2:
    SetVar VAR_0x8004, 2
    GoTo _04A8
    End

_02F0:
    GoToIfEq VAR_MAP_LOCAL_3, 1, _0305
    GoTo _030E
    End

_0305:
    Message 13
    GoTo _023A

_030E:
    Message 5
_0311:
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 96, 0
    AddMenuEntryImm 97, 1
    AddMenuEntryImm 98, 2
    AddMenuEntryImm 99, 3
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0360
    GoToIfEq VAR_0x8008, 1, _0368
    GoToIfEq VAR_0x8008, 2, _0373
    GoTo _023A
    End

_0360:
    GoTo _0381
    End

_0368:
    Message 18
    GoTo _030E
    End

_0373:
    Message 19
    GoTo _030E
    End

_037E:
    Message 117
_0381:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 36, 0
    AddMenuEntryImm 37, 1
    AddMenuEntryImm 38, 2
    AddMenuEntryImm 39, 3
    AddMenuEntryImm 40, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _03E1
    GoToIfEq VAR_0x8008, 1, _03EC
    GoToIfEq VAR_0x8008, 2, _03F7
    GoToIfEq VAR_0x8008, 3, _0402
    GoTo _0311
    End

_03E1:
    Message 14
    GoTo _037E
    End

_03EC:
    Message 15
    GoTo _037E
    End

_03F7:
    Message 16
    GoTo _037E
    End

_0402:
    Message 17
    GoTo _037E
    End

_040D:
    Message 27
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 105, 0
    AddMenuEntryImm 106, 1
    AddMenuEntryImm 107, 2
    AddMenuEntryImm 108, 3
    AddMenuEntryImm 109, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0470
    GoToIfEq VAR_0x8008, 1, _047E
    GoToIfEq VAR_0x8008, 2, _048C
    GoToIfEq VAR_0x8008, 3, _049A
    GoTo _0291
    End

_0470:
    SetVar VAR_0x8004, 0
    GoTo _04A8
    End

_047E:
    SetVar VAR_0x8004, 1
    GoTo _04A8
    End

_048C:
    SetVar VAR_0x8004, 2
    GoTo _04A8
    End

_049A:
    SetVar VAR_0x8004, 3
    GoTo _04A8
    End

_04A8:
    Message 28
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 110, 0
    AddMenuEntryImm 111, 1
    AddMenuEntryImm 112, 2
    AddMenuEntryImm 113, 3
    AddMenuEntryImm 114, 4
    AddMenuEntryImm 115, 5
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _051C
    GoToIfEq VAR_0x8008, 1, _052A
    GoToIfEq VAR_0x8008, 2, _0538
    GoToIfEq VAR_0x8008, 3, _0546
    GoToIfEq VAR_0x8008, 4, _0554
    GoTo _0291
    End

_051C:
    SetVar VAR_0x8005, CONTEST_TYPE_COOL
    GoTo _0562
    End

_052A:
    SetVar VAR_0x8005, CONTEST_TYPE_BEAUTY
    GoTo _0562
    End

_0538:
    SetVar VAR_0x8005, CONTEST_TYPE_CUTE
    GoTo _0562
    End

_0546:
    SetVar VAR_0x8005, CONTEST_TYPE_SMART
    GoTo _0562
    End

_0554:
    SetVar VAR_0x8005, CONTEST_TYPE_TOUGH
    GoTo _0562
    End

_0562:
    Message 20
    Message 21
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    CallIfEq VAR_MAP_LOCAL_3, 0, _0600
    CallIfEq VAR_MAP_LOCAL_3, 1, _0608
    SetVar VAR_RESULT, 0
_0596:
    OpenPartyMenuForContest VAR_RESULT, VAR_0x8004, VAR_0x8005, VAR_MAP_LOCAL_4
    ScrCmd_195 VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _05C1
    ScrCmd_196 VAR_MAP_LOCAL_2
    ScrCmd_197 VAR_RESULT
    GoTo _0596

_05C1:
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, 0xFF, _05E4
    GoTo _0610
    End

_05E4:
    Message 215
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0291
    GoTo _0562
    End

_0600:
    SetVar VAR_MAP_LOCAL_4, 0
    Return

_0608:
    SetVar VAR_MAP_LOCAL_4, 1
    Return

_0610:
    GoToIfEq VAR_MAP_LOCAL_3, 1, _0625
    GoTo _070D
    End

_0625:
    Message 219
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 13, 0
    AddMenuEntryImm 14, 1
    AddMenuEntryImm 5, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0669
    GoToIfEq VAR_0x8008, 1, _06BB
    GoTo _0291
    End

_0669:
    Message 212
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0625
    CloseMessage
    StartBattleClient 8, VAR_0x8005, VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, _06AB
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, _06B3
    GoTo _070D
    End

_06AB:
    GoTo _0625
    End

_06B3:
    GoTo _0625
    End

_06BB:
    Message 212
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, _0625
    CloseMessage
    StartBattleServer 8, VAR_0x8005, VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, _06FD
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, _0705
    GoTo _070D
    End

_06FD:
    GoTo _0625
    End

_0705:
    EndCommunication
    CloseMessage
    ReleaseAll
    End

_070D:
    ScrCmd_0FA VAR_0x8004, VAR_0x8005, VAR_0x8007, VAR_MAP_LOCAL_2
    CallIfEq VAR_MAP_LOCAL_3, 1, _07B5
    GoToIfEq VAR_MAP_LOCAL_3, 2, _078A
    ScrCmd_109 VAR_RESULT
    AddVar VAR_RESULT, 1
    ScrCmd_0FF VAR_RESULT, 0
    MessageSynchronized 22
    ScrCmd_109 VAR_RESULT
    ScrCmd_0FD VAR_RESULT, 0
    ScrCmd_0FE VAR_RESULT, 1
    MessageSynchronized 64
    ScrCmd_0F8 25
    ScrCmd_0F9 25
    CloseMessage
_0761:
    GoToIfEq VAR_MAP_LOCAL_3, 0, _07BC
    GoToIfEq VAR_MAP_LOCAL_3, 1, _07F1
    GoToIfEq VAR_MAP_LOCAL_3, 2, _0830
    End

_078A:
    ScrCmd_109 VAR_RESULT
    AddVar VAR_RESULT, 1
    ScrCmd_0FF VAR_RESULT, 0
    Message 177
    ScrCmd_109 VAR_RESULT
    ScrCmd_0FD VAR_RESULT, 0
    ScrCmd_0FE VAR_RESULT, 1
    CloseMessage
    GoTo _0761

_07B5:
    Message 210
    ScrCmd_100
    Return

_07BC:
    LoadDoorAnimation 0, 0, 19, 5, ANIMATION_TAG_DOOR_1
    Call _010D
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0DA0
    ApplyMovement 0, _0E08
    WaitMovement
    Call _0115
    WaitMovement
    GoTo _086A
    End

_07F1:
    SetFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    SetVar VAR_UNK_0x40D5, 5
    LoadDoorAnimation 0, 0, 7, 5, ANIMATION_TAG_DOOR_1
    Call _010D
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0DB0
    ApplyMovement 1, _0E18
    WaitMovement
    Call _0115
    WaitMovement
    GoTo _086A
    End

_0830:
    LoadDoorAnimation 0, 0, 28, 5, ANIMATION_TAG_DOOR_1
    Call _010D
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0DC0
    ApplyMovement 2, _0E28
    WaitMovement
    Call _0115
    WaitMovement
    MessageSynchronized 211
    CloseMessage
    GoTo _086A
    End

_086A:
    GoToIfEq VAR_MAP_LOCAL_3, 2, _08CD
    ScrCmd_0C6
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _0892
    GoTo _08A0
    End

_0892:
    BufferPlayerName 0
    MessageSynchronized 66
    GoTo _08AE
    End

_08A0:
    BufferPlayerName 0
    MessageSynchronized 67
    GoTo _08AE
    End

_08AE:
    ApplyMovement LOCALID_PLAYER, _0E00
    WaitMovement
    MessageSynchronized 68
    ScrCmd_0F8 26
    ScrCmd_0F9 26
    CloseMessage
    GoTo _0947
    End

_08CD:
    FadeScreenOut
    WaitFadeScreen
    ScrCmd_101
    ScrCmd_110 VAR_0x8004, VAR_0x8005, VAR_0x8007, VAR_MAP_LOCAL_2
    SetVar VAR_UNK_0x40CC, 0
    Warp MAP_HEADER_CONTEST_HALL_LOBBY, 0, 28, 3, 1
    LockAll
    FadeScreenIn
    WaitFadeScreen
    ScrCmd_10C VAR_MAP_LOCAL_3
    ScrCmd_110 VAR_0x8004, VAR_0x8005, VAR_0x8007, VAR_MAP_LOCAL_2
    ScrCmd_107 VAR_0x8004
    ScrCmd_118
    ScrCmd_0FB VAR_MAP_LOCAL_2
    SetVar VAR_RESULT, 28
    Call _0052
    Call _008B
    GoToIfEq VAR_RESULT, MENU_YES, _070D
    Message 116
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0947:
    ClearFlag FLAG_UNK_0x0220
    SetVar VAR_UNK_0x40CC, 1
    Call _0D20
    PlayFanfare SEQ_SE_DP_KAIDAN2
    ClearFlag FLAG_UNK_0x0201
    ClearFlag FLAG_UNK_0x0202
    ClearFlag FLAG_UNK_0x0203
    ClearFlag FLAG_UNK_0x0204
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_CONTEST_HALL_STAGE_ONGOING_CONTEST, 0, 29, 7, 0
    LockAutoScrollForLinkContests
    ScrCmd_10C VAR_MAP_LOCAL_3
    ScrCmd_113
    FadeScreenIn
    WaitFadeScreen
    ScrCmd_114
    ScrCmd_0F8 3
    ScrCmd_0F9 3
    PlayFanfare SEQ_SE_DP_CON_F007
    ApplyMovement 0, _0E38
    WaitMovement
    ScrCmd_102 0
    ScrCmd_103 1
    MessageSynchronized 69
    ScrCmd_0F8 19
    ScrCmd_0F9 19
    ApplyMovement 0, _0E54
    WaitMovement
    ScrCmd_0FD 0, 0
    MessageSynchronized 70
    ScrCmd_10B 0, VAR_RESULT
    ScrCmd_111 0
    Call _0C47
    ScrCmd_112
    ScrCmd_0F8 20
    ScrCmd_0F9 20
    ApplyMovement 0, _0E5C
    WaitMovement
    ScrCmd_0FD 1, 0
    MessageSynchronized 71
    ScrCmd_10B 1, VAR_RESULT
    ScrCmd_111 1
    Call _0C47
    ScrCmd_112
    ScrCmd_0F8 21
    ScrCmd_0F9 21
    WaitTime 8, VAR_RESULT
    ScrCmd_0FD 2, 0
    MessageSynchronized 72
    ScrCmd_10B 2, VAR_RESULT
    ScrCmd_111 2
    Call _0C47
    ScrCmd_112
    ScrCmd_0F8 22
    ScrCmd_0F9 22
    ApplyMovement 0, _0E64
    WaitMovement
    ScrCmd_0FD 3, 0
    MessageSynchronized 73
    ScrCmd_10B 3, VAR_RESULT
    ScrCmd_111 3
    Call _0C47
    ScrCmd_112
    ScrCmd_0F8 23
    ScrCmd_0F9 23
    ApplyMovement 0, _0E6C
    WaitMovement
    MessageSynchronized 74
    CloseMessage
    ScrCmd_0F8 4
    ScrCmd_0F9 4
    PlayFanfare SEQ_SE_DP_CON_F007
    WaitTime 30, VAR_RESULT
    ScrCmd_113
    FadeScreen FADE_SCREEN_CMD_STEPS, FADE_SCREEN_SPEED_FAST, FADE_TYPE_UNK_20, COLOR_BLACK
    WaitFadeScreen
    ScrCmd_114
    ScrCmd_2B1
    ScrCmd_101
    LockAutoScrollForLinkContests
    ScrCmd_110 VAR_0x8004, VAR_0x8005, VAR_0x8007, VAR_MAP_LOCAL_2
    ScrCmd_10C VAR_MAP_LOCAL_3
    Call _0D3A
    ScrCmd_2B0
    FadeScreenIn FADE_SCREEN_SPEED_FAST, COLOR_WHITE
    WaitFadeScreen
    ScrCmd_108 VAR_RESULT
    ScrCmd_111 VAR_RESULT
    ScrCmd_10B VAR_RESULT, VAR_RESULT
    Call _0C47
    ScrCmd_112
    MessageSynchronized 76
    ScrCmd_115 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0B50
    ScrCmd_104 0
    ScrCmd_106 1
    ScrCmd_10E 2
    ScrCmd_10D VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0B1B
    MessageSynchronized 79
    GoTo _0B50

_0B1B:
    MessageSynchronized 77
    CloseMessage
    ApplyMovement 0, _0E64
    ApplyMovement 5, _0E54
    WaitMovement
    WaitTime 15, VAR_RESULT
    PlaySound SEQ_FANFA1
    WaitSound
    ApplyMovement 0, _0E6C
    ApplyMovement 5, _0E6C
    WaitMovement
_0B50:
    MessageSynchronized 78
    CloseMessage
    PlayFanfare SEQ_SE_DP_CON_F007
    ScrCmd_108 VAR_RESULT
    ScrCmd_111 VAR_RESULT
    ScrCmd_10B VAR_RESULT, VAR_RESULT
    Call _0C47
    ScrCmd_112
    WaitTime 30, VAR_RESULT
    ScrCmd_0F8 24
    ScrCmd_0F9 24
    ScrCmd_2BB
    WaitTime 10, VAR_RESULT
    ScrCmd_2B1
    ScrCmd_113
    FadeScreen FADE_SCREEN_CMD_STEPS, FADE_SCREEN_SPEED_FAST, FADE_TYPE_UNK_20, COLOR_BLACK
    WaitFadeScreen
    ScrCmd_114
    ScrCmd_110 VAR_0x8004, VAR_0x8005, VAR_0x8007, VAR_MAP_LOCAL_2
    ScrCmd_10F VAR_0x8004
    ScrCmd_118
    ScrCmd_0FB VAR_MAP_LOCAL_2
    SetVar VAR_UNK_0x40CC, 0
    GoToIfEq VAR_MAP_LOCAL_3, 0, _0BF2
    Warp MAP_HEADER_CONTEST_HALL_LOBBY, 0, 7, 3, 1
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_RESULT, 7
    Call _0052
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    SetVar VAR_UNK_0x40D5, 0
    GoTo _0C45

_0BF2:
    Warp MAP_HEADER_CONTEST_HALL_LOBBY, 0, 18, 3, 1
    FadeScreenIn
    WaitFadeScreen
    SetVar VAR_RESULT, 19
    Call _0052
    Call _007F
    GoToIfEq VAR_0x8004, -1, _0C3E
    BufferPlayerName 0
    BufferAccessoryName 1, VAR_0x8004
    Message 80
    SetVar VAR_0x8005, 1
    Common_GiveAccessory
_0C3E:
    Message 82
    WaitABXPadPress
    CloseMessage
_0C45:
    End

_0C47:
    PlayFanfare SEQ_SE_DP_CON_F007
    CallIfEq VAR_RESULT, 1, _0C8E
    CallIfEq VAR_RESULT, 2, _0C98
    CallIfEq VAR_RESULT, 3, _0CAC
    CallIfEq VAR_RESULT, 4, _0CC8
    CallIfGe VAR_RESULT, 5, _0CEE
    Return

_0C8E:
    PlayFanfare SEQ_SE_DP_CON_015
    WaitFanfare SEQ_SE_DP_CON_015
    Return

_0C98:
    PlayFanfare SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlayFanfare SEQ_SE_DP_CON_015
    WaitFanfare SEQ_SE_DP_CON_015
    Return

_0CAC:
    PlayFanfare SEQ_SE_DP_CON_015
    WaitFanfare SEQ_SE_DP_CON_015
    PlayFanfare SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlayFanfare SEQ_SE_DP_CON_015
    WaitFanfare SEQ_SE_DP_CON_015
    Return

_0CC8:
    PlayFanfare SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlayFanfare SEQ_SE_DP_CON_015
    WaitFanfare SEQ_SE_DP_CON_015
    PlayFanfare SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlayFanfare SEQ_SE_DP_CON_015
    WaitFanfare SEQ_SE_DP_CON_015
    Return

_0CEE:
    PlayFanfare SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlayFanfare SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlayFanfare SEQ_SE_DP_CON_015
    WaitTime 10, VAR_RESULT
    PlayFanfare SEQ_SE_DP_CON_015
    WaitTime 5, VAR_RESULT
    PlayFanfare SEQ_SE_DP_CON_015
    WaitFanfare SEQ_SE_DP_CON_015
    Return

_0D20:
    ScrCmd_10A 0, VAR_OBJ_GFX_ID_0
    ScrCmd_10A 1, VAR_OBJ_GFX_ID_1
    ScrCmd_10A 2, VAR_OBJ_GFX_ID_2
    ScrCmd_10A 3, VAR_OBJ_GFX_ID_3
    Return

_0D3A:
    ScrCmd_108 VAR_RESULT
    ScrCmd_10A VAR_RESULT, VAR_OBJ_GFX_ID_4
    ClearFlag FLAG_UNK_0x0205
    AddObject 5
    ScrCmd_108 VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, 0, _0D86
    GoToIfEq VAR_MAP_LOCAL_0, 1, _0D8C
    GoToIfEq VAR_MAP_LOCAL_0, 2, _0D92
    GoToIfEq VAR_MAP_LOCAL_0, 3, _0D98
    Return

_0D86:
    RemoveObject 1
    Return

_0D8C:
    RemoveObject 2
    Return

_0D92:
    RemoveObject 3
    Return

_0D98:
    RemoveObject 4
    Return

    .balign 4, 0
_0DA0:
    WalkNormalEast 2
    WalkNormalNorth 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0DB0:
    WalkNormalEast 2
    WalkNormalNorth 3
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0DC0:
    WalkNormalEast
    WalkNormalNorth 3
    EndMovement

Unk212_UnusedMovement:
    Delay4
    FaceEast
    Delay4
    FaceSouth
    Delay2
    FaceWest
    Delay1
    FaceNorth
    Delay1
    FaceEast
    Delay1
    FaceSouth
    EndMovement

    .balign 4, 0
_0E00:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0E08:
    Delay8 2
    WalkNormalNorth
    WalkNormalEast
    EndMovement

    .balign 4, 0
_0E18:
    Delay8 2
    WalkNormalNorth
    WalkNormalEast
    EndMovement

    .balign 4, 0
_0E28:
    Delay8 2
    WalkNormalNorth
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0E38:
    Delay8 2
    WalkOnSpotNormalWest
    Delay8
    WalkOnSpotNormalEast
    Delay8
    WalkOnSpotFastSouth
    EndMovement

    .balign 4, 0
_0E54:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
_0E5C:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0E64:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0E6C:
    WalkOnSpotNormalSouth
    EndMovement

_0E74:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetVar VAR_MAP_LOCAL_3, 2
    SetVar VAR_0x8004, 0
    Message 111
    GoTo _0E93
    End

_0E93:
    Message 112
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 113, 0
    AddMenuEntryImm 114, 1
    AddMenuEntryImm 115, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0EE1
    GoToIfEq VAR_0x8008, 1, _1169
    GoToIfEq VAR_0x8008, 2, _138E
    GoTo _138E
    End

_0EE1:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 155, 0
    AddMenuEntryImm 156, 1
    AddMenuEntryImm 157, 2
    AddMenuEntryImm 158, 3
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0F30
    GoToIfEq VAR_0x8008, 1, _0F44
    GoToIfEq VAR_0x8008, 2, _0F5E
    GoTo _0F72
    End

_0F30:
    SetVar VAR_MAP_LOCAL_4, 0
    SetVar VAR_0x8007, 3
    GoTo _1027
    End

_0F44:
    SetVar VAR_MAP_LOCAL_4, 1
    SetVar VAR_0x8005, 0
    SetVar VAR_0x8007, 5
    GoTo _1027
    End

_0F5E:
    SetVar VAR_MAP_LOCAL_4, 0
    SetVar VAR_0x8007, 7
    GoTo _1027
    End

_0F72:
    Message 159
    WaitABXPadPress
    GoTo _1393
    End

Unk212_Unused:
    Message 168
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 169, 0
    AddMenuEntryImm 170, 1
    AddMenuEntryImm 171, 2
    AddMenuEntryImm 172, 3
    AddMenuEntryImm 173, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, Unk212_Unused2
    GoToIfEq VAR_0x8008, 1, Unk212_Unused3
    GoToIfEq VAR_0x8008, 2, Unk212_Unused4
    GoToIfEq VAR_0x8008, 3, Unk212_Unused5
    GoTo Unk212_Unused6
    End

Unk212_Unused2:
    SetVar VAR_0x8004, 0
    GoTo _1027
    End

Unk212_Unused3:
    SetVar VAR_0x8004, 1
    GoTo _1027
    End

Unk212_Unused4:
    SetVar VAR_0x8004, 2
    GoTo _1027
    End

Unk212_Unused5:
    SetVar VAR_0x8004, 3
    GoTo _1027
    End

Unk212_Unused6:
    Message 174
    WaitABXPadPress
    GoTo _1393
    End

_1027:
    GoToIfEq VAR_MAP_LOCAL_4, 1, _1101
    GoTo _103A

_103A:
    Message 160
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 161, 0
    AddMenuEntryImm 162, 1
    AddMenuEntryImm 163, 2
    AddMenuEntryImm 164, 3
    AddMenuEntryImm 165, 4
    AddMenuEntryImm 166, 5
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _10AE
    GoToIfEq VAR_0x8008, 1, _10BC
    GoToIfEq VAR_0x8008, 2, _10CA
    GoToIfEq VAR_0x8008, 3, _10D8
    GoToIfEq VAR_0x8008, 4, _10E6
    GoTo _10F4
    End

_10AE:
    SetVar VAR_0x8005, CONTEST_TYPE_COOL
    GoTo _1101
    End

_10BC:
    SetVar VAR_0x8005, CONTEST_TYPE_BEAUTY
    GoTo _1101
    End

_10CA:
    SetVar VAR_0x8005, CONTEST_TYPE_CUTE
    GoTo _1101
    End

_10D8:
    SetVar VAR_0x8005, CONTEST_TYPE_SMART
    GoTo _1101
    End

_10E6:
    SetVar VAR_0x8005, CONTEST_TYPE_TOUGH
    GoTo _1101
    End

_10F4:
    Message 167
    WaitABXPadPress
    GoTo _1393
    End

_1101:
    Message 175
    Message 176
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    SetVar VAR_RESULT, 0
_111B:
    OpenPartyMenuForContest VAR_RESULT, VAR_0x8004, VAR_0x8005, 0
    ScrCmd_195 VAR_MAP_LOCAL_2, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _1146
    ScrCmd_196 VAR_MAP_LOCAL_2
    ScrCmd_197 VAR_RESULT
    GoTo _111B

_1146:
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_MAP_LOCAL_2, 0xFF, _10F4
    GoTo _070D
    End

_1169:
    Message 117
_116C:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 121, 0
    AddMenuEntryImm 118, 1
    AddMenuEntryImm 119, 2
    AddMenuEntryImm 120, 3
    AddMenuEntryImm 122, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _1375
    GoToIfEq VAR_0x8008, 1, _11CF
    GoToIfEq VAR_0x8008, 2, _124A
    GoToIfEq VAR_0x8008, 3, _12E1
    GoTo _0E93
    End

_11CC:
    Message 117
_11CF:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 125, 0
    AddMenuEntryImm 126, 1
    AddMenuEntryImm 127, 2
    AddMenuEntryImm 129, 3
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _121E
    GoToIfEq VAR_0x8008, 1, _1229
    GoToIfEq VAR_0x8008, 2, _1234
    GoTo _123F
    End

_121E:
    Message 130
    GoTo _11CC
    End

_1229:
    Message 131
    GoTo _11CC
    End

_1234:
    Message 132
    GoTo _11CC
    End

_123F:
    GoTo _116C
    End

_1247:
    Message 117
_124A:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 135, 0
    AddMenuEntryImm 136, 1
    AddMenuEntryImm 137, 2
    AddMenuEntryImm 138, 3
    AddMenuEntryImm 139, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _12AA
    GoToIfEq VAR_0x8008, 1, _12B5
    GoToIfEq VAR_0x8008, 2, _12C0
    GoToIfEq VAR_0x8008, 3, _12CB
    GoTo _12D6
    End

_12AA:
    Message 140
    GoTo _1247
    End

_12B5:
    Message 141
    GoTo _1247
    End

_12C0:
    Message 142
    GoTo _1247
    End

_12CB:
    Message 143
    GoTo _1247
    End

_12D6:
    GoTo _116C
    End

_12DE:
    Message 117
_12E1:
    InitLocalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm 145, 0
    AddMenuEntryImm 146, 1
    AddMenuEntryImm 147, 2
    AddMenuEntryImm 148, 3
    AddMenuEntryImm 149, 4
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _1341
    GoToIfEq VAR_0x8008, 1, _134C
    GoToIfEq VAR_0x8008, 2, _1357
    GoToIfEq VAR_0x8008, 3, _1362
    GoTo _136D
    End

_1341:
    Message 150
    GoTo _12DE
    End

_134C:
    Message 151
    GoTo _12DE
    End

_1357:
    Message 152
    GoTo _12DE
    End

_1362:
    Message 153
    GoTo _12DE
    End

_136D:
    GoTo _116C
    End

_1375:
    Message 124
    Message 117
    GoTo _116C
    End

Unk212_Unused7:
    Message 123
    GoTo _1393
    End

_138E:
    Message 116
    WaitABXPadPress
_1393:
    CloseMessage
    ReleaseAll
    End

ContestRegistration_LinkContestRecordsDisplay:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    ShowLinkContestRecords
    ReleaseAll
    End

    .balign 4, 0
