#include "macros/scrcmd.inc"
#include "res/text/bank/field_moves.h"


    ScriptEntry FieldMoves_CutTree
    ScriptEntry FieldMoves_Rock
    ScriptEntry FieldMoves_Boulder
    ScriptEntry FieldMoves_RockyWall
    ScriptEntry FieldMoves_Water
    ScriptEntry FieldMoves_Fog_Unused
    ScriptEntry FieldMoves_Waterfall
    ScriptEntry FieldMoves_Dummy
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
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FindPartySlotWithMove VAR_RESULT, MOVE_CUT
    GoToIfEq VAR_RESULT, 6, _008E
    CheckBadgeAcquired BADGE_ID_FOREST, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _008E
    Message FieldMoves_Text_WouldYouLikeToUseCut
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _00AE
    CloseMessage
    GoTo _066D
    End

_008E:
    Message FieldMoves_Text_TreeLooksLikeCanBeCut
    GetCurrentMapID VAR_0x8004
    CallIfEq VAR_0x8004, 203, _014A
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

_00AE:
    FindPartySlotWithMove VAR_RESULT, MOVE_CUT
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedCut
    CloseMessage
    ScrCmd_0C5 VAR_0x8004
    ScrCmd_29E 0, VAR_0x8005
    WaitTime 7, VAR_RESULT
    RemoveObject VAR_LAST_TALKED
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_CUT, VAR_0x8004, 0, 0, 0
_00E8:
    WaitTime 1, VAR_RESULT
    GoToIfEq VAR_0x8005, 0, _00E8
    GoTo _066D
    End

FieldMoves_UseCutFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedCut
    CloseMessage
    ScrCmd_0C5 VAR_0x8000
    ScrCmd_29E 0, VAR_0x8005
    WaitTime 7, VAR_RESULT
    RemoveObject VAR_LAST_TALKED
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_CUT, VAR_0x8004, 0, 0, 0
_0133:
    WaitTime 1, VAR_RESULT
    GoToIfEq VAR_0x8005, 0, _0133
    ReleaseAll
    End

_014A:
    GoToIfNe VAR_UNK_0x40CD, 0, _0221
    GoToIfNe VAR_UNK_0x40B1, 1, _0221
    Call _017F
    GoToIfEq VAR_RESULT, 0, _0221
    SetVar VAR_UNK_0x40CD, 1
    Return

_017F:
    SetVar VAR_RESULT, 0
    GetPlayerMapPos VAR_0x8004, VAR_0x8005
    GoToIfEq VAR_0x8004, 73, _01CE
    GoToIfEq VAR_0x8004, 74, _01DD
    GoToIfEq VAR_0x8004, 75, _01EC
    GoToIfEq VAR_0x8004, 76, _01FB
    GoToIfEq VAR_0x8004, 77, _020A
    Return

_01CE:
    GoToIfEq VAR_0x8005, 33, _0219
    Return

_01DD:
    GoToIfEq VAR_0x8005, 34, _0219
    Return

_01EC:
    GoToIfEq VAR_0x8005, 34, _0219
    Return

_01FB:
    GoToIfEq VAR_0x8005, 33, _0219
    Return

_020A:
    GoToIfEq VAR_0x8005, 34, _0219
    Return

_0219:
    SetVar VAR_RESULT, 1
    Return

_0221:
    Return

FieldMoves_Rock:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    FindPartySlotWithMove VAR_RESULT, MOVE_ROCK_SMASH
    SetVar VAR_0x8004, VAR_RESULT
    GoToIfEq VAR_RESULT, 6, _0275
    CheckBadgeAcquired BADGE_ID_COAL, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0275
    Message FieldMoves_Text_WouldYouLikeToUseRockSmash
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0284
    CloseMessage
    GoTo _066D
    End

_0275:
    Message FieldMoves_Text_PokemonMayBeAbleToSmashRock
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

