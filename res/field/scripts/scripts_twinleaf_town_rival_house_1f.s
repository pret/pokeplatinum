#include "macros/scrcmd.inc"
#include "res/text/bank/twinleaf_town_rival_house_1f.h"


    ScriptEntry TwinleafTownRivalHouse1F_RivalsMom
    ScriptEntryEnd

TwinleafTownRivalHouse1F_RivalsMom:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfSet FLAG_HAS_POKEDEX, TwinleafTownRivalHouse1F_RivalTookOffLikeARocketAsUsual
    GoToIfGe VAR_VISITED_LAKE_VERITY_WITH_RIVAL, 1, TwinleafTownRivalHouse1F_YouveBecomeFriendsWithAPokemonToo
    GoToIfSet FLAG_UNK_0x006E, TwinleafTownRivalHouse1F_HeShouldBeOutOnRoute201ByNow
    GoToIfSet FLAG_RIVAL_LEFT_HOME, TwinleafTownRivalHouse1F_ThatKidRocketedOffAgainLikeUsual
    GetPlayerGender VAR_RESULT
    GoToIfEq VAR_RESULT, GENDER_MALE, TwinleafTownRivalHouse1F_AreYouLookingForRival
    GoToIfEq VAR_RESULT, GENDER_FEMALE, TwinleafTownRivalHouse1F_DidYouComeCallingOnRival
    End

TwinleafTownRivalHouse1F_AreYouLookingForRival:
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_AreYouLookingForRival
    GoTo TwinleafTownRivalHouse1F_Release

TwinleafTownRivalHouse1F_DidYouComeCallingOnRival:
    BufferPlayerName 0
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_DidYouComeCallingOnRival
    GoTo TwinleafTownRivalHouse1F_Release

TwinleafTownRivalHouse1F_Release:
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownRivalHouse1F_YouveBecomeFriendsWithAPokemonToo:
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_YouveBecomeFriendsWithAPokemonToo
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownRivalHouse1F_HeShouldBeOutOnRoute201ByNow:
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_HeShouldBeOutOnRoute201ByNow
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownRivalHouse1F_ThatKidRocketedOffAgainLikeUsual:
    SetFlag FLAG_UNK_0x006E
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_ThatKidRocketedOffAgainLikeUsual
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

TwinleafTownRivalHouse1F_RivalTookOffLikeARocketAsUsual:
    BufferRivalName 1
    Message TwinleafTownRivalHouse1F_Text_RivalTookOffLikeARocketAsUsual
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
