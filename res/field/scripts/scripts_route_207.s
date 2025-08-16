#include "macros/scrcmd.inc"
#include "res/text/bank/route_207.h"


    ScriptEntry _001E
    ScriptEntry _004E
    ScriptEntry _01B0
    ScriptEntry _01C3
    ScriptEntry _01EC
    ScriptEntry _0203
    ScriptEntry _021A
    ScriptEntryEnd

_001E:
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, _003E
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, _0046
    End

_003E:
    SetVar VAR_OBJ_GFX_ID_0, 97
    End

_0046:
    SetVar VAR_OBJ_GFX_ID_0, 0
    End

_004E:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    SetObjectEventPos 18, 0x14B, VAR_0x8005
    Call _008E
    ApplyMovement 18, _0194
    WaitMovement
    CallCommonScript CommonScript_Unk28
    ApplyMovement 18, _01A0
    WaitMovement
    ApplyMovement LOCALID_PLAYER, _0174
    WaitMovement
    GoTo _009C
    End

_008E:
    ClearFlag FLAG_UNK_0x01CC
    AddObject 18
    LockObject 18
    Return

_009C:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, _00B3
    GoTo _00F1

_00B3:
    BufferPlayerName 0
    Message 0
    InitGlobalTextListMenu 30, 13, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry 137, 0
    AddListMenuEntry 138, 1
    ShowListMenu
    Message 1
    Call _012F
    Message 2
    Call _0145
    Message 3
    GoTo _0156

_00F1:
    BufferPlayerName 0
    Message 4
    InitGlobalTextListMenu 30, 13, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry 137, 0
    AddListMenuEntry 138, 1
    ShowListMenu
    Message 5
    Call _012F
    Message 6
    Call _0145
    Message 7
    GoTo _0156

_012F:
    SetFlag FLAG_UNLOCKED_VS_SEEKER_LVL_1
    SetVar VAR_0x8004, 0x1BB
    SetVar VAR_0x8005, 1
    CallCommonScript CommonScript_Unk2C
    Return

_0145:
    SetVar VAR_0x8004, 6
    CallCommonScript CommonScript_Unk09
    BufferPoketchAppName 1, POKETCH_APPID_DOWSINGMACHINE
    Return

_0156:
    CloseMessage
    ApplyMovement 18, _01A8
    WaitMovement
    RemoveObject 18
    CallCommonScript CommonScript_Unk29
    SetVar VAR_UNK_0x408C, 1
    ReleaseAll
    End

    .balign 4, 0
_0174:
    WalkOnSpotNormalWest
    EndMovement

Route207_UnusedMovement:
    Delay8 8
    WalkOnSpotNormalWest
    EndMovement

Route207_UnusedMovement2:
    Delay8 1
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0194:
    WalkNormalEast 3
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
_01A0:
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
_01A8:
    WalkNormalWest 8
    EndMovement

_01B0:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01C3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_UNK_0x0082, _01E1
    Message 9
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01E1:
    Message 10
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_01EC:
    ShowArrowSign 11
    End

_0203:
    ShowArrowSign 12
    End

_021A:
    ShowScrollingSign 13
    End

    .balign 4, 0
