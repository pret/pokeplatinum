#include "macros/scrcmd.inc"
#include "res/text/bank/contest_hall_stage_no_contest.h"


    ScriptEntry ContestHallStageNoContest_Hiker
    ScriptEntry ContestHallStageNoContest_Idol
    ScriptEntry ContestHallStageNoContest_Beauty
    ScriptEntry ContestHallStageNoContest_BlackBelt
    ScriptEntryEnd

ContestHallStageNoContest_Hiker:
    NPCMessage ContestHallStageNoContest_Text_ForTheVisualJudgingDressUpYourPokemon
    End

ContestHallStageNoContest_Idol:
    NPCMessage ContestHallStageNoContest_Text_ForTheDanceCompetitionMimicTheLeadDancer
    End

ContestHallStageNoContest_Beauty:
    NPCMessage ContestHallStageNoContest_Text_ForThePerformancePokemonNeedTheRightMoves
    End

ContestHallStageNoContest_BlackBelt:
    NPCMessage ContestHallStageNoContest_Text_AtTheCoolContestPullOffACoolMove
    End

    .balign 4, 0
