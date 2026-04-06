#include "applications/trainer_case/badge_chimes.h"

#include <nitro.h>

#include "applications/trainer_case/defs.h"
#include "applications/trainer_case/main.h"

#include "badges.h"
#include "sound.h"

#define SFX_PLAYER_INDEX   0
#define ACTIVE_BADGE_CHIME 1

#define BADGE_CHIME_NONE 0xFF

static void TrainerCase_CheckBadgeChimesFinishedPlaying(BadgeChimeState *badgeChimeState);
static BOOL TrainerCase_FindSoundEffectPlayerWithSameBadgeChime(BadgeChimeState *badgeChimeState, enum Badge badgeID, u8 polishLevel);
static BOOL TrainerCase_FindFreeSoundEffectPlayer(BadgeChimeState *badgeChimeState, enum Badge badgeID, u8 polishLevel);
static BOOL TrainerCase_GetLeastRecentlyUsedSoundEffectPlayer(BadgeChimeState *badgeChimeState, enum Badge badgeID, u8 polishLevel);
static void TrainerCase_DoNothing(BadgeChimeState *badgeChimeState);
static void TrainerCase_FlagSoundEffectPlayerInUse(BadgeChimeState *badgeChimeState, int index, int sfxPlayerIndex, enum Badge badgeID);
static void TrainerCase_PlayBadgeChimeSoundEffect(int badgeChimeState, enum Badge badgeID, u8 polishLevel);

static const u16 sBadgeChimeBasePitches[MAX_BADGES] = {
    [BADGE_ID_COAL] = 0,
    [BADGE_ID_FOREST] = 128,
    [BADGE_ID_COBBLE] = 256,
    [BADGE_ID_FEN] = 320,
    [BADGE_ID_RELIC] = 448,
    [BADGE_ID_MINE] = 576,
    [BADGE_ID_ICICLE] = 704,
    [BADGE_ID_BEACON] = 768
};

void TrainerCaseApp_InitBadgeChimeState(BadgeChimeState *badgeChimeState)
{
    for (int i = 0; i < NUM_SE_PLAYERS; i++) {
        badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX] = i;
        badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] = BADGE_CHIME_NONE;
    }
}

void TrainerCase_PlayBadgeChime(BadgeChimeState *badgeChimeState, enum Badge badgeID, u8 polishLevel)
{
    TrainerCase_CheckBadgeChimesFinishedPlaying(badgeChimeState);

    if (TrainerCase_FindSoundEffectPlayerWithSameBadgeChime(badgeChimeState, badgeID, polishLevel) == TRUE) {
        return;
    }

    if (TrainerCase_FindFreeSoundEffectPlayer(badgeChimeState, badgeID, polishLevel) == TRUE) {
        return;
    }

    if (TrainerCase_GetLeastRecentlyUsedSoundEffectPlayer(badgeChimeState, badgeID, polishLevel) == TRUE) {
        return;
    }
}

static void TrainerCase_CheckBadgeChimesFinishedPlaying(BadgeChimeState *badgeChimeState)
{
    for (int i = 0; i < NUM_SE_PLAYERS; i++) {
        if (badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] != BADGE_CHIME_NONE) {
            if (Sound_GetNumberOfPlayingSequencesForPlayer(PLAYER_SE_1 + badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX]) == 0) {
                badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] = BADGE_CHIME_NONE;
            }
        }
    }

    TrainerCase_DoNothing(badgeChimeState);
}

static BOOL TrainerCase_FindSoundEffectPlayerWithSameBadgeChime(BadgeChimeState *badgeChimeState, enum Badge badgeID, u8 polishLevel)
{
    for (int i = 0; i < NUM_SE_PLAYERS; i++) {
        if (badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] == badgeID) {
            TrainerCase_PlayBadgeChimeSoundEffect(badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX], badgeID, polishLevel);
            TrainerCase_FlagSoundEffectPlayerInUse(badgeChimeState, i, badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX], badgeID);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL TrainerCase_FindFreeSoundEffectPlayer(BadgeChimeState *badgeChimeState, enum Badge badgeID, u8 polishLevel)
{
    for (int i = 0; i < NUM_SE_PLAYERS; i++) {
        if (badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] == BADGE_CHIME_NONE) {
            TrainerCase_PlayBadgeChimeSoundEffect(badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX], badgeID, polishLevel);
            TrainerCase_FlagSoundEffectPlayerInUse(badgeChimeState, i, badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX], badgeID);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL TrainerCase_GetLeastRecentlyUsedSoundEffectPlayer(BadgeChimeState *badgeChimeState, enum Badge badgeID, u8 polishLevel)
{
    int index = NUM_SE_PLAYERS - 1;

    TrainerCase_PlayBadgeChimeSoundEffect(badgeChimeState->badgeChimePlayers[index][SFX_PLAYER_INDEX], badgeID, polishLevel);
    TrainerCase_FlagSoundEffectPlayerInUse(badgeChimeState, index, badgeChimeState->badgeChimePlayers[index][SFX_PLAYER_INDEX], badgeID);

    return TRUE;
}

static void TrainerCase_FlagSoundEffectPlayerInUse(BadgeChimeState *badgeChimeState, int index, int sfxPlayerIndex, enum Badge badgeID)
{
    for (int i = index; i > 0; i--) {
        badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX] = badgeChimeState->badgeChimePlayers[i - 1][SFX_PLAYER_INDEX];
        badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] = badgeChimeState->badgeChimePlayers[i - 1][ACTIVE_BADGE_CHIME];
    }

    badgeChimeState->badgeChimePlayers[0][SFX_PLAYER_INDEX] = sfxPlayerIndex;
    badgeChimeState->badgeChimePlayers[0][ACTIVE_BADGE_CHIME] = badgeID;
}

static void TrainerCase_DoNothing(BadgeChimeState *badgeChimeState)
{
    for (int i = 0; i < NUM_SE_PLAYERS; i++) {
        if (badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX] == BADGE_CHIME_NONE) {
            // bug: this function uses the wrong index and therefore the above condition is never met
            // good thing too because there's an out of bounds array access in here
            badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX] = badgeChimeState->badgeChimePlayers[i + 1][SFX_PLAYER_INDEX];
            badgeChimeState->badgeChimePlayers[i + 1][SFX_PLAYER_INDEX] = BADGE_CHIME_NONE;
        }
    }
}

static void TrainerCase_PlayBadgeChimeSoundEffect(int sfxPlayerIndex, enum Badge badgeID, u8 polishLevel)
{
    int pitchModifier = 152 * (BADGE_POLISH_LEVEL_4_SPARKLES - polishLevel);

    Sound_PlaySequenceWithPlayer(SOUND_HANDLE_TYPE_SFX_1 + sfxPlayerIndex, PLAYER_SE_1 + sfxPlayerIndex, SEQ_SE_DP_BADGE_C);
    Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_SFX_1 + sfxPlayerIndex, SOUND_PLAYBACK_TRACK_ALL, sBadgeChimeBasePitches[badgeID] - pitchModifier);
}
