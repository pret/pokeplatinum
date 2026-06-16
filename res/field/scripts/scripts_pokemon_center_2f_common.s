#include "macros/scrcmd.inc"
#include "res/text/bank/pokemon_center_2f_common.h"
#include "res/text/bank/menu_entries.h"
#include "constants/map_object.h"


    ScriptEntry PokemonCenter2FCommon_OnResume
    ScriptEntry PokemonCenter2FCommon_AttendantColosseum
    ScriptEntry _051E
    ScriptEntry PokemonCenter2FCommon_AttendantUnionRoom
    ScriptEntry PokemonCenter2FCommon_Dummy9004
    ScriptEntry PokemonCenter2FCommon_Dummy9005
    ScriptEntry PokemonCenter2FCommon_Dummy9006
    ScriptEntry PokemonCenter2FCommon_Dummy9007
    ScriptEntry PokemonCenter2FCommon_Dummy9008
    ScriptEntry PokemonCenter2FCommon_Dummy9009
    ScriptEntry _06A0
    ScriptEntry PokemonCenter2FCommon_AttendantSignTrainerCard
    ScriptEntry PokemonCenter2FCommon_OnFrame_ExitColosseum
    ScriptEntry PokemonCenter2FCommon_OnFrame_ExitUnionRoom
    ScriptEntry PokemonCenter2FCommon_OnFrame_ExitColosseum
    ScriptEntry PokemonCenter2FCommon_OnFrame_ExitColosseum
    ScriptEntry PokemonCenter2FCommon_HasBadEggReturnCommon @ 0x2338
    ScriptEntryEnd

PokemonCenter2FCommon_OnResume:
    CallIfNe VAR_COMMUNICATION_LOAD_ACTION, 0, PokemonCenter2FCommon_HidePlayer
    End

PokemonCenter2FCommon_HidePlayer:
    HideObject LOCALID_PLAYER
    Return

PokemonCenter2FCommon_OnFrame_ExitColosseum:
    SetVar VAR_MAP_LOCAL_0, 13
    SetVar VAR_MAP_LOCAL_1, 5
    SetVar VAR_MAP_LOCAL_2, 2
    GoTo PokemonCenter2FCommon_PlayerEnter
    End

PokemonCenter2FCommon_OnFrame_ExitUnionRoom:
    SetVar VAR_MAP_LOCAL_0, 8
    SetVar VAR_MAP_LOCAL_1, 5
    SetVar VAR_MAP_LOCAL_2, 2
    GoTo PokemonCenter2FCommon_PlayerEnter
    End

PokemonCenter2FCommon_PlayerEnter:
    LockAll
    LoadDoorAnimation 0, 0, VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_2, ANIMATION_TAG_DOOR_1
    Call PokemonCenter2FCommon_DoorOpenAnimation
    ShowObject LOCALID_PLAYER
    ApplyMovement LOCALID_PLAYER, PokemonCenter2FCommon_Movement_PlayerEnter
    WaitMovement
    Call PokemonCenter2FCommon_DoorCloseAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenter2FCommon_Movement_PlayerWalkToGate
    WaitMovement
    LoadDoorAnimation 0, 0, VAR_MAP_LOCAL_0, VAR_MAP_LOCAL_1, ANIMATION_TAG_DOOR_1
    Call PokemonCenter2FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenter2FCommon_Movement_PlayerExitThroughGate
    WaitMovement
    Call PokemonCenter2FCommon_DoorCloseAnimation
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    SetVar VAR_COMMUNICATION_LOAD_ACTION, 0
    ReleaseAll
    End

    .balign 4, 0
PokemonCenter2FCommon_Movement_PlayerEnter:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
PokemonCenter2FCommon_Movement_PlayerWalkToGate:
    WalkNormalSouth
    EndMovement

    .balign 4, 0
PokemonCenter2FCommon_Movement_PlayerExitThroughGate:
    WalkNormalSouth 2
    EndMovement

PokemonCenter2FCommon_AttendantColosseum:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPartyHasBadEgg VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PokemonCenter2FCommon_HasBadEggEnd
    Message PokemonCenter2FCommon_Text_WelcomeToColosseum
    GoTo PokemonCenter2FCommon_BattleModeMenu
    End