_0284:
    BufferPartyMonNickname 0, VAR_0x8004
    Message FieldMoves_Text_PokemonUsedRockSmash
    CloseMessage
    ScrCmd_0C5 VAR_0x8004
    ScrCmd_29E 1, VAR_0x8005
    WaitTime 10, VAR_RESULT
    RemoveObject VAR_LAST_TALKED
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_SMASH, VAR_0x8004, 0, 0, 0
_02B2:
    WaitTime 1, VAR_RESULT
    GoToIfEq VAR_0x8005, 0, _02B2
    GoTo _066D
    End

FieldMoves_UseRockSmashFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedRockSmash
    CloseMessage
    ScrCmd_0C5 VAR_0x8000
    ScrCmd_29E 1, VAR_0x8005
    WaitTime 10, VAR_RESULT
    RemoveObject VAR_LAST_TALKED
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_SMASH, VAR_0x8004, 0, 0, 0
_02FD:
    WaitTime 1, VAR_RESULT
    GoToIfEq VAR_0x8005, 0, _02FD
    ReleaseAll
    End

FieldMoves_Boulder:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    Strength 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _03BD
    FindPartySlotWithMove VAR_RESULT, MOVE_STRENGTH
    GoToIfEq VAR_RESULT, 6, _0372
    CheckBadgeAcquired BADGE_ID_MINE, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0372
    Message FieldMoves_Text_WouldYouLikeToUseStrength
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0381
    CloseMessage
    GoTo _066D
    End

_0372:
    Message FieldMoves_Text_BoulderMayBeAbleToPush
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

_0381:
    Strength 1
    FindPartySlotWithMove VAR_RESULT, MOVE_STRENGTH
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedStrength
    ScrCmd_0C5 VAR_0x8004
    CloseMessage
    Message FieldMoves_Text_PokemonStrengthMadePossibleToMove
    WaitABXPadPress
    CloseMessage
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_STRENGTH, VAR_0x8004, 0, 0, 0
    GoTo _066D
    End

_03BD:
    Message FieldMoves_Text_StrengthMadePossibleToMove
    WaitABXPadPress
    CloseMessage
    GoTo _066D
    End

FieldMoves_UseStrengthFromMenu:
    LockAll
    Strength 2, VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _03BD
    Strength 1
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedStrength
    CloseMessage
    ScrCmd_0C5 VAR_0x8000
    Message FieldMoves_Text_PokemonStrengthMadePossibleToMove
    WaitABXPadPress
    CloseMessage
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_STRENGTH, VAR_0x8004, 0, 0, 0
    GoTo _0675

FieldMoves_RockyWall:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FindPartySlotWithMove VAR_RESULT, MOVE_ROCK_CLIMB
    GoToIfEq VAR_RESULT, 6, _0469
    CheckBadgeAcquired BADGE_ID_ICICLE, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _0469
    CheckHasPartner VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0478
    Message FieldMoves_Text_WouldYouLikeToUseRockClimb
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _0487
    CloseMessage
    GoTo _0671
    End

_0469:
    Message FieldMoves_Text_RockyWallWillMoveScale
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_0478:
    Message FieldMoves_Text_NoRockClimbingWithPartner
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_0487:
    FindPartySlotWithMove VAR_RESULT, MOVE_ROCK_CLIMB
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedRockClimb
    CloseMessage
    UseRockClimb VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_CLIMB, VAR_0x8004, 0, 0, 0
    GoTo _0671
    End

FieldMoves_UseRockClimbFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedRockClimb
    CloseMessage
    UseRockClimb VAR_0x8000
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_ROCK_CLIMB, VAR_0x8004, 0, 0, 0
    ReleaseAll
    End

FieldMoves_Water:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    CheckHasPartner VAR_RESULT
    GoToIfEq VAR_RESULT, 1, _0512
    Message FieldMoves_Text_WouldYouLikeToUseSurf
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _051F
    CloseMessage
    GoTo _0671
    End

_0512:
    Message FieldMoves_Text_NoSurfingWithPartner
    WaitABXPadPress
    CloseMessage
    GoTo _0671

