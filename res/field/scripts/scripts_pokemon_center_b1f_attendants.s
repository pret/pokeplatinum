#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_center_b1f_attendants.h"


    ScriptEntry _001A
    ScriptEntry _00F4
    ScriptEntry _01A3
    ScriptEntry _043C
    ScriptEntry _048E
    ScriptEntry _0650
    ScriptEntryEnd

_001A:
    LockAll
    Message 0
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _00D8
    WaitMovement
    Message 1
    SetVar VAR_0x8004, ITEM_PAL_PAD
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    GoTo _0046
    End

_0046:
    Message 2
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 153, 0
    AddMenuEntryImm 154, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0086
    GoToIfEq VAR_0x8008, 1, _00C6
    GoTo _00C6
    End

_0086:
    Message 3
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 155, 0
    AddMenuEntryImm 154, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0086
    GoToIfEq VAR_0x8008, 1, _00C6
    GoTo _00C6
    End

_00C6:
    SetVar VAR_UNK_0x40D4, 1
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
_00D8:
    WalkOnSpotNormalNorth
    Delay8 2
    WalkNormalNorth 4
    WalkNormalWest
    FaceNorth
    Delay8 2
    EndMovement

_00F4:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message 5
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0123
    GoTo _0118
    End

_0118:
    Message 4
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0123:
    Message 6
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 153, 0
    AddMenuEntryImm 154, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0163
    GoToIfEq VAR_0x8008, 1, _0118
    GoTo _0118
    End

_0163:
    Message 3
    InitGlobalTextMenu 31, 13, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 155, 0
    AddMenuEntryImm 154, 1
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0163
    GoToIfEq VAR_0x8008, 1, _0118
    GoTo _0118
    End

_01A3:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPartyHasBadEgg VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0430
    GoTo _01C4
    End

_01C4:
    Message 7
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 14, 0
    AddMenuEntryImm 15, 1
    AddMenuEntryImm 16, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0213
    GoToIfEq VAR_0x8008, 1, _0208
    GoTo _026C
    End

_0208:
    Message 13
    GoTo _01C4
    End

_0213:
    ScrCmd_2A4 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _022C
    GoTo _0277
    End

_022C:
    ScrCmd_2A3 VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0261
    GoTo _0245
    End

_0245:
    Message 11
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0277
    GoTo _026C
    End

_0261:
    Message 12
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_026C:
    Message 8
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0277:
    ScrCmd_31D VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, _02A9
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 1, _02AF
    GoTo _026C
    End

_02A9:
    Common_GriseousOrbCouldNotBeRemoved
    End

_02AF:
    Message 10
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    ApplyMovement LOCALID_PLAYER, _03B8
    WaitMovement
    GoTo _02CC
    End

_02CC:
    LoadDoorAnimation 0, 0, 9, 5, ANIMATION_TAG_DOOR_1
    Call _0320
    ApplyMovement LOCALID_PLAYER, _03C4
    WaitMovement
    Call _0328
    ApplyMovement LOCALID_PLAYER, _03CC
    WaitMovement
    LoadDoorAnimation 0, 0, 9, 2, ANIMATION_TAG_DOOR_1
    Call _0320
    ApplyMovement LOCALID_PLAYER, _03D4
    WaitMovement
    Call _0328
    GoTo _0333
    End

_0320:
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    Return

_0328:
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Return

_0333:
    FadeScreenOut
    WaitFadeScreen
    WaitForTransition
    ScrCmd_2A4 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _035A
    ScrCmd_0A3
    GoTo _035C

_035A:
    ScrCmd_0A3
_035C:
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    LoadDoorAnimation 0, 0, 8, 2, ANIMATION_TAG_DOOR_1
    Call _0320
    ApplyMovement LOCALID_PLAYER, _03EC
    WaitMovement
    Call _0328
    ApplyMovement LOCALID_PLAYER, _03FC
    WaitMovement
    LoadDoorAnimation 0, 0, 8, 5, ANIMATION_TAG_DOOR_1
    Call _0320
    ApplyMovement LOCALID_PLAYER, _0404
    WaitMovement
    Call _0328
    End

    .balign 4, 0
_03B8:
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_03C4:
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
_03CC:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
_03D4:
    WalkNormalNorth
    SetInvisible
    EndMovement

    .balign 4, 0
_03E0:
    WalkNormalNorth 2
    SetInvisible
    EndMovement

    .balign 4, 0
_03EC:
    FaceSouth
    SetVisible
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_03FC:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
_0404:
    WalkNormalSouth 2
    EndMovement

    .balign 4, 0
