#include "macros/scrcmd.inc"
#include "res/text/bank/unused_battle_park.h"
#include "res/field/events/events_unused_battle_park.h"


    ScriptEntry BattlePark_TriggerPalmerRival
    ScriptEntry BattlePark_Unused2
    ScriptEntry BattlePark_SignExchangeServiceCorner
    ScriptEntry BattlePark_SignBattleTower
    ScriptEntry BattlePark_Beauty
    ScriptEntry BattlePark_SchoolKidM
    ScriptEntry BattlePark_ExpertF
    ScriptEntry BattlePark_BabyInPram
    ScriptEntry BattlePark_PokefanM
    ScriptEntry BattlePark_MiddleAgedMan
    ScriptEntry BattlePark_AceTrainerM
    ScriptEntry BattlePark_BlackBelt
    ScriptEntryEnd

BattlePark_TriggerPalmerRival:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 23, BattlePark_SetPalmerRivalPositionX23
    CallIfEq VAR_0x8004, 24, BattlePark_SetPalmerRivalPositionX24
    CallIfEq VAR_0x8004, 25, BattlePark_SetPalmerRivalPositionX25
    CallIfEq VAR_0x8004, 26, BattlePark_SetPalmerRivalPositionX26
    ClearFlag FLAG_HIDE_BATTLE_PARK_PALMER
    AddObject LOCALID_PALMER
    LockObject LOCALID_PALMER
    ApplyMovement LOCALID_PALMER, BattlePark_Movement_PalmerRivalEnter
    ApplyMovement LOCALID_PLAYER, BattlePark_Movement_PlayerGetPushedBack
    WaitMovement
    PlaySE SEQ_SE_DP_WALL_HIT2
    BufferPlayerName 1
    Message BattlePark_Text_BigThudPalmer
    CloseMessage
    WaitTime 30, VAR_RESULT
    ApplyMovement LOCALID_PALMER, BattlePark_Movement_PalmerLookAround
    WaitMovement
    Message BattlePark_Text_WhatThe
    CloseMessage
    ApplyMovement LOCALID_PALMER, BattlePark_Movement_PalmerWalkOnSpotNorth
    WaitMovement
    Message BattlePark_Text_SorryAboutThat
    ApplyMovement LOCALID_PALMER, BattlePark_Movement_PalmerExclamationMark
    WaitMovement
    Message BattlePark_Text_YourePlayerFromTwinleaf
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 23, BattlePark_PalmerLeaveX23
    CallIfEq VAR_0x8004, 24, BattlePark_PalmerLeaveX24
    CallIfEq VAR_0x8004, 25, BattlePark_PalmerLeaveX25
    CallIfEq VAR_0x8004, 26, BattlePark_PalmerLeaveX26
    RemoveObject LOCALID_PALMER
    ClearFlag FLAG_HIDE_BATTLE_PARK_RIVAL
    AddObject LOCALID_RIVAL
    LockObject LOCALID_RIVAL
    ApplyMovement LOCALID_RIVAL, BattlePark_Movement_PalmerRivalEnter
    ApplyMovement LOCALID_PLAYER, BattlePark_Movement_PlayerGetPushedBack
    WaitMovement
    PlaySE SEQ_SE_DP_WALL_HIT2
    BufferRivalName 0
    BufferPlayerName 1
    Message BattlePark_Text_BigThudRival
    CloseMessage
    WaitTime 30, VAR_RESULT
    CallIfLt VAR_STARK_MOUNTAIN_ROOM_3_STATE, 1, BattlePark_MeasureUpBeforeStarkMountain
    CallIfGe VAR_STARK_MOUNTAIN_ROOM_3_STATE, 1, BattlePark_MeasureUpForMyQuest
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    CallIfEq VAR_0x8004, 23, BattlePark_RivalLeaveX23
    CallIfEq VAR_0x8004, 24, BattlePark_RivalLeaveX24
    CallIfEq VAR_0x8004, 25, BattlePark_RivalLeaveX25
    CallIfEq VAR_0x8004, 26, BattlePark_RivalLeaveX26
    RemoveObject LOCALID_RIVAL
    SetVar VAR_BATTLE_PARK_STATE, 1
    ReleaseAll
    End

BattlePark_MeasureUpBeforeStarkMountain:
    Message BattlePark_Text_MeasureUpBeforeStarkMountain
    Return

BattlePark_MeasureUpForMyQuest:
    Message BattlePark_Text_MeasureUpForMyQuest
    Return

BattlePark_SetPalmerRivalPositionX23:
    SetObjectEventPos LOCALID_PALMER, 23, 41
    SetObjectEventPos LOCALID_RIVAL, 23, 40
    Return

BattlePark_SetPalmerRivalPositionX24:
    SetObjectEventPos LOCALID_PALMER, 24, 41
    SetObjectEventPos LOCALID_RIVAL, 24, 40
    Return

BattlePark_SetPalmerRivalPositionX25:
    SetObjectEventPos LOCALID_PALMER, 25, 41
    SetObjectEventPos LOCALID_RIVAL, 25, 40
    Return

