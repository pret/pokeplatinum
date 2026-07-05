#include "macros/scrcmd.inc"
#include "res/text/bank/field_moves.h"


    ScriptEntry FieldMoves_CutTree
    ScriptEntry FieldMoves_Rock
    ScriptEntry FieldMoves_Boulder
    ScriptEntry FieldMoves_RockyWall
    ScriptEntry FieldMoves_Water
    ScriptEntry FieldMoves_Fog_Unused
    ScriptEntry FieldMoves_Waterfall
    ScriptEntry FieldMoves_Dummy8
    ScriptEntry FieldMoves_UseCutFromMenu
    ScriptEntry FieldMoves_UseRockSmashFromMenu
    ScriptEntry FieldMoves_UseStrengthFromMenu
    ScriptEntry FieldMoves_UseRockClimbFromMenu
    ScriptEntry FieldMoves_UseSurfFromMenu
    ScriptEntry FieldMoves_UseWaterfallFromMenu
    ScriptEntry FieldMoves_UseDefogFromMenu
    ScriptEntry FieldMoves_UseFlashFromMenu
    ScriptEntryEnd

FieldMoves_CutTree:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FindPartySlotWithMove VAR_RESULT, MOVE_CUT
    GoToIfEq VAR_RESULT, MAX_PARTY_SIZE, FieldMoves_CantUseCut
    CheckBadgeAcquired BADGE_ID_FOREST, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, FieldMoves_CantUseCut
    Message FieldMoves_Text_WouldYouLikeToUseCut
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FieldMoves_UseCutFromField
    CloseMessage
    GoTo FieldMoves_End
    End

FieldMoves_CantUseCut:
    Message FieldMoves_Text_TreeLooksLikeCanBeCut
    GetCurrentMapID VAR_0x8004
    CallIfEq VAR_0x8004, MAP_HEADER_ETERNA_FOREST, FieldMoves_TryEnableCherylCutscene
    WaitButton
    CloseMessage
    GoTo FieldMoves_End
    End

FieldMoves_UseCutFromField:
    FindPartySlotWithMove VAR_RESULT, MOVE_CUT
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedCut
    CloseMessage
    PlayHMCutIn VAR_0x8004
    StartDestroyObstacleAnimation 0, VAR_0x8005
    WaitTime 7, VAR_RESULT
    RemoveObject VAR_LAST_TALKED
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_CUT, VAR_0x8004
FieldMoves_WaitForCutAnimFromField:
    WaitTime 1, VAR_RESULT
    GoToIfEq VAR_0x8005, 0, FieldMoves_WaitForCutAnimFromField
    GoTo FieldMoves_End
    End

FieldMoves_UseCutFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedCut
    CloseMessage
    PlayHMCutIn VAR_0x8000
    StartDestroyObstacleAnimation 0, VAR_0x8005
    WaitTime 7, VAR_RESULT
    RemoveObject VAR_LAST_TALKED
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_CUT, VAR_0x8004
FieldMoves_WaitForCutAnimFromMenu:
    WaitTime 1, VAR_RESULT
    GoToIfEq VAR_0x8005, 0, FieldMoves_WaitForCutAnimFromMenu
    ReleaseAll
    End

FieldMoves_TryEnableCherylCutscene:
    GoToIfNe VAR_ETERNA_FOREST_CHERYL_OLD_CHATEAU_CUTSCENE_STATE, 0, FieldMoves_DontEnableCherylCutscene
    GoToIfNe VAR_ETERNA_FOREST_FOLLOWER_CHERYL_STATE, 1, FieldMoves_DontEnableCherylCutscene
    Call FieldMoves_CheckPositionForCherylCutscene
    GoToIfEq VAR_RESULT, FALSE, FieldMoves_DontEnableCherylCutscene
    SetVar VAR_ETERNA_FOREST_CHERYL_OLD_CHATEAU_CUTSCENE_STATE, 1
    Return