_040C:
    WalkOnSpotNormalEast
    EndMovement

    .balign 4, 0
_0414:
    WalkNormalNorth
    WalkNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
_0424:
    WalkNormalNorth
    SetInvisible
    EndMovement

_0430:
    CallCommonScript 0x2338
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_043C:
    Dummy1F9 VAR_BATTLE_FACTORY_CHALLENGE_TYPE
    SetVar VAR_UNK_0x40DD, 0
    SetVar VAR_UNK_0x40DE, 0
    SetVar VAR_BATTLE_FACTORY_CHALLENGE_TYPE, 0
    SetVar VAR_UNK_0x40B9, 0
    SetVar VAR_BATTLE_CASTLE_CHALLENGE_TYPE, 0
    SetVar VAR_BATTLE_HALL_CHALLENGE_TYPE, 0
    SetVar VAR_BATTLE_ARCADE_CHALLENGE_TYPE, 0
    SetVar VAR_UNK_0x40D8, 0
    SetVar VAR_UNK_0x40B7, 0
    SetVar VAR_UNK_0x40BC, 0
    SetVar VAR_BATTLE_HALL_LOBBY_LOAD_ACTION, 0
    SetVar VAR_UNK_0x40BF, 0
    Dummy1F9 VAR_BATTLE_FACTORY_CHALLENGE_TYPE
    End

_048E:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    ScrCmd_323 VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _04BC
    GetCurrentMapID 0x405C
    SetVar VAR_UNK_0x405D, VAR_LAST_TALKED
    Message 17
    GoTo _04C7
    End

_04BC:
    Message 25
    GoTo _0513
    End

_04C7:
    InitLocalTextMenu 31, 11, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm 22, 0
    AddMenuEntryImm 23, 1
    AddMenuEntryImm 24, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, _0526
    GoToIfEq VAR_0x8008, 1, _051B
    GoTo _0508
    End

_0508:
    Message 20
    GoTo _0513
    End

_0513:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_051B:
    Message 21
    GoTo _04C7
    End

_0526:
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 0, _0508
    Message 19
    CloseMessage
    ApplyMovement LOCALID_PLAYER, _03B8
    WaitMovement
    LoadDoorAnimation 0, 0, 5, 5, ANIMATION_TAG_DOOR_1
    Call _0320
    ApplyMovement VAR_LAST_TALKED, _040C
    ApplyMovement LOCALID_PLAYER, _03C4
    WaitMovement
    Call _0328
    ApplyMovement VAR_LAST_TALKED, _0414
    WaitMovement
    LoadDoorAnimation 0, 0, 5, 2, ANIMATION_TAG_DOOR_1
    Call _0320
    ApplyMovement LOCALID_PLAYER, _03E0
    ApplyMovement VAR_LAST_TALKED, _0424
    WaitMovement
    Call _0328
    SetVar VAR_MAP_LOCAL_3, 0
    FadeScreenOut
    WaitFadeScreen
    Warp MAP_HEADER_WIFI_PLAZA_ENTRANCE, 0, 20, 11, 0
    FadeScreenIn
    WaitFadeScreen
    End

Unk423_Unused:
    FadeScreenOut
    WaitFadeScreen
    WaitForTransition
    ScrCmd_0B3 VAR_RESULT
    SetVar VAR_0x8004, VAR_RESULT
    ScrCmd_2F7 VAR_0x8004
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    LoadDoorAnimation 0, 0, 5, 2, ANIMATION_TAG_DOOR_1
    Call _0320
    ApplyMovement LOCALID_PLAYER, _03EC
    WaitMovement
    Call _0328
    ApplyMovement LOCALID_PLAYER, _03FC
    WaitMovement
    LoadDoorAnimation 0, 0, 5, 5, ANIMATION_TAG_DOOR_1
    Call _0320
    ApplyMovement LOCALID_PLAYER, _0404
    WaitMovement
    Call _0328
    ReleaseAll
    End

_0650:
    LockAll
    LoadDoorAnimation 0, 0, 5, 2, ANIMATION_TAG_DOOR_1
    Call _0320
    ApplyMovement LOCALID_PLAYER, _03EC
    WaitMovement
    Call _0328
    ApplyMovement LOCALID_PLAYER, _03FC
    WaitMovement
    LoadDoorAnimation 0, 0, 5, 5, ANIMATION_TAG_DOOR_1
    Call _0320
    ApplyMovement LOCALID_PLAYER, _0404
    WaitMovement
    Call _0328
    SetVar VAR_UNK_0x4080, 0
    ReleaseAll
    End
