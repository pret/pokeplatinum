#include "macros/scrcmd.inc"
#include "res/text/bank/follower_partners.h"

    .data

    ScriptEntry FollowerPartners_Rival
    ScriptEntry _00F9
    ScriptEntry FollowerPartners_Cheryl
    ScriptEntry FollowerPartners_Buck
    ScriptEntry FollowerPartners_Mira
    ScriptEntry FollowerPartners_Marley
    ScriptEntryEnd

FollowerPartners_Rival:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_FOLLOWER_RIVAL_STATE, 3, FollowerPartners_Rival_PostStarterMessage
    BufferPlayerName 1
    Message FollowerPartners_Text_Rival_HeyPlayerYouCanChooseFirst
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Rival_PostStarterMessage:
    GoToIfGe VAR_FOLLOWER_RIVAL_TIMES_TALKED, 5, FollowerPartners_Rival_HeyThatsEnoughTalkingAlready
    GoToIfEq VAR_FOLLOWER_RIVAL_TIMES_TALKED, 4, FollowerPartners_Rival_HeyDoYouKnowAboutTheChampion
    GoToIfEq VAR_FOLLOWER_RIVAL_TIMES_TALKED, 3, FollowerPartners_Rival_ThatLakeHasAMiragePokemonLivingInIt
    GoToIfEq VAR_FOLLOWER_RIVAL_TIMES_TALKED, 2, FollowerPartners_Rival_DoYouBelieveIt
    GoToIfEq VAR_FOLLOWER_RIVAL_TIMES_TALKED, 1, FollowerPartners_Rival_PokemonAllHaveDifferentMovesHuh
    BufferRivalName 0
    Message FollowerPartners_Text_Rival_ThatPokemonBattle
    WaitABXPadPress
    GoTo FollowerPartners_Rival_IncreaseTimesTalked

    .byte 2
    .byte 0
    .byte 206
    .byte 0
    .byte 0
    .byte 44
    .byte 0
    .byte 8
    .byte 49
    .byte 0
    .byte 52
    .byte 0
    .byte 97
    .byte 0
    .byte 2
    .byte 0

FollowerPartners_Rival_HeyThatsEnoughTalkingAlready:
    BufferRivalName 0
    Message FollowerPartners_Text_Rival_HeyThatsEnoughTalkingAlready
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Rival_HeyDoYouKnowAboutTheChampion:
    BufferRivalName 0
    Message FollowerPartners_Text_Rival_HeyDoYouKnowAboutTheChampion
    WaitABXPadPress
    GoTo FollowerPartners_Rival_IncreaseTimesTalked
    End

FollowerPartners_Rival_ThatLakeHasAMiragePokemonLivingInIt:
    BufferRivalName 0
    Message FollowerPartners_Text_Rival_ThatLakeHasAMiragePokemonLivingInIt
    WaitABXPadPress
    GoTo FollowerPartners_Rival_IncreaseTimesTalked
    End

FollowerPartners_Rival_DoYouBelieveIt:
    BufferRivalName 0
    BufferRivalStarterSpeciesName 1
    Message FollowerPartners_Text_Rival_DoYouBelieveIt
    WaitABXPadPress
    GoTo FollowerPartners_Rival_IncreaseTimesTalked
    End

FollowerPartners_Rival_PokemonAllHaveDifferentMovesHuh:
    BufferRivalName 0
    Message FollowerPartners_Text_Rival_PokemonAllHaveDifferentMovesHuh
    WaitABXPadPress
    GoTo FollowerPartners_Rival_IncreaseTimesTalked
    End

FollowerPartners_Rival_IncreaseTimesTalked:
    AddVar VAR_FOLLOWER_RIVAL_TIMES_TALKED, 1
    CloseMessage
    ReleaseAll
    End

_00F9:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_UNK_0x40CB, 2, _0126
    GoToIfEq VAR_UNK_0x40CB, 1, _0131
    BufferRivalName 0
    GoTo _013C
    End

_0126:
    BufferRivalName 0
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

_0131:
    BufferRivalName 0
    GoTo _013C
    End

_013C:
    WaitABXPadPress
    CloseMessage
    AddVar VAR_UNK_0x40CB, 1
    ReleaseAll
    End

FollowerPartners_Cheryl:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_FOLLOWER_CHERYL_TIMES_TALKED, 2, FollowerPartners_Cheryl_PlayerBattlingWithYouMakesMeFeelElated
    GoToIfEq VAR_FOLLOWER_CHERYL_TIMES_TALKED, 1, FollowerPartners_Cheryl_MyPokemonIsAnExcellentHealer
    BufferPlayerName 0
    Message FollowerPartners_Text_Cheryl_ItsStartlingToSeeTwoWildPokemon
    GoTo FollowerPartners_Cheryl_IncreaseTimesTalked
    End

