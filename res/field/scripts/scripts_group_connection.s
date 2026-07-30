#include "macros/scrcmd.inc"
#include "res/text/bank/group_connection.h"


    ScriptEntry GroupConnections_AceTrainerM
    ScriptEntryEnd

GroupConnections_AceTrainerM:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_PLAYER_OVERRIDE, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_AskJoinAGroup
    Call GroupConnection_CheckCanJoinGroup
    GoToIfEq VAR_RESULT, TRUE, GroupConnection_AskLeaveGroupAndJoinOther
    GoTo GroupConnection_AskLeaveGroupAndMakeNewOne

GroupConnection_AskLeaveGroupAndJoinOther:
    DoGroupConnectionAction GC_ACTION_BUFFER_LEADER_NAME, 1, 0
    DoGroupConnectionAction GC_ACTION_BUFFER_GROUP_NAME, 1, 1
    Message GroupConnection_Text_LeaveGroupAndJoinOther
    GoTo GroupConnection_MenuMakeOrJoinGroup

GroupConnection_AskLeaveGroupAndMakeNewOne:
    DoGroupConnectionAction GC_ACTION_BUFFER_LEADER_NAME, 1, 0
    DoGroupConnectionAction GC_ACTION_BUFFER_GROUP_NAME, 1, 1
    Message GroupConnection_Text_LeaveGroupAndMakeNewOne
    GoTo GroupConnection_MenuMakeGroup
    End

GroupConnection_AskJoinAGroup:
    Message GroupConnection_Text_WantToJoinAGroup
GroupConnection_CheckWhichMenu:
    Call GroupConnection_CheckCanJoinGroup
    GoToIfEq VAR_RESULT, TRUE, GroupConnection_MenuMakeOrJoinGroup
    GoTo GroupConnection_MenuMakeGroup

GroupConnection_MenuMakeGroup:
    InitLocalTextMenu 1, 1, 0, VAR_0x8004
    AddMenuEntryImm GroupConnection_Text_MakeGroup, 1
    AddMenuEntryImm GroupConnection_Text_Info, 3
    AddMenuEntryImm GroupConnection_Text_Exit, 4
    ShowMenu
    GoTo GroupConnection_HandleMenuInput

GroupConnection_MenuMakeOrJoinGroup:
    InitLocalTextMenu 1, 1, 0, VAR_0x8004
    AddMenuEntryImm GroupConnection_Text_MakeGroup, 1
    AddMenuEntryImm GroupConnection_Text_JoinGroup, 2
    AddMenuEntryImm GroupConnection_Text_Info, 3
    AddMenuEntryImm GroupConnection_Text_Exit, 4
    ShowMenu
GroupConnection_HandleMenuInput:
    SetVar VAR_0x8008, VAR_0x8004
    GoToIfEq VAR_0x8008, 1, GroupConnection_TryMakeGroup
    GoToIfEq VAR_0x8008, 2, GroupConnection_JoinWhichGroup
    GoToIfEq VAR_0x8008, 3, GroupConnection_Info
    GoToIfEq VAR_0x8008, 4, GroupConnection_ThatsTooBad
    GoTo GroupConnection_ThatsTooBad

GroupConnection_CheckCanJoinGroup:
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_PLAYER_ORIGINAL, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_CheckCanJoinGroupQueue0
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_OVERRIDE, RECORD_MIXED_RNG_PLAYER_ORIGINAL, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_CanJoinGroup
GroupConnection_CheckCanJoinGroupQueue0:
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_QUEUE_0, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_CheckCanJoinGroupQueue1
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_OVERRIDE, RECORD_MIXED_RNG_QUEUE_0, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_CanJoinGroup
GroupConnection_CheckCanJoinGroupQueue1:
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_QUEUE_1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_CheckCanJoinGroupQueue2
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_OVERRIDE, RECORD_MIXED_RNG_QUEUE_1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_CanJoinGroup
GroupConnection_CheckCanJoinGroupQueue2:
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_QUEUE_2, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_CheckCanJoinGroupQueue3
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_OVERRIDE, RECORD_MIXED_RNG_QUEUE_2, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_CanJoinGroup
GroupConnection_CheckCanJoinGroupQueue3:
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_QUEUE_3, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_NoGroupToJoin
GroupConnection_CanJoinGroup:
    SetVar VAR_RESULT, TRUE
    Return

GroupConnection_NoGroupToJoin:
    SetVar VAR_RESULT, FALSE
    Return

GroupConnection_TryMakeGroup:
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_PLAYER_ORIGINAL, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_NameGroup
    Message GroupConnection_Text_GroupWillBeDisbanded
    ShowYesNoMenu VAR_RESULT
    GoToIfNe VAR_RESULT, MENU_YES, GroupConnection_ThatsTooBad
