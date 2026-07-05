#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_rival_house_1f.h"


    ScriptEntry TwinleafTownRivalHouse1F_RivalsMom
    ScriptEntryEnd

TwinleafTownRivalHouse1F_RivalsMom:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_HAS_POKEDEX, TwinleafTownRivalHouse1F_TookOffLikeUsual
    GoToIfGe VAR_VISITED_LAKE_VERITY_WITH_RIVAL, 1, TwinleafTownRivalHouse1F_FriendsWithPokemonToo
    GoToIfSet FLAG_TALKED_TO_RIVAL_HOUSE_RIVAL_MOM_RIVAL_LEFT, TwinleafTownRivalHouse1F_HeShouldBeOnRoute201
    GoToIfSet FLAG_RIVAL_LEFT_HOME, TwinleafTownRivalHouse1F_RocketedOffLikeUsual
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, TwinleafTownRivalHouse1F_LookingForRival
    GoToIfEq VAR_RESULT, GENDER_FEMALE, TwinleafTownRivalHouse1F_ComeCallingOnRival
    End

TwinleafTownRivalHouse1F_LookingForRival:
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_LookingForRival
    GoTo TwinleafTownRivalHouse1F_Release

TwinleafTownRivalHouse1F_ComeCallingOnRival:
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_ComeCallingOnRival
    GoTo TwinleafTownRivalHouse1F_Release

TwinleafTownRivalHouse1F_Release:
    WaitButton
    CloseMessage
    ReleaseAll
    End

TwinleafTownRivalHouse1F_FriendsWithPokemonToo:
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_FriendsWithPokemonToo
    WaitButton
    CloseMessage
    ReleaseAll
    End

TwinleafTownRivalHouse1F_HeShouldBeOnRoute201:
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_HeShouldBeOnRoute201
    WaitButton
    CloseMessage
    ReleaseAll
    End

TwinleafTownRivalHouse1F_RocketedOffLikeUsual:
    SetFlag FLAG_TALKED_TO_RIVAL_HOUSE_RIVAL_MOM_RIVAL_LEFT
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_RocketedOffLikeUsual
    WaitButton
    CloseMessage
    ReleaseAll
    End

TwinleafTownRivalHouse1F_TookOffLikeUsual:
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_TookOffLikeUsual
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