FieldMoves_CheckPositionForCherylCutscene:
    SetVar VAR_RESULT, FALSE
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 73, FieldMoves_CheckPositionX73
    GoToIfEq VAR_0x8004, 74, FieldMoves_CheckPositionX74
    GoToIfEq VAR_0x8004, 75, FieldMoves_CheckPositionX75
    GoToIfEq VAR_0x8004, 76, FieldMoves_CheckPositionX76
    GoToIfEq VAR_0x8004, 77, FieldMoves_CheckPositionX77
    Return

FieldMoves_CheckPositionX73:
    GoToIfEq VAR_0x8005, 33, FieldMoves_CorrectPositionForCherylCutscene
    Return

FieldMoves_CheckPositionX74:
    GoToIfEq VAR_0x8005, 34, FieldMoves_CorrectPositionForCherylCutscene
    Return

FieldMoves_CheckPositionX75:
    GoToIfEq VAR_0x8005, 34, FieldMoves_CorrectPositionForCherylCutscene
    Return

FieldMoves_CheckPositionX76:
    GoToIfEq VAR_0x8005, 33, FieldMoves_CorrectPositionForCherylCutscene
    Return

FieldMoves_CheckPositionX77:
    GoToIfEq VAR_0x8005, 34, FieldMoves_CorrectPositionForCherylCutscene
    Return

FieldMoves_CorrectPositionForCherylCutscene:
    SetVar VAR_RESULT, TRUE
    Return

FieldMoves_DontEnableCherylCutscene:
    Return

FieldMoves_Rock:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FindPartySlotWithMove VAR_RESULT, MOVE_ROCK_SMASH
    SetVar VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, MAX_PARTY_SIZE, FieldMoves_CantUseRockSmash
    CheckBadgeAcquired BADGE_ID_COAL, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, FieldMoves_CantUseRockSmash
    Message FieldMoves_Text_WouldYouLikeToUseRockSmash
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FieldMoves_UseRockSmashFromField
    CloseMessage
    GoTo FieldMoves_End
    End

FieldMoves_CantUseRockSmash:
    Message FieldMoves_Text_PokemonMayBeAbleToSmashRock
    WaitButton
    CloseMessage
    GoTo FieldMoves_End
    End

FieldMoves_UseRockSmashFromField:
    BufferPartyMonNickname 0, VAR_0x8004
    Message FieldMoves_Text_PokemonUsedRockSmash
    CloseMessage
    PlayHMCutIn VAR_0x8004
    StartDestroyObstacleAnimation 1, VAR_0x8005
    WaitTime 10, VAR_RESULT
    RemoveObject VAR_LAST_TALKED
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_SMASH, VAR_0x8004
FieldMoves_WaitForRockSmashAnimFromField:
    WaitTime 1, VAR_RESULT
    GoToIfEq VAR_0x8005, 0, FieldMoves_WaitForRockSmashAnimFromField
    GoTo FieldMoves_End
    End

FieldMoves_UseRockSmashFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedRockSmash
    CloseMessage
    PlayHMCutIn VAR_0x8000
    StartDestroyObstacleAnimation 1, VAR_0x8005
    WaitTime 10, VAR_RESULT
    RemoveObject VAR_LAST_TALKED
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_SMASH, VAR_0x8004
FieldMoves_WaitForRockSmashAnimFromMenu:
    WaitTime 1, VAR_RESULT
    GoToIfEq VAR_0x8005, 0, FieldMoves_WaitForRockSmashAnimFromMenu
    ReleaseAll
    End

FieldMoves_Boulder:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    DoStrengthFunc FIELD_MOVE_FUNC_CHECK_ACTIVE, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, FieldMoves_StrenghtAlreadyActive
    FindPartySlotWithMove VAR_RESULT, MOVE_STRENGTH
    GoToIfEq VAR_RESULT, MAX_PARTY_SIZE, FieldMoves_CantUseStrength
    CheckBadgeAcquired BADGE_ID_MINE, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, FieldMoves_CantUseStrength
    Message FieldMoves_Text_WouldYouLikeToUseStrength
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FieldMoves_UseStrengthFromField
    CloseMessage
    GoTo FieldMoves_End
    End

