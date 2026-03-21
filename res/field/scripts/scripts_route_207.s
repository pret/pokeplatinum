#include "macros/scrcmd.inc"
#include "res/text/bank/menu_entries.h"
#include "res/text/bank/route_207.h"
#include "res/field/events/events_route_207.h"


    ScriptEntry Route207_OnTransition
    ScriptEntry Route207_TriggerCounterpart
    ScriptEntry Route207_Unused
    ScriptEntry Route207_CyclistM
    ScriptEntry Route207_ArrowSignpostMtCoronet
    ScriptEntry Route207_ArrowSignpostOreburghCity
    ScriptEntry Route207_TrainerTips
    ScriptEntryEnd

Route207_OnTransition:
    GetPlayerGender VAR_MAP_LOCAL_0
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_MALE, Route207_SetCounterpartGraphicsDawn
    GoToIfEq VAR_MAP_LOCAL_0, GENDER_FEMALE, Route207_SetCounterpartGraphicsLucas
    End

Route207_SetCounterpartGraphicsDawn:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_F
    End

Route207_SetCounterpartGraphicsLucas:
    SetVar VAR_OBJ_GFX_ID_0, OBJ_EVENT_GFX_PLAYER_M
    End

Route207_TriggerCounterpart:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    SetObjectEventPos LOCALID_COUNTERPART, 331, VAR_0x8005
    Call Route207_ShowCounterpart
    ApplyMovement LOCALID_COUNTERPART, Route207_Movement_CounterpartNoticePlayer
    WaitMovement
    Common_SetCounterpartBGM
    ApplyMovement LOCALID_COUNTERPART, Route207_Movement_CounterpartWalkToPlayer
    WaitMovement
    ApplyMovement LOCALID_PLAYER, Route207_Movement_PlayerFaceCounterpart
    WaitMovement
    GoTo Route207_Counterpart
    End

Route207_ShowCounterpart:
    ClearFlag FLAG_HIDE_ROUTE_207_COUNTERPART
    AddObject LOCALID_COUNTERPART
    LockObject LOCALID_COUNTERPART
    Return

Route207_Counterpart:
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, Route207_Dawn
    GoTo Route207_Lucas

Route207_Dawn:
    BufferPlayerName 0
    Message Route207_Text_DawnPlayerChooseWhichHandYouWant
    InitGlobalTextListMenu 30, 13, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry MenuEntries_Text_CounterpartHand_Right, 0
    AddListMenuEntry MenuEntries_Text_CounterpartHand_Left, 1
    ShowListMenu
    Message Route207_Text_DawnISeeYouWantTheVsSeeker
    Call Route207_GiveVsSeeker
    Message Route207_Text_DawnYouCanHaveThisTooThen
    Call Route207_GivePoketchAppDowsingMachine
    Message Route207_Text_DawnTheDowsingMachineIsSomethingYouShouldTouchOften
    GoTo Route207_CounterpartLeave

Route207_Lucas:
    BufferPlayerName 0
    Message Route207_Text_LucasPlayerIllShareWithYouChooseAHand
    InitGlobalTextListMenu 30, 13, 0, VAR_RESULT, NO_EXIT_ON_B
    SetMenuXOriginToRight
    AddListMenuEntry MenuEntries_Text_CounterpartHand_Right, 0
    AddListMenuEntry MenuEntries_Text_CounterpartHand_Left, 1
    ShowListMenu
    Message Route207_Text_LucasOhYeahYouWantTheVsSeeker
    Call Route207_GiveVsSeeker
    Message Route207_Text_LucasYouCanHaveThisTooThen
    Call Route207_GivePoketchAppDowsingMachine
    Message Route207_Text_LucasTheDowsingMachineIsJustTryTouchingIt
    GoTo Route207_CounterpartLeave

Route207_GiveVsSeeker:
    SetFlag FLAG_UNLOCKED_VS_SEEKER_LVL_1
    SetVar VAR_0x8004, ITEM_VS_SEEKER
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    Return

Route207_GivePoketchAppDowsingMachine:
    SetVar VAR_0x8004, POKETCH_APPID_DOWSINGMACHINE
    Common_GivePoketchApp
    BufferPoketchAppName 1, POKETCH_APPID_DOWSINGMACHINE
    Return

Route207_CounterpartLeave:
    CloseMessage
    ApplyMovement LOCALID_COUNTERPART, Route207_Movement_CounterpartLeave
    WaitMovement
    RemoveObject LOCALID_COUNTERPART
    Common_FadeToDefaultMusic
    SetVar VAR_ROUTE_207_COUNTERPART_TRIGGER_STATE, 1
    ReleaseAll
    End

    .balign 4, 0
Route207_Movement_PlayerFaceCounterpart:
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
Route207_Movement_CounterpartNoticePlayer:
    WalkNormalEast 3
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
Route207_Movement_CounterpartWalkToPlayer:
    WalkNormalEast 5
    EndMovement

    .balign 4, 0
Route207_Movement_CounterpartLeave:
    WalkNormalWest 8
    EndMovement

Route207_Unused:
    NPCMessage Route207_Text_Dummy8
    End

Route207_CyclistM:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_RECEIVED_BICYCLE, Route207_ChangeToThe4thGearAndTakeARun
    Message Route207_Text_ThatSlopesTooSlippery
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route207_ChangeToThe4thGearAndTakeARun:
    Message Route207_Text_ChangeToThe4thGearAndTakeARun
    WaitButton
    CloseMessage
    ReleaseAll
    End

Route207_ArrowSignpostMtCoronet:
    ShowArrowSign Route207_Text_Rt207MtCoronet
    End

Route207_ArrowSignpostOreburghCity:
    ShowArrowSign Route207_Text_Rt207OreburghCity
    End

Route207_TrainerTips:
    ShowScrollingSign Route207_Text_TrainerTipsPokemonMayBecomeImmobilizedIfTheyAreAsleepOrParalyzed
    End

    .balign 4, 0
