#include "macros/scrcmd.inc"
#include "res/text/bank/mt_coronet_2f.h"
#include "res/field/events/events_mt_coronet_2f.h"


    ScriptEntry MtCoronet2F_CavePainting
    ScriptEntry MtCoronet2F_TriggerLooker
    ScriptEntry MtCoronet2F_Looker
    ScriptEntry MtCoronet2F_CavePaintingShards
    ScriptEntryEnd

MtCoronet2F_CavePainting:
    EventMessage MtCoronet2F_Text_ThereAppearsToBeACavePaintingFromAnAncientTime
    End

MtCoronet2F_CavePaintingShards:
    NPCMessage MtCoronet2F_Text_ShardsAreAllThatRemainOfTheAncientCavePainting
    End

MtCoronet2F_TriggerLooker:
    LockAll
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    SetVar VAR_MT_CORONET_2F_STATE, 2
    SetObjectEventPos LOCALID_LOOKER, 20, 25
    SetObjectEventMovementType LOCALID_LOOKER, MOVEMENT_TYPE_LOOK_WEST
    SetObjectEventDir LOCALID_LOOKER, DIR_WEST
    ClearFlag FLAG_HIDE_MT_CORONET_2F_LOOKER
    AddObject LOCALID_LOOKER
    ApplyMovement LOCALID_LOOKER, MtCoronet2F_Movement_LookerNoticePlayer
    WaitMovement
    Common_SetLookerBGM
    CallIfEq VAR_0x8005, 24, MtCoronet2F_LookerWalkToPlayerZ24
    CallIfEq VAR_0x8005, 25, MtCoronet2F_LookerWalkToPlayerZ25
    CallIfEq VAR_0x8005, 26, MtCoronet2F_LookerWalkToPlayerZ26
    Message MtCoronet2F_Text_ObserveIfYouWillThatHole
    ApplyMovement LOCALID_LOOKER, MtCoronet2F_Movement_LookerWalkOnSpotSouth
    WaitMovement
    Message MtCoronet2F_Text_AreYouTrainerEnoughToAdvanceShowMeIfYouWill
    ApplyMovement LOCALID_LOOKER, MtCoronet2F_Movement_LookerWalkOnSpotWest
    WaitMovement
    Message MtCoronet2F_Text_YouAreFarSuperiorToMeAllICanDoNowIsGiveYouThis
    SetVar VAR_0x8004, ITEM_BLACK_FLUTE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, MtCoronet2F_BagIsFull
    Common_GiveItemQuantity
    Call MtCoronet2F_PleaseYouMustStopTeamGalactic
    Common_FadeToDefaultMusic4
    ReleaseAll
    End

MtCoronet2F_PleaseYouMustStopTeamGalactic:
    SetFlag FLAG_RECEIVED_MT_CORONET_2F_BLACK_FLUTE
    Message MtCoronet2F_Text_PleaseYouMustStopTeamGalactic
    WaitButton
    CloseMessage
    Return

MtCoronet2F_BagIsFull:
    Call MtCoronet2F_YourBagItIsFull
    Common_FadeToDefaultMusic4
    ReleaseAll
    End

MtCoronet2F_YourBagItIsFull:
    Message MtCoronet2F_Text_YourBagItIsFull
    WaitButton
    CloseMessage
    Return

MtCoronet2F_LookerWalkToPlayerZ24:
    ApplyMovement LOCALID_LOOKER, MtCoronet2F_Movement_LookerWalkToPlayerZ24
    ApplyMovement LOCALID_PLAYER, MtCoronet2F_Movement_PlayerFaceLooker
    WaitMovement
    Return

MtCoronet2F_LookerWalkToPlayerZ25:
    ApplyMovement LOCALID_LOOKER, MtCoronet2F_Movement_LookerWalkToPlayerZ25
    ApplyMovement LOCALID_PLAYER, MtCoronet2F_Movement_PlayerFaceLooker
    WaitMovement
    Return

MtCoronet2F_LookerWalkToPlayerZ26:
    ApplyMovement LOCALID_LOOKER, MtCoronet2F_Movement_LookerWalkToPlayerZ26
    ApplyMovement LOCALID_PLAYER, MtCoronet2F_Movement_PlayerFaceLooker
    WaitMovement
    Return

    .balign 4, 0
MtCoronet2F_Movement_LookerNoticePlayer:
    WalkFastWest 4
    Delay8
    EmoteExclamationMark
    Delay8
    EndMovement

    .balign 4, 0
MtCoronet2F_Movement_LookerWalkToPlayerZ24:
    WalkFastWest 4
    WalkFastNorth
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
MtCoronet2F_Movement_LookerWalkToPlayerZ25:
    WalkFastWest 4
    EndMovement

    .balign 4, 0
MtCoronet2F_Movement_LookerWalkToPlayerZ26:
    WalkFastWest 4
    WalkFastSouth
    WalkOnSpotFastWest
    EndMovement

    .balign 4, 0
MtCoronet2F_Movement_LookerWalkOnSpotSouth:
    WalkOnSpotNormalSouth
    EndMovement

    .balign 4, 0
MtCoronet2F_Movement_LookerWalkOnSpotWest:
    WalkOnSpotNormalWest
    EndMovement

    .balign 4, 0
MtCoronet2F_Movement_PlayerFaceLooker:
    Delay8 4
    WalkOnSpotNormalEast
    EndMovement

MtCoronet2F_Looker:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfUnset FLAG_RECEIVED_MT_CORONET_2F_BLACK_FLUTE, MtCoronet2F_TryAgainGiveBlackFlute
    Message MtCoronet2F_Text_PleaseYouMustStopTeamGalactic
    WaitButton
    CloseMessage
    ReleaseAll
    End

MtCoronet2F_TryAgainGiveBlackFlute:
    Message MtCoronet2F_Text_PleaseStopTeamGalacticAllICanDoNowIsGiveYouThis
    SetVar VAR_0x8004, ITEM_BLACK_FLUTE
    SetVar VAR_0x8005, 1
    GoToIfCannotFitItem VAR_0x8004, VAR_0x8005, VAR_RESULT, MtCoronet2F_BagIsFullAgain
    Common_GiveItemQuantity
    Call MtCoronet2F_PleaseYouMustStopTeamGalactic
    ReleaseAll
    End

MtCoronet2F_BagIsFullAgain:
    Call MtCoronet2F_YourBagItIsFull
    ReleaseAll
    End

    .balign 4, 0