FieldMoves_CantUseStrength:
    Message FieldMoves_Text_BoulderMayBeAbleToPush
    WaitButton
    CloseMessage
    GoTo FieldMoves_End
    End

FieldMoves_UseStrengthFromField:
    DoStrengthFunc FIELD_MOVE_FUNC_SET_ACTIVE
    FindPartySlotWithMove VAR_RESULT, MOVE_STRENGTH
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedStrength
    PlayHMCutIn VAR_0x8004
    CloseMessage
    Message FieldMoves_Text_PokemonStrengthMadePossibleToMove
    WaitButton
    CloseMessage
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_STRENGTH, VAR_0x8004
    GoTo FieldMoves_End
    End

FieldMoves_StrenghtAlreadyActive:
    Message FieldMoves_Text_StrengthMadePossibleToMove
    WaitButton
    CloseMessage
    GoTo FieldMoves_End
    End

FieldMoves_UseStrengthFromMenu:
    LockAll
    DoStrengthFunc FIELD_MOVE_FUNC_CHECK_ACTIVE, VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, FieldMoves_StrenghtAlreadyActive
    DoStrengthFunc FIELD_MOVE_FUNC_SET_ACTIVE
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedStrength
    CloseMessage
    PlayHMCutIn VAR_0x8000
    Message FieldMoves_Text_PokemonStrengthMadePossibleToMove
    WaitButton
    CloseMessage
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_STRENGTH, VAR_0x8004
    GoTo FieldMoves_End3

FieldMoves_RockyWall:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FindPartySlotWithMove VAR_RESULT, MOVE_ROCK_CLIMB
    GoToIfEq VAR_RESULT, MAX_PARTY_SIZE, FieldMoves_CantUseRockClimb
    CheckBadgeAcquired BADGE_ID_ICICLE, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, FieldMoves_CantUseRockClimb
    CheckHasPartner VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, FieldMoves_NoRockClimbingWithPartner
    Message FieldMoves_Text_WouldYouLikeToUseRockClimb
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FieldMoves_UseRockClimbFromField
    CloseMessage
    GoTo FieldMoves_End2
    End

FieldMoves_CantUseRockClimb:
    Message FieldMoves_Text_RockyWallWillMoveScale
    WaitButton
    CloseMessage
    GoTo FieldMoves_End2
    End

FieldMoves_NoRockClimbingWithPartner:
    Message FieldMoves_Text_NoRockClimbingWithPartner
    WaitButton
    CloseMessage
    GoTo FieldMoves_End2
    End

FieldMoves_UseRockClimbFromField:
    FindPartySlotWithMove VAR_RESULT, MOVE_ROCK_CLIMB
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedRockClimb
    CloseMessage
    UseRockClimb VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_CLIMB, VAR_0x8004
    GoTo FieldMoves_End2
    End

FieldMoves_UseRockClimbFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedRockClimb
    CloseMessage
    UseRockClimb VAR_0x8000
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_CLIMB, VAR_0x8004
    ReleaseAll
    End

FieldMoves_Water:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    CheckHasPartner VAR_RESULT
    GoToIfEq VAR_RESULT, TRUE, FieldMoves_CantUseSurf
    Message FieldMoves_Text_WouldYouLikeToUseSurf
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FieldMoves_UseSurfFromField
    CloseMessage
    GoTo FieldMoves_End2
    End

FieldMoves_CantUseSurf:
    Message FieldMoves_Text_NoSurfingWithPartner
    WaitButton
    CloseMessage
    GoTo FieldMoves_End2

FieldMoves_UseSurfFromField:
    FindPartySlotWithMove VAR_RESULT, MOVE_SURF
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedSurf
    CloseMessage
    UseSurf VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_SURF, VAR_0x8004
    GoTo FieldMoves_End2
    End

