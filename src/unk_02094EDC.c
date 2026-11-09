#include "unk_02094EDC.h"

#include <nitro.h>
#include <string.h>

#include "constants/contests.h"
#include "generated/move_contest_effects.h"
#include "generated/natures.h"
#include "generated/pokemon_contest_ranks.h"
#include "generated/pokemon_contest_types.h"

#include "struct_defs/struct_020951B0.h"
#include "struct_defs/struct_020954F0.h"
#include "struct_defs/struct_020F568C.h"

#include "battle/pokemon_sprite_data.h"
#include "overlay006/struct_ov6_02248BE8.h"

#include "character_sprite.h"
#include "contest.h"
#include "graphics.h"
#include "heap.h"
#include "math_util.h"
#include "message.h"
#include "narc.h"
#include "pokemon.h"
#include "pokemon_sprite.h"
#include "render_text.h"
#include "string_gf.h"
#include "unk_020298BC.h"

#include "res/text/bank/contest_effects.h"
#include "res/text/bank/contest_text.h"

static const ContestEffectData sContestEffects[CONTEST_EFFECT_MAX] = {
    [CONTEST_EFFECT_NONE] = {
        .lineOneEffectMessageID = 0,
        .lineTwoEffectMessageID = 0,
        .appeal = 0,
    },
    [CONTEST_EFFECT_FIRST_NEXT_TURN] = {
        .lineOneEffectMessageID = ContestEffects_Text_PerformFirst,
        .lineTwoEffectMessageID = ContestEffects_Text_NextTurn1,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 0, .format = 2 },
            { .messageID = 1, .format = 7 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_LAST_NEXT_TURN] = {
        .lineOneEffectMessageID = ContestEffects_Text_PerformLast,
        .lineTwoEffectMessageID = ContestEffects_Text_NextTurn2,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 2, .format = 2 },
            { .messageID = 3, .format = 7 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_DOUBLED_JUDGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_EachDoubled,
        .lineTwoEffectMessageID = ContestEffects_Text_JudgePlusTwo,
        .appeal = 0,
        .actingMessages = {
            { .messageID = 4, .format = 2 },
            { .messageID = 5, .format = 2 },
            { .messageID = 6, .format = 2 },
            { .messageID = 7, .format = 2 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_2_HEARTS_WHEN_VOLTAGE_UP] = {
        .lineOneEffectMessageID = ContestEffects_Text_IfTheVoltage,
        .lineTwoEffectMessageID = ContestEffects_Text_GoesUpPlusTwo,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 8, .format = 8 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_BASIC] = {
        .lineOneEffectMessageID = ContestEffects_Text_BasicAct,
        .lineTwoEffectMessageID = ContestEffects_Text_Unused,
        .appeal = 30,
        .actingMessages = {
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_UNIQUE_JUDGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_IfJudgesAre,
        .lineTwoEffectMessageID = ContestEffects_Text_NotDoubledPlusThree,
        .appeal = 10,
        .actingMessages = {
            { .messageID = 9, .format = 2 },
            { .messageID = 10, .format = 2 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = 11, .format = 2 },
        },
    },
    [CONTEST_EFFECT_CONSECUTIVE_USE] = {
        .lineOneEffectMessageID = ContestEffects_Text_PerformableTwo,
        .lineTwoEffectMessageID = ContestEffects_Text_TurnsInARow,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 12, .format = 2 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_VOLTAGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_VoltagePts,
        .lineTwoEffectMessageID = ContestEffects_Text_AreAdded,
        .appeal = 0,
        .actingMessages = {
            { .messageID = 13, .format = 5 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_ALL_SAME_JUDGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_IfAllChoose,
        .lineTwoEffectMessageID = ContestEffects_Text_SameJudgePlusFifteen,
        .appeal = 0,
        .actingMessages = {
            { .messageID = 14, .format = 2 },
            { .messageID = 15, .format = 2 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = 16, .format = 2 },
        },
    },
    [CONTEST_EFFECT_LOWERS_VOLTAGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_LowersVoltage,
        .lineTwoEffectMessageID = ContestEffects_Text_OfJudgesByOne,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 17, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_DOUBLE_NEXT_TURN] = {
        .lineOneEffectMessageID = ContestEffects_Text_DoubleScoreIn,
        .lineTwoEffectMessageID = ContestEffects_Text_NextTurn3,
        .appeal = 0,
        .actingMessages = {
            { .messageID = 18, .format = 9 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_STEAL_VOLTAGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_GetVoltage,
        .lineTwoEffectMessageID = ContestEffects_Text_FromOneAhead,
        .appeal = 0,
        .actingMessages = {
            { .messageID = 19, .format = 7 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_SUPPRESS_VOLTAGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_NoVoltageUp,
        .lineTwoEffectMessageID = ContestEffects_Text_ThisTurn1,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 20, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_RANDOM_ORDER] = {
        .lineOneEffectMessageID = ContestEffects_Text_RandomOrder,
        .lineTwoEffectMessageID = ContestEffects_Text_NextTurn4,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 21, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_DOUBLE_FINAL_ACT] = {
        .lineOneEffectMessageID = ContestEffects_Text_DoubleScore,
        .lineTwoEffectMessageID = ContestEffects_Text_ForFinalAct,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 22, .format = 9 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_LOW_VOLTAGE_ADVANTAGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_HighScoreFor1,
        .lineTwoEffectMessageID = ContestEffects_Text_LowVoltage,
        .appeal = 0,
        .actingMessages = {
            { .messageID = 23, .format = 5 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_FIRST_PERFORMANCE_ADVANTAGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_IfFirst,
        .lineTwoEffectMessageID = ContestEffects_Text_PerformancePlusTwo1,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 24, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_FINAL_PERFORMANCE_ADVANTAGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_IfFinal,
        .lineTwoEffectMessageID = ContestEffects_Text_PerformancePlusTwo2,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 25, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_NO_VOLTAGE_DOWN] = {
        .lineOneEffectMessageID = ContestEffects_Text_NoVoltageDown,
        .lineTwoEffectMessageID = ContestEffects_Text_ThisTurn2,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 26, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_TWO_VOLTAGE_IN_A_ROW_ADVANTAGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_IfVoltageGoes,
        .lineTwoEffectMessageID = ContestEffects_Text_UpInARowPlusThree,
        .appeal = 10,
        .actingMessages = {
            { .messageID = 27, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_HIGH_SCORE_LATER_TURN] = {
        .lineOneEffectMessageID = ContestEffects_Text_HighScoreFor2,
        .lineTwoEffectMessageID = ContestEffects_Text_ALaterTurn,
        .appeal = 0,
        .actingMessages = {
            { .messageID = 28, .format = 2 },
            { .messageID = 29, .format = 2 },
            { .messageID = 30, .format = 2 },
            { .messageID = 31, .format = 2 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_MAX_VOLTAGE_ADVANTAGE] = {
        .lineOneEffectMessageID = ContestEffects_Text_AfterVoltage,
        .lineTwoEffectMessageID = ContestEffects_Text_HitsMaxPlusThree,
        .appeal = 20,
        .actingMessages = {
            { .messageID = 32, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
    [CONTEST_EFFECT_PITY_POINTS] = {
        .lineOneEffectMessageID = ContestEffects_Text_IfRatedThe,
        .lineTwoEffectMessageID = ContestEffects_Text_WorstPlusThree,
        .appeal = 10,
        .actingMessages = {
            { .messageID = 33, .format = 2 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
            { .messageID = CONTEST_EFFECT_ACTING_MESSAGE_NONE, .format = 0 },
        },
    },
};

BOOL Contest_IsPlayerHost(Contest *contest)
{
    if (contest->isLinkContest == FALSE || (contest->isLinkContest == TRUE && contest->data.hostContestantID == contest->data.playerContestantID)) {
        return TRUE;
    }

    return FALSE;
}

void Contest_SelectOpponents(Contest *contest, enum HeapID heapID, int numOpponents, enum PokemonContestType contestType, enum PokemonContestRank contestRank, enum ContestCompetition competitionType, BOOL isGameCompleted, BOOL isNatDexObtained)
{
    int i, j;
    u8 *candidates;
    u8 numCandidates = 0;
    u16 candidateIdx;
    BOOL isPostgame = FALSE;
    int numOpponentEntries;
    BOOL isSingleCompetition, isPracticeCompetition;
    Contestant *opponentEntries;
    int numGuests, guestIdx;
    Contestant guest;

    isPracticeCompetition = FALSE;
    isSingleCompetition = FALSE;

    switch (competitionType) {
    case CONTEST_COMPETITION_PRACTICE_VISUAL:
    case CONTEST_COMPETITION_PRACTICE_DANCE:
    case CONTEST_COMPETITION_PRACTICE_ACTING:
        isPracticeCompetition = TRUE;
        break;
    case CONTEST_COMPETITION_VISUAL:
    case CONTEST_COMPETITION_DANCE:
    case CONTEST_COMPETITION_ACTING:
        isSingleCompetition = TRUE;
        break;
    }

    opponentEntries = LoadMemberFromNARC(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, CONTEST_DATA_OPPONENTS, FALSE, heapID, TRUE);
    numOpponentEntries = NARC_GetMemberSizeByIndexPair(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, CONTEST_DATA_OPPONENTS) / sizeof(Contestant);
    candidates = Heap_AllocAtEnd(heapID, numOpponentEntries + 1);

    if (isGameCompleted == TRUE && isNatDexObtained == TRUE) {
        isPostgame = TRUE;
    }

    for (i = 0; i < numOpponentEntries; i++) {
        if (contestRank != opponentEntries[i].rank) {
            continue;
        }

        if (isPostgame == TRUE) {
            if (opponentEntries[i].availability == 1) {
                continue;
            }
        } else {
            if ((opponentEntries[i].availability == 2) || (opponentEntries[i].availability == 3)) {
                continue;
            }
        }

        if (isPracticeCompetition == TRUE) {
            if (opponentEntries[i].inPracticeCompetitions == 0) {
                continue;
            }
        } else if (isSingleCompetition == TRUE) {
            if (opponentEntries[i].inSingleCompetitions == 0) {
                continue;
            }
        } else {
            if ((opponentEntries[i].inPracticeCompetitions == 1) || (opponentEntries[i].inSingleCompetitions == 1)) {
                continue;
            }
        }

        if (contestType == CONTEST_TYPE_COOL && opponentEntries[i].inCoolContests
            || contestType == CONTEST_TYPE_BEAUTY && opponentEntries[i].inBeautyContests
            || contestType == CONTEST_TYPE_CUTE && opponentEntries[i].inCuteContests
            || contestType == CONTEST_TYPE_SMART && opponentEntries[i].inSmartContests
            || contestType == CONTEST_TYPE_TOUGH && opponentEntries[i].inToughContests) {
            candidates[numCandidates++] = i;
        }
    }

    candidates[numCandidates] = CONTEST_CANDIDATES_TERMINATOR;

    if (isSingleCompetition == FALSE) {
        GF_ASSERT(numCandidates >= numOpponents);

        numGuests = 0;

        for (i = 0; i < numCandidates; i++) {
            if (opponentEntries[candidates[i]].availability == 3) {
                numGuests++;
            }
        }

        if (numGuests > 0) {
            guestIdx = Contest_GetRNGNext(contest) % numGuests;

            for (i = 0; i < numCandidates; i++) {
                if (opponentEntries[candidates[i]].availability == 3) {
                    if (guestIdx == 0) {
                        guest = opponentEntries[candidates[i]];
                        break;
                    } else {
                        guestIdx--;
                    }
                }
            }
        }

        for (i = CONTEST_NUM_PARTICIPANTS - numOpponents; i < CONTEST_NUM_PARTICIPANTS; i++) {
            candidateIdx = Contest_GetRNGNext(contest) % numCandidates;

            if (opponentEntries[candidates[candidateIdx]].availability == 3) {
                i--;
                continue;
            }

            contest->data.contestants[i] = opponentEntries[candidates[candidateIdx]];

            for (j = candidateIdx; candidates[j] != CONTEST_CANDIDATES_TERMINATOR; j++) {
                candidates[j] = candidates[j + 1];
            }

            numCandidates--;
        }

        if (numGuests > 0) {
            candidateIdx = CONTEST_NUM_PARTICIPANTS - numOpponents;
            candidateIdx += Contest_GetRNGNext(contest) % numOpponents;
            contest->data.contestants[candidateIdx] = guest;
        }
    } else {
        GF_ASSERT(numCandidates >= CONTEST_NUM_PARTICIPANTS);

        for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
            contest->data.contestants[i] = opponentEntries[candidates[i]];
        }
    }

    Heap_Free(candidates);
    Heap_Free(opponentEntries);
}

void Contest_DressUpOpponentPhotos(Contest *contest, enum HeapID heapID)
{
    int i, j;
    OpponentDressUp *dressUps;
    OpponentDressUp *dressUp;
    int firstOpponentID;
    int dressUpID;

    dressUps = LoadMemberFromNARC(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, CONTEST_DATA_OPPONENT_DRESS_UPS, FALSE, heapID, TRUE);

    switch (contest->data.competitionType) {
    case CONTEST_COMPETITION_VISUAL:
    case CONTEST_COMPETITION_DANCE:
    case CONTEST_COMPETITION_ACTING:
        firstOpponentID = 0;
        break;
    default:
        firstOpponentID = contest->data.connectionCount;
        break;
    }

    for (i = firstOpponentID; i < CONTEST_NUM_PARTICIPANTS; i++) {
        switch (contest->data.dressUpTheme) {
        case DRESS_UP_THEME_SHAPELY:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_SHAPELY];
            break;
        case DRESS_UP_THEME_SHARP:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_SHARP];
            break;
        case DRESS_UP_THEME_CREATED:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_CREATED];
            break;
        case DRESS_UP_THEME_NATURAL:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_NATURAL];
            break;
        case DRESS_UP_THEME_COLORFUL:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_COLORFUL];
            break;
        case DRESS_UP_THEME_SOLID:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_SOLID];
            break;
        case DRESS_UP_THEME_BRIGHT:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_BRIGHT];
            break;
        case DRESS_UP_THEME_GAUDY:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_GAUDY];
            break;
        case DRESS_UP_THEME_FLEXIBLE:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_FLEXIBLE];
            break;
        case DRESS_UP_THEME_FESTIVE:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_FESTIVE];
            break;
        case DRESS_UP_THEME_INTANGIBLE:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_INTANGIBLE];
            break;
        case DRESS_UP_THEME_RELAXED:
            dressUpID = contest->data.contestants[i].dressUpIDs[DRESS_UP_THEME_RELAXED];
            break;
        default:
            GF_ASSERT(FALSE);
            dressUpID = 0;
            break;
        }

        dressUp = &dressUps[dressUpID];

        ContestPhoto_Init(contest->data.photos[i]);
        ContestPhoto_SetMon(contest->data.photos[i], contest->data.contestMons[i], dressUp->monPriority);

        for (j = 0; j < dressUp->numAccessories; j++) {
            ContestPhoto_SetAccessory(contest->data.photos[i], j, dressUp->accessories[j].accessoryID, dressUp->accessories[j].xPos, dressUp->accessories[j].yPos, dressUp->accessories[j].priority);
        }

        ContestPhoto_SetBackdrop(contest->data.photos[i], dressUp->backdrop);
        ContestPhoto_SetContestRank(contest->data.photos[i], contest->data.contestRank);
    }

    Heap_Free(dressUps);
}

void Contest_InitPhotosWithoutAccessories(Contest *contest)
{
    int i;

    for (i = 0; i < CONTEST_NUM_PARTICIPANTS; i++) {
        ContestPhoto_Init(contest->data.photos[i]);
        ContestPhoto_SetMon(contest->data.photos[i], contest->data.contestMons[i], -1);
        ContestPhoto_SetBackdrop(contest->data.photos[i], 0);
        ContestPhoto_SetContestRank(contest->data.photos[i], contest->data.contestRank);
    }
}

void Contestant_InitPokemon(const Contestant *contestant, Pokemon *mon, enum HeapID heapID)
{
    int i;
    u16 move;
    u32 personality = Pokemon_CreatePersonalityWithGenderAndNature(contestant->species, contestant->gender, NATURE_HARDY);
    Pokemon_InitWith(mon, contestant->species, CONTESTANT_POKEMON_LEVEL, INIT_IVS_RANDOM, TRUE, personality, OTID_NOT_SHINY, 0xf0f0f0f);

    for (i = 0; i < LEARNED_MOVES_MAX; i++) {
        move = contestant->moves[i];
        Pokemon_SetValue(mon, MON_DATA_MOVE1 + i, &move);
    }

    MessageLoader *contestOpponentNames = MessageLoader_Init(MSG_LOADER_LOAD_ON_DEMAND, NARC_INDEX_MSGDATA__PL_MSG, TEXT_BANK_CONTEST_OPPONENT_NAMES, heapID);
    String *monNickname = MessageLoader_GetNewString(contestOpponentNames, contestant->nicknameID);
    String *monOTName = MessageLoader_GetNewString(contestOpponentNames, contestant->otNameID);

    Pokemon_SetValue(mon, MON_DATA_NICKNAME_STRING, monNickname);
    Pokemon_SetValue(mon, MON_DATA_OT_NAME_STRING, monOTName);

    String_Free(monNickname);
    String_Free(monOTName);
    MessageLoader_Free(contestOpponentNames);

    u8 cool = contestant->cool;
    u8 beauty = contestant->beauty;
    u8 cute = contestant->cute;
    u8 smart = contestant->smart;
    u8 tough = contestant->tough;
    u8 sheen = contestant->sheen;

    Pokemon_SetValue(mon, MON_DATA_COOL, &cool);
    Pokemon_SetValue(mon, MON_DATA_BEAUTY, &beauty);
    Pokemon_SetValue(mon, MON_DATA_CUTE, &cute);
    Pokemon_SetValue(mon, MON_DATA_SMART, &smart);
    Pokemon_SetValue(mon, MON_DATA_TOUGH, &tough);
    Pokemon_SetValue(mon, MON_DATA_SHEEN, &sheen);
}

PokemonSprite *Contestant_CreateMonSprite(PokemonSpriteManager *monSpriteMan, int polygonID, Pokemon *mon, int face, PokemonSpriteData *pokemonSpriteData, enum HeapID heapID, int x, int y, int z)
{
    PokemonSpriteTemplate template;

    Pokemon_BuildSpriteTemplate(&template, mon, face);

    int yOffset = Pokemon_SpriteYOffset(mon, face);

    if (pokemonSpriteData != NULL) {
        GF_ASSERT(pokemonSpriteData->tiles != NULL);
        CharacterSprite_LoadSpriteFrame0(template.narcID, template.character, heapID, pokemonSpriteData->tiles);
        pokemonSpriteData->palette = template.palette;
        pokemonSpriteData->narcID = template.narcID;
    }

    PokemonSprite *sprite = PokemonSpriteManager_CreateSprite(monSpriteMan, &template, x, y + yOffset, z, polygonID, NULL, NULL);
    return sprite;
}

void Contest_SelectJudges(Contest *contest, enum HeapID heapID, int mainJudgeID, enum PokemonContestType contestType, enum PokemonContestRank contestRank)
{
    int i;
    u8 numJudges = 0, numMainJudges = 0;
    u16 mainJudgeIdx;
    int numJudgeEntries;
    ContestJudge *judges;
    u8 *judgeCandidates, *mainJudgeCandidates;

    judges = LoadMemberFromNARC(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, CONTEST_DATA_JUDGES, FALSE, heapID, TRUE);
    numJudgeEntries = NARC_GetMemberSizeByIndexPair(NARC_INDEX_CONTEST__DATA__CONTEST_DATA, CONTEST_DATA_JUDGES) / sizeof(ContestJudge);
    judgeCandidates = Heap_AllocAtEnd(heapID, numJudgeEntries + 1);
    mainJudgeCandidates = Heap_AllocAtEnd(heapID, numJudgeEntries + 1);

    for (i = 0; i < numJudgeEntries; i++) {
        if (contestRank != judges[i].rank) {
            continue;
        }

        if (contestType == CONTEST_TYPE_COOL && judges[i].coolRole) {
            if (judges[i].coolRole > 1) {
                mainJudgeCandidates[numMainJudges++] = i;
            } else {
                judgeCandidates[numJudges++] = i;
            }
        } else if (contestType == CONTEST_TYPE_BEAUTY && judges[i].beautyRole) {
            if (judges[i].beautyRole > 1) {
                mainJudgeCandidates[numMainJudges++] = i;
            } else {
                judgeCandidates[numJudges++] = i;
            }
        } else if (contestType == CONTEST_TYPE_CUTE && judges[i].cuteRole) {
            if (judges[i].cuteRole > 1) {
                mainJudgeCandidates[numMainJudges++] = i;
            } else {
                judgeCandidates[numJudges++] = i;
            }
        } else if (contestType == CONTEST_TYPE_SMART && judges[i].smartRole) {
            if (judges[i].smartRole > 1) {
                mainJudgeCandidates[numMainJudges++] = i;
            } else {
                judgeCandidates[numJudges++] = i;
            }
        } else if (contestType == CONTEST_TYPE_TOUGH && judges[i].toughRole) {
            if (judges[i].toughRole > 1) {
                mainJudgeCandidates[numMainJudges++] = i;
            } else {
                judgeCandidates[numJudges++] = i;
            }
        }
    }

    judgeCandidates[numJudges] = CONTEST_CANDIDATES_TERMINATOR;
    mainJudgeCandidates[numMainJudges] = CONTEST_CANDIDATES_TERMINATOR;

    GF_ASSERT(numJudges >= CONTEST_NUM_JUDGES - 1);

    for (i = 0; i < CONTEST_NUM_JUDGES - 1; i++) {
        contest->data.judges[i] = judges[judgeCandidates[i]];
    }

    GF_ASSERT(numMainJudges >= 1);
    mainJudgeIdx = Contest_GetRNGNext(contest) % numMainJudges;
    contest->data.judges[CONTEST_NUM_JUDGES - 1] = judges[mainJudgeCandidates[mainJudgeIdx]];

    contest->data.headJudgeID = mainJudgeID;
    ContestJudge judge = contest->data.judges[mainJudgeID];
    contest->data.judges[mainJudgeID] = contest->data.judges[CONTEST_NUM_JUDGES - 1];
    contest->data.judges[CONTEST_NUM_JUDGES - 1] = judge;

    Heap_Free(mainJudgeCandidates);
    Heap_Free(judgeCandidates);
    Heap_Free(judges);
}

s8 Contest_GetMoveEffectAppeal(enum MoveContestEffect contestEffect)
{
    GF_ASSERT(contestEffect < (NELEMS(sContestEffects)));
    return sContestEffects[contestEffect].appeal;
}

void Contest_LoadTwoLineContestEffectMessages(enum MoveContestEffect moveContestEffectID, u32 *lineOneEffectMessageID, u32 *lineTwoEffectMessageID)
{
    GF_ASSERT(moveContestEffectID < (NELEMS(sContestEffects)));

    *lineOneEffectMessageID = sContestEffects[moveContestEffectID].lineOneEffectMessageID;
    *lineTwoEffectMessageID = sContestEffects[moveContestEffectID].lineTwoEffectMessageID;
}

u32 Contest_GetMoveEffectDescriptionMessageID(enum MoveContestEffect contestEffect)
{
    GF_ASSERT(contestEffect < (NELEMS(sContestEffects)));
    return ContestEffects_Text_DescriptionFirstNextTurn + (contestEffect - 1);
}

void Contest_GetEffectActingMessage(enum MoveContestEffect contestMoveEffect, enum ContestEffectActingMessage index, u32 *destMessageID, u32 *destFormat)
{
    GF_ASSERT(contestMoveEffect < (NELEMS(sContestEffects)));

    switch (index) {
    case CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_1:
    default:
        *destMessageID = sContestEffects[contestMoveEffect].actingMessages[CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_1].messageID;
        *destFormat = sContestEffects[contestMoveEffect].actingMessages[CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_1].format;
        break;
    case CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_2:
        *destMessageID = sContestEffects[contestMoveEffect].actingMessages[CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_2].messageID;
        *destFormat = sContestEffects[contestMoveEffect].actingMessages[CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_2].format;
        break;
    case CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_3:
        *destMessageID = sContestEffects[contestMoveEffect].actingMessages[CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_3].messageID;
        *destFormat = sContestEffects[contestMoveEffect].actingMessages[CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_3].format;
        break;
    case CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_4:
        *destMessageID = sContestEffects[contestMoveEffect].actingMessages[CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_4].messageID;
        *destFormat = sContestEffects[contestMoveEffect].actingMessages[CONTEST_EFFECT_ACTING_MESSAGE_VARIANT_4].format;
        break;
    case CONTEST_EFFECT_ACTING_MESSAGE_PREVIEW:
        *destMessageID = sContestEffects[contestMoveEffect].actingMessages[CONTEST_EFFECT_ACTING_MESSAGE_PREVIEW].messageID;
        *destFormat = sContestEffects[contestMoveEffect].actingMessages[CONTEST_EFFECT_ACTING_MESSAGE_PREVIEW].format;
        break;
    }
}

u32 Contest_GetContestRankTitleMessageID(enum PokemonContestRank contestRank, enum ContestCompetition competitionType, BOOL isLinkContest)
{
    u32 messageID;

    if (isLinkContest == TRUE) {
        return Contest_Text_Link;
    }

    switch (competitionType) {
    case CONTEST_COMPETITION_PRACTICE_VISUAL:
    case CONTEST_COMPETITION_PRACTICE_DANCE:
    case CONTEST_COMPETITION_PRACTICE_ACTING:
        return Contest_Text_Practice;
    }

    switch (contestRank) {
    case CONTEST_RANK_NORMAL:
        messageID = Contest_Text_NormalRank;
        break;
    case CONTEST_RANK_GREAT:
        messageID = Contest_Text_GreatRank;
        break;
    case CONTEST_RANK_ULTRA:
        messageID = Contest_Text_UltraRank;
        break;
    case CONTEST_RANK_MASTER:
    default:
        messageID = Contest_Text_MasterRank;
        break;
    }

    return messageID;
}

u32 Contest_GetRankMessageID(enum PokemonContestRank contestRank)
{
    u32 messageID;

    switch (contestRank) {
    case CONTEST_RANK_NORMAL:
        messageID = Contest_Text_NormalRank;
        break;
    case CONTEST_RANK_GREAT:
        messageID = Contest_Text_GreatRank;
        break;
    case CONTEST_RANK_ULTRA:
        messageID = Contest_Text_UltraRank;
        break;
    case CONTEST_RANK_MASTER:
        messageID = Contest_Text_MasterRank;
        break;
    case CONTEST_RANK_LINK:
    default:
        messageID = Contest_Text_Link;
        break;
    }

    return messageID;
}

u32 Contest_GetContestTypeMessageID(enum PokemonContestType contestType)
{
    return Contest_GetFullContestTypeMessageID(contestType, CONTEST_COMPETITION_LINK_OR_OFFICIAL);
}

u32 Contest_GetFullContestTypeMessageID(enum PokemonContestType contestType, enum ContestCompetition competitionType)
{
    u32 messageID;

    if (competitionType == CONTEST_COMPETITION_PRACTICE_DANCE) {
        return Contest_Text_Contest;
    }

    switch (contestType) {
    case CONTEST_TYPE_COOL:
        messageID = Contest_Text_CoolContest;
        break;
    case CONTEST_TYPE_BEAUTY:
        messageID = Contest_Text_BeautyContest;
        break;
    case CONTEST_TYPE_CUTE:
        messageID = Contest_Text_CuteContest;
        break;
    case CONTEST_TYPE_SMART:
        messageID = Contest_Text_SmartContest;
        break;
    case CONTEST_TYPE_TOUGH:
    default:
        messageID = Contest_Text_ToughContest;
        break;
    }

    return messageID;
}

int Contest_ContestantIDToContestantEntryNum(int contestantID)
{
    return CONTEST_NUM_PARTICIPANTS - contestantID - 1;
}

int Contest_ContestantEntryNumToContestantID(int contestantEntryNum)
{
    return CONTEST_NUM_PARTICIPANTS - contestantEntryNum - 1;
}

BOOL Contest_IsPracticeCompetition(Contest *contest)
{
    switch (contest->data.competitionType) {
    case CONTEST_COMPETITION_PRACTICE_VISUAL:
    case CONTEST_COMPETITION_PRACTICE_DANCE:
    case CONTEST_COMPETITION_PRACTICE_ACTING:
        return TRUE;
    }

    return FALSE;
}

int Contest_CalcConditionRating(Contest *contest, int contestantID)
{
    int rating, score, i;
    const u16 *thresholds;
    const u16 conditionScoreThresholds[][MAX_CONDITION_HEARTS] = {
        { 10, 20, 30, 40, 50, 60, 70, 80 },
        { 90, 110, 130, 150, 170, 190, 210, 230 },
        { 170, 200, 230, 260, 290, 320, 350, 380 },
        { 320, 360, 400, 440, 480, 520, 560, 600 },
        { 100, 200, 300, 400, 450, 500, 550, 600 },
    };

    rating = 0;
    score = contest->data.results[contestantID].conditionScore;

    if (contest->isLinkContest == TRUE) {
        thresholds = conditionScoreThresholds[CONTEST_RANK_LINK];
    } else {
        thresholds = conditionScoreThresholds[contest->data.contestRank];
    }

    for (i = 0; i < MAX_CONDITION_HEARTS; i++) {
        if (score < thresholds[i]) {
            return rating;
        }

        rating++;
    }

    return rating;
}

int Contest_CalcDressUpRating(Contest *contest, int contestantID)
{
    int rating, score, i;
    const u8 *thresholds;
    const u8 dressUpScoreThresholds[][MAX_DRESS_UP_HEARTS - 1] = {
        { 3, 5, 8 },
        { 5, 10, 15 },
        { 7, 15, 23 },
        { 10, 20, 30 },
        { 10, 20, 30 },
    };

    rating = 0;
    score = contest->data.results[contestantID].dressUpScore;

    if (score == 0) {
        return 0;
    }

    if (contest->isLinkContest == TRUE) {
        thresholds = dressUpScoreThresholds[CONTEST_RANK_LINK];
    } else {
        thresholds = dressUpScoreThresholds[contest->data.contestRank];
    }

    rating = 1;

    for (i = 0; i < MAX_DRESS_UP_HEARTS - 1; i++) {
        if (score <= thresholds[i]) {
            return rating;
        }

        rating++;
    }

    return rating;
}

void SetLockTextWithAutoScroll(BOOL lockTextWithAutoScroll)
{
    if (lockTextWithAutoScroll == FALSE) {
        RenderControlFlags_SetCanABSpeedUpPrint(TRUE);
        RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_NO_WAIT);
        RenderControlFlags_SetSpeedUpOnTouch(TRUE);
    } else {
        RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_ENABLED);
        RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
        RenderControlFlags_SetSpeedUpOnTouch(FALSE);
    }
}

void LockTextSpeed(void)
{
    RenderControlFlags_SetCanABSpeedUpPrint(FALSE);
    RenderControlFlags_SetAutoScrollFlags(AUTO_SCROLL_DISABLED);
    RenderControlFlags_SetSpeedUpOnTouch(FALSE);
}

u32 CalcMonDataRibbon(enum PokemonContestRank contestRank, enum PokemonContestType contestType)
{
    u32 monDataRibbon;

    switch (contestType) {
    case CONTEST_TYPE_COOL:
        monDataRibbon = MON_DATA_SUPER_COOL_RIBBON + contestRank;
        break;
    case CONTEST_TYPE_BEAUTY:
        monDataRibbon = MON_DATA_SUPER_BEAUTY_RIBBON + contestRank;
        break;
    case CONTEST_TYPE_CUTE:
        monDataRibbon = MON_DATA_SUPER_CUTE_RIBBON + contestRank;
        break;
    case CONTEST_TYPE_SMART:
        monDataRibbon = MON_DATA_SUPER_SMART_RIBBON + contestRank;
        break;
    case CONTEST_TYPE_TOUGH:
        monDataRibbon = MON_DATA_SUPER_TOUGH_RIBBON + contestRank;
        break;
    default:
        GF_ASSERT(FALSE);
        return MON_DATA_SUPER_COOL_RIBBON;
    }

    return monDataRibbon;
}

u32 Contest_GetRandomDressUpTheme(enum PokemonContestRank contestRank, BOOL isLinkContest)
{
    u8 themes[DRESS_UP_THEME_MAX];
    int arrayLength = 0;

    if (contestRank == CONTEST_RANK_MASTER || isLinkContest == TRUE) {
        return LCRNG_Next() % DRESS_UP_THEME_MAX;
    }

    MI_CpuClear8(themes, DRESS_UP_THEME_MAX);

    themes[arrayLength++] = DRESS_UP_THEME_CREATED;
    themes[arrayLength++] = DRESS_UP_THEME_NATURAL;
    themes[arrayLength++] = DRESS_UP_THEME_COLORFUL;

    if (contestRank >= CONTEST_RANK_GREAT) {
        themes[arrayLength++] = DRESS_UP_THEME_SHAPELY;
        themes[arrayLength++] = DRESS_UP_THEME_SHARP;
        themes[arrayLength++] = DRESS_UP_THEME_SOLID;
    }

    if (contestRank >= CONTEST_RANK_ULTRA) {
        themes[arrayLength++] = DRESS_UP_THEME_BRIGHT;
        themes[arrayLength++] = DRESS_UP_THEME_GAUDY;
        themes[arrayLength++] = DRESS_UP_THEME_FLEXIBLE;
    }

    return themes[LCRNG_Next() % arrayLength];
}
