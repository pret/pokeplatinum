#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_gate_1f.h"
#include "res/field/events/events_oreburgh_gate_1f.h"


    ScriptEntry OreburghGate1F_OnTransition
    ScriptEntry OreburghGate1F_Hiker
    ScriptEntry OreburghGate1F_HikerTrigger
    ScriptEntryEnd

OreburghGate1F_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_OREBURGH_GATE
    End

OreburghGate1F_Hiker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckBadgeAcquired BADGE_ID_COAL, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, OreburghGate1F_HikerGiveHM
    Message OreburghGate1F_Text_NowYouCanUseTheHiddenMoveRockSmashOnSmallBoulders
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghGate1F_HikerGiveHM:
    GoToIfSet FLAG_RECEIVED_HM06, OreburghGate1F_ThatHiddenMachineContainsRockSmash
    Message OreburghGate1F_Text_SoLetMeMakeAGiftOfThisHiddenMachineToYou
    SetVar VAR_0x8004, ITEM_HM06
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    Call OreburghGate1F_SetFlagReceivedHM06
    GoTo OreburghGate1F_ThatHiddenMachineContainsRockSmash

OreburghGate1F_ThatHiddenMachineContainsRockSmash:
    Message OreburghGate1F_Text_ThatHiddenMachineContainsRockSmash
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghGate1F_SetFlagReceivedHM06:
    SetFlag FLAG_RECEIVED_HM06
    SetVar VAR_OREBURGH_GATE_1F_HIKER_STATE, 2
    Return

OreburghGate1F_HikerTrigger:
    LockAll
    ApplyMovement LOCALID_HIKER, OreburghGate1F_Movement_HikerWalkToPlayer
    ApplyMovement LOCALID_PLAYER, OreburghGate1F_Movement_PlayerFaceHiker
    WaitMovement
    Message OreburghGate1F_Text_SoLetMeMakeAGiftOfThisHiddenMachineToYou
    SetVar VAR_0x8004, ITEM_HM06
    SetVar VAR_0x8005, 1
    Common_GiveItemQuantity
    Call OreburghGate1F_SetFlagReceivedHM06
    Message OreburghGate1F_Text_ThatHiddenMachineContainsRockSmash
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
OreburghGate1F_Movement_PlayerFaceHiker:
    Delay8
    WalkOnSpotNormalNorth
    EndMovement

    .balign 4, 0
OreburghGate1F_Movement_HikerWalkToPlayer:
    WalkOnSpotNormalSouth
    EmoteExclamationMark
    WalkNormalSouth
    EndMovement