FollowerPartners_Cheryl_MyPokemonIsAnExcellentHealer:
    Message FollowerPartners_Text_Cheryl_MyPokemonIsAnExcellentHealer
    GoTo FollowerPartners_Cheryl_IncreaseTimesTalked
    End

FollowerPartners_Cheryl_PlayerBattlingWithYouMakesMeFeelElated:
    BufferPlayerName 0
    Message FollowerPartners_Text_Cheryl_PlayerBattlingWithYouMakesMeFeelElated
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Cheryl_IncreaseTimesTalked:
    AddVar VAR_FOLLOWER_CHERYL_TIMES_TALKED, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Buck:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_FOLLOWER_BUCK_TIMES_TALKED, 3, FollowerPartners_Buck_ItMightBeCoolBeingAGymLeaderOrEliteFour
    GoToIfEq VAR_FOLLOWER_BUCK_TIMES_TALKED, 2, FollowerPartners_Buck_MyBigBrothersOneOfTheEliteFour
    GoToIfEq VAR_FOLLOWER_BUCK_TIMES_TALKED, 1, FollowerPartners_Buck_TheresNoLawThatSaysIHaveToBeTough
    BufferPlayerName 0
    Message FollowerPartners_Text_Buck_ThisIsWhereIRaisedMyPokemon
    GoTo FollowerPartners_Buck_IncreaseTimesTalked
    End

FollowerPartners_Buck_TheresNoLawThatSaysIHaveToBeTough:
    Message FollowerPartners_Text_Buck_TheresNoLawThatSaysIHaveToBeTough
    GoTo FollowerPartners_Buck_IncreaseTimesTalked
    End

FollowerPartners_Buck_MyBigBrothersOneOfTheEliteFour:
    Message FollowerPartners_Text_Buck_MyBigBrothersOneOfTheEliteFour
    GoTo FollowerPartners_Buck_IncreaseTimesTalked
    End

FollowerPartners_Buck_ItMightBeCoolBeingAGymLeaderOrEliteFour:
    Message FollowerPartners_Text_Buck_ItMightBeCoolBeingAGymLeaderOrEliteFour
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Buck_IncreaseTimesTalked:
    AddVar VAR_FOLLOWER_BUCK_TIMES_TALKED, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Mira:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_FOLLOWER_MIRA_TIMES_TALKED, 2, FollowerPartners_Mira_PlayerDidYouGetToBeSoGood
    GoToIfEq VAR_FOLLOWER_MIRA_TIMES_TALKED, 1, FollowerPartners_Mira_ThisCaveItsSoEasyToGetConfusedHere
    BufferPlayerName 0
    Message FollowerPartners_Text_Mira_ILikeHelpfulPokemonMovesLikeGrowlAndMinimize
    GoTo FollowerPartners_Mira_IncreaseTimesTalked
    End

FollowerPartners_Mira_ThisCaveItsSoEasyToGetConfusedHere:
    Message FollowerPartners_Text_Mira_ThisCaveItsSoEasyToGetConfusedHere
    GoTo FollowerPartners_Mira_IncreaseTimesTalked
    End

FollowerPartners_Mira_PlayerDidYouGetToBeSoGood:
    BufferPlayerName 0
    Message FollowerPartners_Text_Mira_PlayerDidYouGetToBeSoGood
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Mira_IncreaseTimesTalked:
    AddVar VAR_FOLLOWER_MIRA_TIMES_TALKED, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End
    End

FollowerPartners_Marley:
    PlayFanfare SEQ_SE_CONFIRM
    LockAll
    FacePlayer
    GoToIfGe VAR_FOLLOWER_MARLEY_TIMES_TALKED, 1, FollowerPartners_Marley_ThePokemonAmongFlowers
    BufferPlayerName 0
    Message FollowerPartners_Text_Marley_YoureVeryChatty
    GoTo FollowerPartners_Marley_IncreaseTimesTalked
    End

FollowerPartners_Marley_ThePokemonAmongFlowers:
    Message FollowerPartners_Text_Marley_ThePokemonAmongFlowers
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

FollowerPartners_Marley_IncreaseTimesTalked:
    AddVar VAR_FOLLOWER_MARLEY_TIMES_TALKED, 1
    WaitABXPadPress
    CloseMessage
    ReleaseAll
    End

    .byte 0
    .byte 0