GroupConnection_NameGroup:
    Message GroupConnection_Text_NameYourGroup
    WaitABPress
    FadeScreenOut
    WaitFadeScreen
    CloseMessage
    DoGroupConnectionAction GC_ACTION_OPEN_GROUP_NAMING_SCREEN, VAR_RESULT
    FadeScreenIn
    WaitFadeScreen
    GoToIfEq VAR_RESULT, 1, GroupConnection_ThatsTooBad
    GoToIfEq VAR_RESULT, 2, GroupConnection_AlreadyGroupWithThatName
    DoGroupConnectionAction GC_ACTION_MAKE_NEW_GROUP
    DoGroupConnectionAction GC_ACTION_BUFFER_GROUP_NAME, 0, 0
    DoGroupConnectionAction GC_ACTION_BUFFER_LEADER_NAME, 0, 1
    Message GroupConnection_Text_ThatsAGreatName
    WaitButton
    GoTo GroupConnection_End

GroupConnection_AlreadyGroupWithThatName:
    Message GroupConnection_Text_AlreadyGroupWithThatName
    WaitButton
    GoTo GroupConnection_End

GroupConnection_JoinWhichGroup:
    Message GroupConnection_Text_JoinWhichGroup
    InitLocalTextMenu 1, 1, 0, VAR_0x8004
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_PLAYER_ORIGINAL, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_TryAddMenuEntryGroupQueue0
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_OVERRIDE, RECORD_MIXED_RNG_PLAYER_ORIGINAL, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, GroupConnection_TryAddMenuEntryGroupQueue0
    DoGroupConnectionAction GC_ACTION_BUFFER_GROUP_NAME, 0, 0
    AddMenuEntryImm GroupConnection_Text_GroupPlayerOriginal, 0
GroupConnection_TryAddMenuEntryGroupQueue0:
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_QUEUE_0, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_TryAddMenuEntryGroupQueue1
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_OVERRIDE, RECORD_MIXED_RNG_QUEUE_0, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, GroupConnection_TryAddMenuEntryGroupQueue1
    DoGroupConnectionAction GC_ACTION_BUFFER_GROUP_NAME, 2, 1
    AddMenuEntryImm GroupConnection_Text_GroupQueue0, 2
GroupConnection_TryAddMenuEntryGroupQueue1:
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_QUEUE_1, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_TryAddMenuEntryGroupQueue2
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_OVERRIDE, RECORD_MIXED_RNG_QUEUE_1, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, GroupConnection_TryAddMenuEntryGroupQueue2
    DoGroupConnectionAction GC_ACTION_BUFFER_GROUP_NAME, 3, 2
    AddMenuEntryImm GroupConnection_Text_GroupQueue1, 3
GroupConnection_TryAddMenuEntryGroupQueue2:
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_QUEUE_2, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_TryAddMenuEntryGroupQueue3
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_OVERRIDE, RECORD_MIXED_RNG_QUEUE_2, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, GroupConnection_TryAddMenuEntryGroupQueue3
    DoGroupConnectionAction GC_ACTION_BUFFER_GROUP_NAME, 4, 3
    AddMenuEntryImm GroupConnection_Text_GroupQueue2, 4
GroupConnection_TryAddMenuEntryGroupQueue3:
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_VALID, RECORD_MIXED_RNG_QUEUE_3, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, GroupConnection_HandleJoinGroupMenuInput
    DoGroupConnectionAction GC_ACTION_CHECK_IS_ENTRY_OVERRIDE, RECORD_MIXED_RNG_QUEUE_3, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, GroupConnection_HandleJoinGroupMenuInput
    DoGroupConnectionAction GC_ACTION_BUFFER_GROUP_NAME, 5, 4
    AddMenuEntryImm GroupConnection_Text_GroupQueue3, 5
GroupConnection_HandleJoinGroupMenuInput:
    AddMenuEntryImm GroupConnection_Text_GroupSelectionExit, 6
    ShowMenu
    GoToIfEq VAR_0x8004, 6, GroupConnection_ThatsTooBad
    GoToIfEq VAR_0x8004, -2, GroupConnection_ThatsTooBad
    DoGroupConnectionAction GC_ACTION_BUFFER_GROUP_NAME, VAR_0x8004, 0
    DoGroupConnectionAction GC_ACTION_BUFFER_LEADER_NAME, VAR_0x8004, 1
    Message GroupConnection_Text_JoinThisGroup
    ShowYesNoMenu VAR_RESULT
    GoToIfNe VAR_RESULT, MENU_YES, GroupConnection_JoinWhichGroup
    DoGroupConnectionAction GC_ACTION_JOIN_GROUP, VAR_0x8004
    BufferPlayerName 0
    DoGroupConnectionAction GC_ACTION_BUFFER_GROUP_NAME, VAR_0x8004, 1
    Message GroupConnection_Text_NowAMemberOfGroup
    WaitButton
    GoTo GroupConnection_End

GroupConnection_Info:
    Message GroupConnection_Text_GroupInfo
    WaitABPress
    GoTo GroupConnection_CheckWhichMenu

GroupConnection_ThatsTooBad:
    Message GroupConnection_Text_ThatsTooBad
    WaitButton
GroupConnection_End:
    CloseMessage
    ReleaseAll
    End