PokemonCenter2FCommon_BattleModeMenu:
    Message PokemonCenter2FCommon_Text_WhichBattleMode
    InitGlobalTextListMenu 1, 1, 1, VAR_RESULT
    AddListMenuEntry MenuEntries_Text_BattlesForTwo, LIST_MENU_BUILDER_HEADER
    AddListMenuEntry MenuEntries_Text_SingleBattle, 0
    AddListMenuEntry MenuEntries_Text_DoubleBattle, 1
    AddListMenuEntry MenuEntries_Text_MixBattle, 2
    AddListMenuEntry MenuEntries_Text_BattlesForFour, LIST_MENU_BUILDER_HEADER
    AddListMenuEntry MenuEntries_Text_MultiBattle, 3
    AddListMenuEntry MenuEntries_Text_Info, 4
    AddListMenuEntry MenuEntries_Text_Exit2, 5
    ShowListMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PokemonCenter2FCommon_SingleBattle
    GoToIfEq VAR_0x8008, 1, PokemonCenter2FCommon_DoubleBattle
    GoToIfEq VAR_0x8008, 2, PokemonCenter2FCommon_MixBattle
    GoToIfEq VAR_0x8008, 3, PokemonCenter2FCommon_MultiBattle
    GoToIfEq VAR_0x8008, 4, PokemonCenter2FCommon_Info
    GoTo PokemonCenter2FCommon_Exit
    End

PokemonCenter2FCommon_Info:
    Message PokemonCenter2FCommon_Text_BattleModesInfo
    GoTo PokemonCenter2FCommon_BattleModeMenu
    End

PokemonCenter2FCommon_Exit:
    Message PokemonCenter2FCommon_Text_PleaseVisitAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenter2FCommon_SingleBattle:
    SetVar VAR_0x8004, 1
    GoTo PokemonCenter2FCommon_SingleDoubleBattle

PokemonCenter2FCommon_Unused:
    GoTo PokemonCenter2FCommon_SelectedValidBattleMode
    End

PokemonCenter2FCommon_DoubleBattle:
    SetVar VAR_0x8004, 2
    CountPartyNonEggs VAR_RESULT
    GoToIfLt VAR_RESULT, 2, PokemonCenter2FCommon_NeedTwoPokemonDoubleBattle
    GoTo PokemonCenter2FCommon_SingleDoubleBattle

PokemonCenter2FCommon_NeedTwoPokemonDoubleBattle:
    Message PokemonCenter2FCommon_Text_NeedTwoPokemonDoubleBattle
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenter2FCommon_MixBattle:
    SetVar VAR_0x8004, 3
    CountPartyNonEggs VAR_RESULT
    GoToIfLt VAR_RESULT, 3, PokemonCenter2FCommon_NeedThreePokemonMixBattle
    GoTo PokemonCenter2FCommon_SelectedValidBattleMode

PokemonCenter2FCommon_NeedThreePokemonMixBattle:
    Message PokemonCenter2FCommon_Text_NeedThreePokemonMixBattle
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenter2FCommon_MultiBattle:
    SetVar VAR_0x8004, 4
    CountPartyNonEggs VAR_RESULT
    GoToIfLt VAR_RESULT, 3, PokemonCenter2FCommon_NeedThreePokemonMultiBattle
    GoTo PokemonCenter2FCommon_SelectedValidBattleMode

PokemonCenter2FCommon_NeedThreePokemonMultiBattle:
    Message PokemonCenter2FCommon_Text_NeedThreePokemonMultiBattle
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenter2FCommon_SingleDoubleBattle:
    OpenBattleRegulationMenu VAR_RESULT
    GoToIfEq VAR_RESULT, 1, PokemonCenter2FCommon_SelectedValidBattleMode
    GoToIfEq VAR_RESULT, 3, PokemonCenter2FCommon_SelectedValidBattleMode
    GoTo PokemonCenter2FCommon_Exit
    End

PokemonCenter2FCommon_SelectedValidBattleMode:
    SetVar VAR_0x8005, 0
    GoTo PokemonCenter2FCommon_HealPartySaveBeforeBattle
    End

PokemonCenter2FCommon_Unused2:
    SetVar VAR_0x8005, 0
    GoTo PokemonCenter2FCommon_HealPartySaveBeforeBattle
    End

PokemonCenter2FCommon_Unused3:
    SetVar VAR_0x8005, 1
    GoTo PokemonCenter2FCommon_HealPartySaveBeforeBattle
    End

