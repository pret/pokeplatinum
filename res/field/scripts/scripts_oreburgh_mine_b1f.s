#include "macros/scrcmd.inc"
#include "res/text/bank/oreburgh_mine_b1f.h"
#include "res/field/events/events_oreburgh_mine_b1f.h"


    ScriptEntry OreburghMineB1F_OnTransition
    ScriptEntry OreburghMineB1F_Worker
    ScriptEntry OreburghMineB1F_Twin
    ScriptEntry OreburghMineB1F_Hiker
    ScriptEntryEnd

OreburghMineB1F_OnTransition:
    SetFlag FLAG_FIRST_ARRIVAL_OREBURGH_MINE
    SetFlag FLAG_HIDE_OREBURGH_MINE_B1F_HIKER
    CallIfEq VAR_ARCEUS_EVENT_STATE, 1, OreburghMineB1F_ShowHiker
    End

OreburghMineB1F_ShowHiker:
    ClearFlag FLAG_HIDE_OREBURGH_MINE_B1F_HIKER
    Return

OreburghMineB1F_Worker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghMineB1F_Text_EveryoneThatWorksInTheCoalMineKeepsTheirOwnPokemonWithThem
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghMineB1F_Twin:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Message OreburghMineB1F_Text_IFoundWhatIThoughtWereSomeRocksThenTheyStartedMoving
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghMineB1F_Hiker:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_COULDNT_RECEIVE_OREBURGH_MINE_B1F_FLAME_PLATE, OreburghMineB1F_TryGiveFlamePlateAgain
    Message OreburghMineB1F_Text_IFoundSomethingVeryInterestingSoonAfterArrivalYouMayHaveItIfYoudLike
    GoTo OreburghMineB1F_TryGiveFlamePlate
    End

OreburghMineB1F_TryGiveFlamePlate:
    SetVar VAR_0x8004, ITEM_FLAME_PLATE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, OreburghMineB1F_OhYouHaveAnOveradundanceOfThings
    Common_GiveItemQuantity
    Message OreburghMineB1F_Text_ImToldThatPlateWasCreatedAtTheSameTimeAsSinnoh
    CloseMessage
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8005, 3, OreburghMineB1F_HikerLeaveZ3
    GoToIfEq VAR_0x8005, 4, OreburghMineB1F_HikerLeaveZ4
    GoToIfEq VAR_0x8005, 5, OreburghMineB1F_HikerLeaveZ5
    End

OreburghMineB1F_HikerLeaveZ3:
    ApplyMovement LOCALID_HIKER, OreburghMineB1F_Movement_HikerLeaveZ3
    WaitMovement
    GoTo OreburghMineB1F_RemoveHiker
    End

OreburghMineB1F_HikerLeaveZ4:
    ApplyMovement LOCALID_HIKER, OreburghMineB1F_Movement_HikerLeaveZ4Or5
    WaitMovement
    GoTo OreburghMineB1F_RemoveHiker
    End

OreburghMineB1F_HikerLeaveZ5:
    ApplyMovement LOCALID_HIKER, OreburghMineB1F_Movement_HikerLeaveZ4Or5
    WaitMovement
    GoTo OreburghMineB1F_RemoveHiker
    End

OreburghMineB1F_RemoveHiker:
    PlayFanfare SEQ_SE_DP_KAIDAN2
    RemoveObject LOCALID_HIKER
    SetVar VAR_ARCEUS_EVENT_STATE, 2
    ReleaseAll
    End

OreburghMineB1F_OhYouHaveAnOveradundanceOfThings:
    SetFlag FLAG_COULDNT_RECEIVE_OREBURGH_MINE_B1F_FLAME_PLATE
    Message OreburghMineB1F_Text_OhYouHaveAnOveradundanceOfThings
    GoTo OreburghMineB1F_HikerEnd
    End

OreburghMineB1F_HikerEnd:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

OreburghMineB1F_TryGiveFlamePlateAgain:
    Message OreburghMineB1F_Text_AboutThatVeryInterestingThingIFoundYouMayHaveItIfYoudLike
    GoTo OreburghMineB1F_TryGiveFlamePlate
    End

    .balign 4, 0
OreburghMineB1F_Movement_HikerLeaveZ3:
    WalkNormalWest
    WalkNormalNorth 3
    EndMovement

    .balign 4, 0
OreburghMineB1F_Movement_HikerLeaveZ4Or5:
    WalkNormalNorth 3
    EndMovement
