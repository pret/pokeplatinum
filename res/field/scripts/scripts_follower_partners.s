#include "macros/scrcmd.inc"
#include "res/text/bank/follower_partners.h"


    ScriptEntry FollowerPartners_Rival
    ScriptEntry FollowerPartners_UnusedEntry9701
    ScriptEntry FollowerPartners_Cheryl
    ScriptEntry FollowerPartners_Buck
    ScriptEntry FollowerPartners_Mira
    ScriptEntry FollowerPartners_Marley
    ScriptEntryEnd

FollowerPartners_Rival:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_FOLLOWER_RIVAL_STATE, 3, FollowerPartners_Rival_PostStarterMessage
    BufferPlayerName 1
    Message FollowerPartners_Text_Rival_YouCanChooseFirst
    WaitButton
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Rival_PostStarterMessage:
    GoToIfGe VAR_FOLLOWER_RIVAL_TIMES_TALKED, 5, FollowerPartners_Rival_EnoughTalkingAlready
    GoToIfEq VAR_FOLLOWER_RIVAL_TIMES_TALKED, 4, FollowerPartners_Rival_DoYouKnowAboutChampion
    GoToIfEq VAR_FOLLOWER_RIVAL_TIMES_TALKED, 3, FollowerPartners_Rival_LakeHasMiragePokemon
    GoToIfEq VAR_FOLLOWER_RIVAL_TIMES_TALKED, 2, FollowerPartners_Rival_DoYouBelieveIt
    GoToIfEq VAR_FOLLOWER_RIVAL_TIMES_TALKED, 1, FollowerPartners_Rival_PokemonHaveDifferentMoves
    BufferRivalName 0
    Message FollowerPartners_Text_Rival_ThatPokemonBattle
    WaitButton
    GoTo FollowerPartners_Rival_IncreaseTimesTalked
    End

FollowerPartners_Rival_Unused:
    BufferRivalName 0
    Message FollowerPartners_Text_Rival_AllRightLetsMoveOut
    WaitButton
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Rival_EnoughTalkingAlready:
    BufferRivalName 0
    Message FollowerPartners_Text_Rival_EnoughTalkingAlready
    WaitButton
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Rival_DoYouKnowAboutChampion:
    BufferRivalName 0
    Message FollowerPartners_Text_Rival_DoYouKnowAboutChampion
    WaitButton
    GoTo FollowerPartners_Rival_IncreaseTimesTalked
    End

FollowerPartners_Rival_LakeHasMiragePokemon:
    BufferRivalName 0
    Message FollowerPartners_Text_Rival_LakeHasMiragePokemon
    WaitButton
    GoTo FollowerPartners_Rival_IncreaseTimesTalked
    End

FollowerPartners_Rival_DoYouBelieveIt:
    BufferRivalName 0
    BufferRivalStarterSpeciesName 1
    Message FollowerPartners_Text_Rival_DoYouBelieveIt
    WaitButton
    GoTo FollowerPartners_Rival_IncreaseTimesTalked
    End

FollowerPartners_Rival_PokemonHaveDifferentMoves:
    BufferRivalName 0
    Message FollowerPartners_Text_Rival_PokemonHaveDifferentMoves
    WaitButton
    GoTo FollowerPartners_Rival_IncreaseTimesTalked
    End

FollowerPartners_Rival_IncreaseTimesTalked:
    AddVar VAR_FOLLOWER_RIVAL_TIMES_TALKED, 1
    CloseMessage
    ReleaseAll
    End

FollowerPartners_UnusedEntry9701:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_FOLLOWER_UNUSED_TIMES_TALKED, 2, FollowerPartners_UnusedFollowerTalkedGe2Times
    GoToIfEq VAR_FOLLOWER_UNUSED_TIMES_TALKED, 1, FollowerPartners_UnusedFollowerTalked1Time
    BufferRivalName 0
    GoTo FollowerPartners_UnusedFollowerTalked0Times
    End

FollowerPartners_UnusedFollowerTalkedGe2Times:
    BufferRivalName 0
    WaitButton
    CloseMessage
    ReleaseAll
    End

FollowerPartners_UnusedFollowerTalked1Time:
    BufferRivalName 0
    GoTo FollowerPartners_UnusedFollowerTalked0Times
    End

FollowerPartners_UnusedFollowerTalked0Times:
    WaitButton
    CloseMessage
    AddVar VAR_FOLLOWER_UNUSED_TIMES_TALKED, 1
    ReleaseAll
    End