PokemonCenter2FCommon_Unused4:
    SetVar VAR_0x8005, 2
    GoTo PokemonCenter2FCommon_HealPartySaveBeforeBattle
    End

PokemonCenter2FCommon_Unused5:
    SetVar VAR_0x8005, 3
    GoTo PokemonCenter2FCommon_HealPartySaveBeforeBattle
    End

PokemonCenter2FCommon_Unused6:
    SetVar VAR_0x8005, 4
    GoTo PokemonCenter2FCommon_HealPartySaveBeforeBattle
    End

PokemonCenter2FCommon_HealPartySaveBeforeBattle:
    HealParty
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 1, PokemonCenter2FCommon_DecideLeader
    GoTo PokemonCenter2FCommon_Exit
    End

PokemonCenter2FCommon_DecideLeader:
    CallIfEq VAR_0x8004, 1, PokemonCenter2FCommon_DecideWhichOfTwoBecomesLeader
    CallIfEq VAR_0x8004, 2, PokemonCenter2FCommon_DecideWhichOfTwoBecomesLeader
    CallIfEq VAR_0x8004, 3, PokemonCenter2FCommon_DecideWhichOfTwoBecomesLeader
    CallIfEq VAR_0x8004, 4, PokemonCenter2FCommon_DecideWhichOfFourBecomesLeader
    InitGlobalTextMenu 30, 1, 0, VAR_RESULT
    SetMenuXOriginToRight
    AddMenuEntryImm MenuEntries_Text_JoinGroup, 0
    AddMenuEntryImm MenuEntries_Text_BecomeLeader, 1
    AddMenuEntryImm MenuEntries_Text_Exit, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PokemonCenter2FCommon_JoinGroup
    GoToIfEq VAR_0x8008, 1, PokemonCenter2FCommon_BecomeLeader
    GoTo PokemonCenter2FCommon_Exit
    End

PokemonCenter2FCommon_DecideWhichOfTwoBecomesLeader:
    Message PokemonCenter2FCommon_Text_DecideWhichOfTwoBecomesLeader
    Return

PokemonCenter2FCommon_DecideWhichOfFourBecomesLeader:
    Message PokemonCenter2FCommon_Text_DecideWhichOfFourBecomesLeader
    Return

PokemonCenter2FCommon_JoinGroup:
    Message PokemonCenter2FCommon_Text_CommsWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, PokemonCenter2FCommon_DecideLeader
    CloseMessage
    StartBattleClient VAR_0x8004, VAR_0x8005, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, PokemonCenter2FCommon_JoinGroupCancel
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, PokemonCenter2FCommon_JoinGroupError
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_4, PokemonCenter2FCommon_JoinGroupRet4
    GoTo PokemonCenter2FCommon_EnterColosseum
    End

PokemonCenter2FCommon_JoinGroupCancel:
    EndCommunication
    GoTo PokemonCenter2FCommon_DecideLeader
    End

PokemonCenter2FCommon_JoinGroupError:
    EndCommunication
    Message PokemonCenter2FCommon_Text_RepeatProcessFromBeginning
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenter2FCommon_JoinGroupRet4:
    EndCommunication
    Message PokemonCenter2FCommon_Text_PleaseVisitAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenter2FCommon_BecomeLeader:
    Message PokemonCenter2FCommon_Text_CommsWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, PokemonCenter2FCommon_DecideLeader
    CloseMessage
    StartBattleServer VAR_0x8004, VAR_0x8005, 0, VAR_RESULT
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_CANCEL, PokemonCenter2FCommon_BecomeLeaderCancel
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_ERROR, PokemonCenter2FCommon_BecomeLeaderError
    GoToIfEq VAR_RESULT, COMM_CLUB_RET_4, PokemonCenter2FCommon_BecomeLeaderRet4
    GoTo PokemonCenter2FCommon_EnterColosseum
    End

PokemonCenter2FCommon_BecomeLeaderCancel:
    EndCommunication
    GoTo PokemonCenter2FCommon_DecideLeader
    End