_051F:
    FindPartySlotWithMove VAR_RESULT, MOVE_SURF
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedSurf
    CloseMessage
    UseSurf VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_SURF, VAR_0x8004, 0, 0, 0
    GoTo _0671
    End

FieldMoves_UseSurfFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedSurf
    CloseMessage
    ScrCmd_063 0xFF
    UseSurf VAR_0x8000
    LockObject 0xFF
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_SURF, VAR_0x8004, 0, 0, 0
    ReleaseAll
    End

FieldMoves_Fog_Unused:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FindPartySlotWithMove VAR_RESULT, MOVE_DEFOG
    GoToIfEq VAR_RESULT, 6, _05B4
    Message FieldMoves_Text_WouldYouLikeToUseDefog_Unused
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _05C3
    CloseMessage
    GoTo _0671
    End

_05B4:
    Message FieldMoves_Text_DeepFogDrapesArea_Unused
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_05C3:
    FindPartySlotWithMove VAR_RESULT, MOVE_DEFOG
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedDefog
    CloseMessage
    ScrCmd_0C5 VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_DEFOG, VAR_0x8004, 0, 0, 0
    GetCurrentMapID VAR_0x8004
    CallIfEq VAR_0x8004, 0x169, _0606
    GoTo _0671
    End

_0606:
    SetFlag FLAG_UNK_0x007B
    Return

FieldMoves_UseDefogFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedDefog
    CloseMessage
    ScrCmd_0C5 VAR_0x8000
    Defog 1
    PlayFanfare SEQ_SE_DP_FBRADE
    ScrCmd_0C4
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_DEFOG, VAR_0x8004, 0, 0, 0
    GetCurrentMapID VAR_0x8004
    CallIfEq VAR_0x8004, 0x169, _0606
    GoTo _0675

FieldMoves_UseFlashFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedFlash
    CloseMessage
    ScrCmd_0C5 VAR_0x8000
    Flash 1
    ScrCmd_0C3
    WaitTime 42, VAR_RESULT
    GoTo _0675

_066D:
    ReleaseAll
    End

_0671:
    ReleaseAll
    End

_0675:
    ReleaseAll
    End

FieldMoves_Waterfall:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FindPartySlotWithMove VAR_RESULT, MOVE_WATERFALL
    GoToIfEq VAR_RESULT, 6, _06C3
    CheckBadgeAcquired BADGE_ID_BEACON, VAR_RESULT
    GoToIfEq VAR_RESULT, 0, _06C3
    Message FieldMoves_Text_WouldYouLikeToUseWaterfall
    ShowYesNoMenu VAR_RESULT
    GoToIfEq VAR_RESULT, MENU_YES, _06D2
    CloseMessage
    GoTo _0671
    End

_06C3:
    Message FieldMoves_Text_WallOfWater
    WaitABXPadPress
    CloseMessage
    GoTo _0671
    End

_06D2:
    FindPartySlotWithMove VAR_RESULT, MOVE_WATERFALL
    SetVar VAR_0x8004, VAR_RESULT
    BufferPartyMonNickname 0, VAR_RESULT
    Message FieldMoves_Text_PokemonUsedWaterfall
    CloseMessage
    UseWaterfall VAR_0x8004
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_WATERFALL, VAR_0x8004, 0, 0, 0
    GoTo _0671
    End

FieldMoves_UseWaterfallFromMenu:
    LockAll
    BufferPartyMonNickname 0, VAR_0x8000
    Message FieldMoves_Text_PokemonUsedWaterfall
    CloseMessage
    ScrCmd_063 0xFF
    UseWaterfall VAR_0x8000
    LockObject 0xFF
    GetCurrentMapID VAR_0x8004
    CreateJournalEvent LOCATION_EVENT_USED_WATERFALL, VAR_0x8004, 0, 0, 0
    ReleaseAll
    End

FieldMoves_Dummy:
    End

    .byte 0
    .byte 0