BattlePark_SetPalmerRivalPositionX26:
    SetObjectEventPos LOCALID_PALMER, 26, 41
    SetObjectEventPos LOCALID_RIVAL, 26, 40
    Return

BattlePark_PalmerLeaveX23:
    ApplyMovement LOCALID_PALMER, BattlePark_Movement_PalmerRivalLeaveWest
    ApplyMovement LOCALID_PLAYER, BattlePark_Movement_PlayerWatchPalmerRivalLeaveWest
    WaitMovement
    Return

BattlePark_PalmerLeaveX24:
    ApplyMovement LOCALID_PALMER, BattlePark_Movement_PalmerRivalLeaveWest
    ApplyMovement LOCALID_PLAYER, BattlePark_Movement_PlayerWatchPalmerRivalLeaveWest
    WaitMovement
    Return

BattlePark_PalmerLeaveX25:
    ApplyMovement LOCALID_PALMER, BattlePark_Movement_PalmerRivalLeaveEast
    ApplyMovement LOCALID_PLAYER, BattlePark_Movement_PlayerWatchPalmerRivalLeaveEast
    WaitMovement
    Return

BattlePark_PalmerLeaveX26:
    ApplyMovement LOCALID_PALMER, BattlePark_Movement_PalmerRivalLeaveEast
    ApplyMovement LOCALID_PLAYER, BattlePark_Movement_PlayerWatchPalmerRivalLeaveEast
    WaitMovement
    Return

BattlePark_RivalLeaveX23:
    ApplyMovement LOCALID_RIVAL, BattlePark_Movement_PalmerRivalLeaveWest
    ApplyMovement LOCALID_PLAYER, BattlePark_Movement_PlayerWatchPalmerRivalLeaveWest
    WaitMovement
    Return

BattlePark_RivalLeaveX24:
    ApplyMovement LOCALID_RIVAL, BattlePark_Movement_PalmerRivalLeaveWest
    ApplyMovement LOCALID_PLAYER, BattlePark_Movement_PlayerWatchPalmerRivalLeaveWest
    WaitMovement
    Return

BattlePark_RivalLeaveX25:
    ApplyMovement LOCALID_RIVAL, BattlePark_Movement_PalmerRivalLeaveEast
    ApplyMovement LOCALID_PLAYER, BattlePark_Movement_PlayerWatchPalmerRivalLeaveEast
    WaitMovement
    Return

BattlePark_RivalLeaveX26:
    ApplyMovement LOCALID_RIVAL, BattlePark_Movement_PalmerRivalLeaveEast
    ApplyMovement LOCALID_PLAYER, BattlePark_Movement_PlayerWatchPalmerRivalLeaveEast
    WaitMovement
    Return

    .balign 4, 0
BattlePark_Movement_PlayerGetPushedBack:
    Delay4 7
    WalkOnSpotFastSouth
    LockDir
    WalkFastNorth
    UnlockDir
    EndMovement

    .balign 4, 0
BattlePark_Movement_PlayerWatchPalmerRivalLeaveWest:
    Delay8
    WalkOnSpotNormalEast
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
BattlePark_Movement_PlayerWatchPalmerRivalLeaveEast:
    Delay8
    WalkOnSpotNormalWest
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
BattlePark_Movement_PalmerRivalEnter:
    WalkFastNorth 8
    EndMovement

    .balign 4, 0
BattlePark_Movement_PalmerLookAround:
    WalkOnSpotNormalWest
    WalkOnSpotNormalEast
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
BattlePark_Movement_PalmerWalkOnSpotNorth:
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
BattlePark_Movement_PalmerExclamationMark:
    EmoteExclamationMark
    EndMovement

    .balign 4, 0
BattlePark_Movement_PalmerRivalLeaveWest:
    WalkFastEast
    WalkFastNorth 8
    EndMovement

    .balign 4, 0
BattlePark_Movement_PalmerRivalLeaveEast:
    WalkFastWest
    WalkFastNorth 8
    EndMovement

BattlePark_Unused2:
    NPCMessage BattlePark_Text_MeasureUpForMyQuest
    End

BattlePark_Beauty:
    EventMessage BattlePark_Text_SeventhTrainerIsBoss
    End

BattlePark_SchoolKidM:
    EventMessage BattlePark_Text_BattleRealSuperstars
    End

BattlePark_ExpertF:
    NPCMessage BattlePark_Text_EarnedLotsOfBP
    End

BattlePark_BabyInPram:
    EventMessage BattlePark_Text_Aah
    End

BattlePark_PokefanM:
    NPCMessage BattlePark_Text_ImABabysittingTrainer
    End

BattlePark_MiddleAgedMan:
    NPCMessage BattlePark_Text_WorldsBestGatherHere
    End

BattlePark_AceTrainerM:
    NPCMessage BattlePark_Text_NoDetailCanBeOverlooked
    End

BattlePark_BlackBelt:
    NPCMessage BattlePark_Text_HookUpWithBeauty
    End

BattlePark_SignExchangeServiceCorner:
    ShowLandmarkSign BattlePark_Text_SignExchangeServiceCorner
    End

BattlePark_SignBattleTower:
    ShowLandmarkSign BattlePark_Text_SignBattleTower
    End

    .balign 4, 0