PokemonCenter2FCommon_BecomeLeaderError:
    EndCommunication
    Message PokemonCenter2FCommon_Text_RepeatProcessFromBeginning
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenter2FCommon_BecomeLeaderRet4:
    EndCommunication
    Message PokemonCenter2FCommon_Text_PleaseVisitAgain
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenter2FCommon_EnterColosseum:
    SetVar VAR_COMMUNICATION_LOAD_ACTION, 1
    SetFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    MessageNoSkip PokemonCenter2FCommon_Text_MembersGatheredEnterRoom
    WaitABPressTime 45
    ScrCmd_135 96
    CloseMessage
    LoadDoorAnimation 0, 0, 13, 5, ANIMATION_TAG_DOOR_1
    Call PokemonCenter2FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenter2FCommon_Movement_PlayerEnterThroughGate
    WaitMovement
    Call PokemonCenter2FCommon_DoorCloseAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenter2FCommon_Movement_PlayerWalkToDoor
    WaitMovement
    LoadDoorAnimation 0, 0, 13, 2, ANIMATION_TAG_DOOR_1
    Call PokemonCenter2FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenter2FCommon_Movement_PlayerEnterDoor
    WaitMovement
    Call PokemonCenter2FCommon_DoorCloseAnimation
    GoToIfEq VAR_0x8004, 4, PokemonCenter2FCommon_WarpColosseum4P
    GetCurNetID VAR_RESULT
    AddVar VAR_RESULT, 7
    WarpToColosseum MAP_HEADER_COMMUNICATION_CLUB_COLOSSEUM_2P, 0, VAR_RESULT, 11, 0
    End

PokemonCenter2FCommon_WarpColosseum4P:
    GetCurNetID VAR_RESULT
    AddVar VAR_RESULT, 6
    WarpToColosseum MAP_HEADER_COMMUNICATION_CLUB_COLOSSEUM_4P, 0, VAR_RESULT, 11, 0
    End

PokemonCenter2FCommon_DoorOpenAnimation:
    PlayDoorOpenAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    Return

PokemonCenter2FCommon_DoorCloseAnimation:
    PlayDoorCloseAnimation ANIMATION_TAG_DOOR_1
    WaitForAnimation ANIMATION_TAG_DOOR_1
    UnloadAnimation ANIMATION_TAG_DOOR_1
    Return

_051E:
    StartLinkBattle
    FieldCommEnterBattleRoom
    End

    .balign 4, 0
PokemonCenter2FCommon_Movement_PlayerEnterThroughGate:
    WalkNormalEast
    WalkNormalNorth 2
    EndMovement

    .balign 4, 0
PokemonCenter2FCommon_Movement_PlayerWalkToDoor:
    WalkNormalNorth
    EndMovement

    .balign 4, 0
PokemonCenter2FCommon_Movement_PlayerEnterDoor:
    WalkNormalNorth
    SetInvisible
    EndMovement

PokemonCenter2FCommon_AttendantUnionRoom:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    CheckPartyHasBadEgg VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, PokemonCenter2FCommon_HasBadEggEnd
    GoTo PokemonCenter2FCommon_UnionRoomMenu
    End

PokemonCenter2FCommon_UnionRoomMenu:
    Message PokemonCenter2FCommon_Text_WelcomeEnterUnionRoom
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_Yes, 0
    AddMenuEntryImm MenuEntries_Text_No, 1
    AddMenuEntryImm MenuEntries_Text_Info, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PokemonCenter2FCommon_TryEnterUnionRoom
    GoToIfEq VAR_0x8008, 1, PokemonCenter2FCommon_Exit
    GoToIfEq VAR_0x8008, 2, PokemonCenter2FCommon_UnionRoomInfo
    GoTo PokemonCenter2FCommon_Exit
    End

PokemonCenter2FCommon_UnionRoomInfo:
    Message PokemonCenter2FCommon_Text_UnionRoomInfo
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, PokemonCenter2FCommon_TryEnterUnionRoom
    GoTo PokemonCenter2FCommon_Exit
    End

PokemonCenter2FCommon_TryEnterUnionRoom:
    SetVar VAR_0x8004, 9
    HealParty
    Message PokemonCenter2FCommon_Text_CommsWillBeLaunched
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_NO, PokemonCenter2FCommon_Exit
    TryRevertPartyPokemonForms VAR_RESULT
    GoToIfEq VAR_RESULT, 0xFF, PokemonCenter2FCommon_GriseousOrbCouldNotBeRemoved
    SetVar VAR_COMMUNICATION_LOAD_ACTION, 2
    SetFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    Common_SaveGame
    SetVar VAR_RESULT, VAR_MAP_LOCAL_0
    GoToIfEq VAR_RESULT, 1, PokemonCenter2FCommon_EnterUnionRoom
    SetVar VAR_COMMUNICATION_LOAD_ACTION, 0
    ClearFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    GoTo PokemonCenter2FCommon_Exit