FollowerPartners_Cheryl:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_FOLLOWER_CHERYL_TIMES_TALKED, 2, FollowerPartners_Cheryl_BattlingWithYouMakesMeElated
    GoToIfEq VAR_FOLLOWER_CHERYL_TIMES_TALKED, 1, FollowerPartners_Cheryl_MyPokemonIsExcellentHealer
    BufferPlayerName 0
    Message FollowerPartners_Text_Cheryl_StartlingToSeeTwoPokemon
    GoTo FollowerPartners_Cheryl_IncreaseTimesTalked
    End

FollowerPartners_Cheryl_MyPokemonIsExcellentHealer:
    Message FollowerPartners_Text_Cheryl_MyPokemonIsExcellentHealer
    GoTo FollowerPartners_Cheryl_IncreaseTimesTalked
    End

FollowerPartners_Cheryl_BattlingWithYouMakesMeElated:
    BufferPlayerName 0
    Message FollowerPartners_Text_Cheryl_BattlingWithYouMakesMeElated
    WaitButton
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Cheryl_IncreaseTimesTalked:
    AddVar VAR_FOLLOWER_CHERYL_TIMES_TALKED, 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Buck:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_FOLLOWER_BUCK_TIMES_TALKED, 3, FollowerPartners_Buck_ItMightBeCool
    GoToIfEq VAR_FOLLOWER_BUCK_TIMES_TALKED, 2, FollowerPartners_Buck_MyBigBrothersEliteFour
    GoToIfEq VAR_FOLLOWER_BUCK_TIMES_TALKED, 1, FollowerPartners_Buck_NoLawIHaveToBeTough
    BufferPlayerName 0
    Message FollowerPartners_Text_Buck_ThisIsWhereIRaisedMyPokemon
    GoTo FollowerPartners_Buck_IncreaseTimesTalked
    End

FollowerPartners_Buck_NoLawIHaveToBeTough:
    Message FollowerPartners_Text_Buck_NoLawIHaveToBeTough
    GoTo FollowerPartners_Buck_IncreaseTimesTalked
    End

FollowerPartners_Buck_MyBigBrothersEliteFour:
    Message FollowerPartners_Text_Buck_MyBigBrothersEliteFour
    GoTo FollowerPartners_Buck_IncreaseTimesTalked
    End

FollowerPartners_Buck_ItMightBeCool:
    Message FollowerPartners_Text_Buck_ItMightBeCool
    WaitButton
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Buck_IncreaseTimesTalked:
    AddVar VAR_FOLLOWER_BUCK_TIMES_TALKED, 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Mira:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_FOLLOWER_MIRA_TIMES_TALKED, 2, FollowerPartners_Mira_IWillTryLikeYou
    GoToIfEq VAR_FOLLOWER_MIRA_TIMES_TALKED, 1, FollowerPartners_Mira_EasyToGetConfused
    BufferPlayerName 0
    Message FollowerPartners_Text_Mira_ILikeHelpfulMoves
    GoTo FollowerPartners_Mira_IncreaseTimesTalked
    End

FollowerPartners_Mira_EasyToGetConfused:
    Message FollowerPartners_Text_Mira_EasyToGetConfused
    GoTo FollowerPartners_Mira_IncreaseTimesTalked
    End

FollowerPartners_Mira_IWillTryLikeYou:
    BufferPlayerName 0
    Message FollowerPartners_Text_Mira_IWillTryLikeYou
    WaitButton
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Mira_IncreaseTimesTalked:
    AddVar VAR_FOLLOWER_MIRA_TIMES_TALKED, 1
    WaitButton
    CloseMessage
    ReleaseAll
    End
    End

FollowerPartners_Marley:
    PlaySE SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_FOLLOWER_MARLEY_TIMES_TALKED, 1, FollowerPartners_Marley_ThePokemonAmongFlowers
    BufferPlayerName 0
    Message FollowerPartners_Text_Marley_YoureVeryChatty
    GoTo FollowerPartners_Marley_IncreaseTimesTalked
    End

FollowerPartners_Marley_ThePokemonAmongFlowers:
    Message FollowerPartners_Text_Marley_ThePokemonAmongFlowers
    WaitButton
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Marley_IncreaseTimesTalked:
    AddVar VAR_FOLLOWER_MARLEY_TIMES_TALKED, 1
    WaitButton
    CloseMessage
    ReleaseAll
    End

    .balign 4, 0
