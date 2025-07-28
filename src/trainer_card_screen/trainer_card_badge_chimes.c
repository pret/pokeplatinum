#include "trainer_card_screen/trainer_card_badge_chimes.h"

#include <nitro.h>
#include <string.h>

#include "trainer_card_screen/trainer_card_screen.h"
#include "trainer_card_screen/trainer_card_screen_defs.h"

#include "badges.h"
#include "sound.h"

#define SFX_PLAYER_INDEX   0
#define ACTIVE_BADGE_CHIME 1

#define NO_BADGE_CHIME 0xFF

static void TrainerCard_CheckBadgeChimesFinishedPlaying(TrainerCardBadgeChimeState *badgeChimeState);
static BOOL TrainerCard_FindSoundEffectPlayerWithSameBadgeChime(TrainerCardBadgeChimeState *badgeChimeState, int badgeID, u8 polishLevel);
static BOOL TrainerCard_FindFreeSoundEffectPlayer(TrainerCardBadgeChimeState *badgeChimeState, int badgeID, u8 polishLevel);
static BOOL TrainerCard_GetLeastRecentlyUsedSoundEffectPlayer(TrainerCardBadgeChimeState *badgeChimeState, int badgeID, u8 polishLevel);
static void TrainerCard_DoNothing(TrainerCardBadgeChimeState *badgeChimeState);
static void TrainerCard_FlagSoundEffectPlayerAsInUse(TrainerCardBadgeChimeState *badgeChimeState, int index, int sfxPlayerIndex, int badgeID);
static void TrainerCard_PlayBadgeChimeSoundEffect(int badgeChimeState, int badgeID, u8 polishLevel);

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

void TrainerCard_InitBadgeChimeState(TrainerCardBadgeChimeState *badgeChimeState)
{
    for (int i = 0; i < NUM_SE_PLAYERS; i++) {
        badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX] = i;
        badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] = NO_BADGE_CHIME;
    }
}

void TrainerCard_PlayBadgeChime(TrainerCardBadgeChimeState *badgeChimeState, int badgeID, u8 polishLevel)
{
    TrainerCard_CheckBadgeChimesFinishedPlaying(badgeChimeState);

    if (TrainerCard_FindSoundEffectPlayerWithSameBadgeChime(badgeChimeState, badgeID, polishLevel) == TRUE) {
        return;
    }

    if (TrainerCard_FindFreeSoundEffectPlayer(badgeChimeState, badgeID, polishLevel) == TRUE) {
        return;
    }

    if (TrainerCard_GetLeastRecentlyUsedSoundEffectPlayer(badgeChimeState, badgeID, polishLevel) == TRUE) {
        return;
    }
}

static void TrainerCard_CheckBadgeChimesFinishedPlaying(TrainerCardBadgeChimeState *badgeChimeState)
{
    for (int i = 0; i < NUM_SE_PLAYERS; i++) {
        if (badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] != NO_BADGE_CHIME) {
            if (Sound_GetNumberOfPlayingSequencesForPlayer(PLAYER_SE_1 + badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX]) == 0) {
                badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] = NO_BADGE_CHIME;
            }
        }
    }

    TrainerCard_DoNothing(badgeChimeState);
}

static BOOL TrainerCard_FindSoundEffectPlayerWithSameBadgeChime(TrainerCardBadgeChimeState *badgeChimeState, int badgeID, u8 polishLevel)
{
    for (int i = 0; i < NUM_SE_PLAYERS; i++) {
        if (badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] == badgeID) {
            TrainerCard_PlayBadgeChimeSoundEffect(badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX], badgeID, polishLevel);
            TrainerCard_FlagSoundEffectPlayerAsInUse(badgeChimeState, i, badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX], badgeID);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL TrainerCard_FindFreeSoundEffectPlayer(TrainerCardBadgeChimeState *badgeChimeState, int badgeID, u8 polishLevel)
{
    for (int i = 0; i < NUM_SE_PLAYERS; i++) {
        if (badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] == NO_BADGE_CHIME) {
            TrainerCard_PlayBadgeChimeSoundEffect(badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX], badgeID, polishLevel);
            TrainerCard_FlagSoundEffectPlayerAsInUse(badgeChimeState, i, badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX], badgeID);
            return TRUE;
        }
    }

    return FALSE;
}

static BOOL TrainerCard_GetLeastRecentlyUsedSoundEffectPlayer(TrainerCardBadgeChimeState *badgeChimeState, int badgeID, u8 polishLevel)
{
    int index = NUM_SE_PLAYERS - 1;

    TrainerCard_PlayBadgeChimeSoundEffect(badgeChimeState->badgeChimePlayers[index][SFX_PLAYER_INDEX], badgeID, polishLevel);
    TrainerCard_FlagSoundEffectPlayerAsInUse(badgeChimeState, index, badgeChimeState->badgeChimePlayers[index][SFX_PLAYER_INDEX], badgeID);

    return TRUE;
}

static void TrainerCard_FlagSoundEffectPlayerAsInUse(TrainerCardBadgeChimeState *badgeChimeState, int index, int sfxPlayerIndex, int badgeID)
{
    for (int i = index; i > 0; i--) {
        badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX] = badgeChimeState->badgeChimePlayers[i - 1][SFX_PLAYER_INDEX];
        badgeChimeState->badgeChimePlayers[i][ACTIVE_BADGE_CHIME] = badgeChimeState->badgeChimePlayers[i - 1][ACTIVE_BADGE_CHIME];
    }

    badgeChimeState->badgeChimePlayers[0][SFX_PLAYER_INDEX] = sfxPlayerIndex;
    badgeChimeState->badgeChimePlayers[0][ACTIVE_BADGE_CHIME] = badgeID;
}

static void TrainerCard_DoNothing(TrainerCardBadgeChimeState *badgeChimeState)
{
    for (int i = 0; i < NUM_SE_PLAYERS; i++) {
        if (badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX] == NO_BADGE_CHIME) {
            // bug: this function uses the wrong index and therefore the above condition is never met
            // good thing too because there's an out of bounds array access in here
            badgeChimeState->badgeChimePlayers[i][SFX_PLAYER_INDEX] = badgeChimeState->badgeChimePlayers[i + 1][SFX_PLAYER_INDEX];
            badgeChimeState->badgeChimePlayers[i + 1][SFX_PLAYER_INDEX] = NO_BADGE_CHIME;
        }
    }
}

static void TrainerCard_PlayBadgeChimeSoundEffect(int sfxPlayerIndex, int badgeID, u8 polishLevel)
{
    int pitchModifier = 152 * (BADGE_POLISH_LEVEL_4_SPARKLES - polishLevel);

    Sound_PlaySequenceWithPlayer(SOUND_HANDLE_TYPE_SFX_1 + sfxPlayerIndex, PLAYER_SE_1 + sfxPlayerIndex, SEQ_SE_DP_BADGE_C);
    Sound_SetPitchForHandle(SOUND_HANDLE_TYPE_SFX_1 + sfxPlayerIndex, SOUND_PLAYBACK_TRACK_ALL, sBadgeChimeBasePitches[badgeID] - pitchModifier);
}