PokemonCenter2FCommon_EnterUnionRoom:
    SetVar VAR_COMMUNICATION_LOAD_ACTION, 2
    SetFlag FLAG_COMMUNICATION_CLUB_ACCESSIBLE
    Message PokemonCenter2FCommon_Text_EnjoyUnionRoom
    CloseMessage
    LoadDoorAnimation 0, 0, 8, 5, ANIMATION_TAG_DOOR_1
    Call PokemonCenter2FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenter2FCommon_Movement_PlayerEnterThroughGate
    WaitMovement
    Call PokemonCenter2FCommon_DoorCloseAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenter2FCommon_Movement_PlayerWalkToDoor
    WaitMovement
    LoadDoorAnimation 0, 0, 8, 2, ANIMATION_TAG_DOOR_1
    Call PokemonCenter2FCommon_DoorOpenAnimation
    ApplyMovement LOCALID_PLAYER, PokemonCenter2FCommon_Movement_PlayerEnterDoor
    WaitMovement
    Call PokemonCenter2FCommon_DoorCloseAnimation
    ReleaseAll
    ScrCmd_153
    End

PokemonCenter2FCommon_GriseousOrbCouldNotBeRemoved:
    Common_GriseousOrbCouldNotBeRemoved
    End

PokemonCenter2FCommon_Dummy9004:
    End

PokemonCenter2FCommon_Dummy9005:
    End

PokemonCenter2FCommon_Dummy9006:
    End

PokemonCenter2FCommon_Dummy9007:
    End

PokemonCenter2FCommon_Dummy9008:
    End

PokemonCenter2FCommon_Dummy9009:
    End

_06A0:
    WaitForTransition
    ScrCmd_0A3
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    End

PokemonCenter2FCommon_AttendantSignTrainerCard:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    SetFlag FLAG_UNK_0x00AA
    Message PokemonCenter2FCommon_Text_YouMaySignTrainerCard
    GoTo PokemonCenter2FCommon_SignTrainerCardMenu
    End

PokemonCenter2FCommon_SignTrainerCardMenu:
    Message PokemonCenter2FCommon_Text_WouldYouSignTrainerCard
    InitGlobalTextMenu 1, 1, 0, VAR_RESULT
    AddMenuEntryImm MenuEntries_Text_Yes, 0
    AddMenuEntryImm MenuEntries_Text_No, 1
    AddMenuEntryImm MenuEntries_Text_Info, 2
    ShowMenu
    SetVar VAR_0x8008, VAR_RESULT
    GoToIfEq VAR_0x8008, 0, PokemonCenter2FCommon_SignTrainerCard
    GoToIfEq VAR_0x8008, 1, PokemonCenter2FCommon_SignTrainerCardEnd
    GoToIfEq VAR_0x8008, 2, PokemonCenter2FCommon_SignTrainerCardInfo
    GoTo PokemonCenter2FCommon_SignTrainerCardEnd
    End

PokemonCenter2FCommon_SignTrainerCardInfo:
    Message PokemonCenter2FCommon_Text_SignTrainerCardInfo
    GoTo PokemonCenter2FCommon_SignTrainerCardMenu
    End

PokemonCenter2FCommon_SignTrainerCard:
    CloseMessage
    FadeScreenOut
    WaitFadeScreen
    StartSignatureApp
    ReturnToField
    FadeScreenIn
    WaitFadeScreen
    GoTo PokemonCenter2FCommon_SignTrainerCardEnd
    End

PokemonCenter2FCommon_SignTrainerCardEnd:
    Message PokemonCenter2FCommon_Text_PleaseVisitAgain2
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenter2FCommon_HasBadEggEnd:
    Call PokemonCenter2FCommon_AtLeastOnePokemonCantBeTaken
    WaitButton
    CloseMessage
    ReleaseAll
    End

PokemonCenter2FCommon_HasBadEggReturnCommon:
    Call PokemonCenter2FCommon_AtLeastOnePokemonCantBeTaken
    ReturnCommonScript
    End

PokemonCenter2FCommon_AtLeastOnePokemonCantBeTaken:
    Message PokemonCenter2FCommon_Text_AtLeastOnePokemonCantBeTaken
    Return

    .balign 4, 0