FieldMoves_UseSurfFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedSurf
    CloseMessage
    ReleaseObject LOCALID_PLAYER
    UseSurf VAR_0x8000
    LockObject LOCALID_PLAYER
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_SURF, VAR_0x8004
    ReleaseAll
    End

FieldMoves_Fog_Unused:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FindPartySlotWithMove VAR_RESULT, MOVE_DEFOG
    GoToIfEq VAR_RESULT, MAX_PARTY_SIZE, FieldMoves_CantUseDefog_Unused
    Message FieldMoves_Text_WouldYouLikeToUseDefog_Unused
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FieldMoves_UseDefogFromField_Unused
    CloseMessage
    GoTo FieldMoves_End2
    End

FieldMoves_CantUseDefog_Unused:
    Message FieldMoves_Text_DeepFogDrapesArea_Unused
    WaitButton
    CloseMessage
    GoTo FieldMoves_End2
    End

FieldMoves_UseDefogFromField_Unused:
    FindPartySlotWithMove VAR_RESULT, MOVE_DEFOG
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedDefog
    CloseMessage
    PlayHMCutIn VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_DEFOG, VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CallIfEq VAR_0x8004, MAP_HEADER_ROUTE_209_LOST_TOWER_5F, FieldMoves_SetFlagUsedDefog_Unused
    GoTo FieldMoves_End2
    End

FieldMoves_SetFlagUsedDefog_Unused:
    SetFlag FLAG_USED_DEFOG_IN_ROUTE_209_LOST_TOWER_5F
    Return

FieldMoves_UseDefogFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedDefog
    CloseMessage
    PlayHMCutIn VAR_0x8000
    DoDefogFunc FIELD_MOVE_FUNC_SET_ACTIVE
    PlaySE SEQ_SE_DP_FBRADE
    ScrCmd_0C4
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_DEFOG, VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CallIfEq VAR_0x8004, MAP_HEADER_ROUTE_209_LOST_TOWER_5F, FieldMoves_SetFlagUsedDefog_Unused
    GoTo FieldMoves_End3

FieldMoves_UseFlashFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedFlash
    CloseMessage
    PlayHMCutIn VAR_0x8000
    DoFlashFunc FIELD_MOVE_FUNC_SET_ACTIVE
    ScrCmd_0C3
    WaitTime 42, VAR_RESULT
    GoTo FieldMoves_End3

FieldMoves_End:
    ReleaseAll
    End

FieldMoves_End2:
    ReleaseAll
    End

FieldMoves_End3:
    ReleaseAll
    End

FieldMoves_Waterfall:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FindPartySlotWithMove VAR_RESULT, MOVE_WATERFALL
    GoToIfEq VAR_RESULT, MAX_PARTY_SIZE, FieldMoves_CantUseWaterfall
    CheckBadgeAcquired BADGE_ID_BEACON, VAR_RESULT
    GoToIfEq VAR_RESULT, FALSE, FieldMoves_CantUseWaterfall
    Message FieldMoves_Text_WouldYouLikeToUseWaterfall
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, FieldMoves_UseWaterfallFromField
    CloseMessage
    GoTo FieldMoves_End2
    End

FieldMoves_CantUseWaterfall:
    Message FieldMoves_Text_WallOfWater
    WaitButton
    CloseMessage
    GoTo FieldMoves_End2
    End

FieldMoves_UseWaterfallFromField:
    FindPartySlotWithMove VAR_RESULT, MOVE_WATERFALL
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedWaterfall
    CloseMessage
    UseWaterfall VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_WATERFALL, VAR_0x8004
    GoTo FieldMoves_End2
    End

FieldMoves_UseWaterfallFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedWaterfall
    CloseMessage
    ReleaseObject LOCALID_PLAYER
    UseWaterfall VAR_0x8000
    LockObject LOCALID_PLAYER
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_WATERFALL, VAR_0x8004
    ReleaseAll
    End

FieldMoves_Dummy8:
    End

    .balign 4, 0
