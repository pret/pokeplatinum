#include <nitro.h>
#include <string.h>

#include "field/field_system.h"

#include "field_script_context.h"
#include "inlines.h"
#include "sound.h"
#include "sound_chatot.h"
#include "sound_playback.h"
#include "system.h"
#include "unk_0202CC64.h"
#include "unk_020553DC.h"

static BOOL ScriptContext_IsSoundFadeFinished(ScriptContext *ctx);
static BOOL ScriptContext_IsFanfareFinished(ScriptContext *ctx);
static BOOL ScrCmd_IsPokemonCryPlaying(ScriptContext *param0);
static BOOL ScriptContext_IsSoundFinished(ScriptContext *ctx);

BOOL ScrCmd_IsSequencePlaying(ScriptContext *ctx)
{
    u16 seqID = ScriptContext_ReadHalfWord(ctx);
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = Sound_IsSequencePlaying(seqID);
    return FALSE;
}

BOOL ScrCmd_PlayMusic(ScriptContext *ctx)
{
    Sound_PlayBGM(ScriptContext_ReadHalfWord(ctx));
    return FALSE;
}

BOOL ScrCmd_StopMusic(ScriptContext *ctx)
{
    u16 dummy = ScriptContext_ReadHalfWord(ctx);

    Sound_StopBGM(Sound_GetCurrentBGM(), 0);
    return FALSE;
}

BOOL ScrCmd_PlayDefaultMusic(ScriptContext *ctx)
{
    Sound_PlayBGM(Sound_GetBGMByMapID(ctx->fieldSystem, ctx->fieldSystem->location->mapId));
    return FALSE;
}

BOOL ScrCmd_SetSpecialBGM(ScriptContext *ctx)
{
    Sound_SetSpecialBGM(ctx->fieldSystem, ScriptContext_ReadHalfWord(ctx));
    return FALSE;
}

BOOL ScrCmd_FadeOutBGM(ScriptContext *ctx)
{
    u16 targetVolume = ScriptContext_ReadHalfWord(ctx);
    u16 frames = ScriptContext_ReadHalfWord(ctx);

    Sound_FadeOutBGM(targetVolume, frames);
    ScriptContext_Pause(ctx, ScriptContext_IsSoundFadeFinished);
    return TRUE;
}

static BOOL ScriptContext_IsSoundFadeFinished(ScriptContext *ctx)
{
    return Sound_IsFadeActive() == FALSE;
}

BOOL ScrCmd_FadeInBGM(ScriptContext *ctx)
{
    u16 frames = ScriptContext_ReadHalfWord(ctx);

    Sound_FadeInBGM(127, frames, BGM_FADE_IN_TYPE_FROM_ZERO);
    ScriptContext_Pause(ctx, ScriptContext_IsSoundFadeFinished);

    return TRUE;
}

BOOL ScrCmd_SetBGMPlayerPaused(ScriptContext *ctx)
{
    u8 playerID = ScriptContext_ReadByte(ctx);
    BOOL paused = ScriptContext_ReadByte(ctx);

    Sound_SetBGMPlayerPaused(playerID, paused);
    return FALSE;
}

BOOL ScrCmd_057(ScriptContext *ctx)
{
    sub_02005588(SOUND_SCENE_FIELD, ScriptContext_ReadHalfWord(ctx));
    return FALSE;
}

BOOL ScrCmd_SetBGMFixed(ScriptContext *ctx)
{
    Sound_SetBGMFixed(ScriptContext_ReadByte(ctx));
    return FALSE;
}

BOOL ScrCmd_PlayFanfare(ScriptContext *ctx)
{
    Sound_PlayEffect(ScriptContext_GetVar(ctx));
    return FALSE;
}

BOOL ScrCmd_StopFanfare(ScriptContext *ctx)
{
    Sound_StopEffect(ScriptContext_GetVar(ctx), 0);
    return FALSE;
}

BOOL ScrCmd_WaitFanfare(ScriptContext *ctx)
{
    ctx->data[0] = ScriptContext_GetVar(ctx);

    ScriptContext_Pause(ctx, ScriptContext_IsFanfareFinished);
    return TRUE;
}

static BOOL ScriptContext_IsFanfareFinished(ScriptContext *ctx)
{
    return Sound_IsEffectPlaying(ctx->data[0]) == FALSE;
}

BOOL ScrCmd_PlayCry(ScriptContext *ctx)
{
    u16 species = ScriptContext_GetVar(ctx);
    u16 unused = ScriptContext_GetVar(ctx);

    Sound_PlayPokemonCry(species, 0);

    return FALSE;
}

BOOL ScrCmd_WaitCry(ScriptContext *ctx)
{
    ScriptContext_Pause(ctx, ScrCmd_IsPokemonCryPlaying);
    return TRUE;
}

static BOOL ScrCmd_IsPokemonCryPlaying(ScriptContext *ctx)
{
    return Sound_IsPokemonCryPlaying() == FALSE;
}

BOOL ScrCmd_PlaySound(ScriptContext *ctx)
{
    Sound_PlayFanfare(ScriptContext_ReadHalfWord(ctx));
    return FALSE;
}

BOOL ScrCmd_WaitSound(ScriptContext *ctx)
{
    ScriptContext_Pause(ctx, ScriptContext_IsSoundFinished);
    return TRUE;
}

static BOOL ScriptContext_IsSoundFinished(ScriptContext *ctx)
{
    return Sound_IsBGMPausedByFanfare() == FALSE;
}

BOOL ScrCmd_CheckRecordedChatotCryIsPlayable(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    if (Sound_IsRecordedChatotCryPlayable(SaveData_GetChatotCry(ctx->fieldSystem->saveData)) == TRUE) {
        *destVar = TRUE;
        return FALSE;
    }

    *destVar = FALSE;
    return FALSE;
}

BOOL ScrCmd_TryRecordChatotCry(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    if (Sound_StartRecordingChatotCry() == MIC_RESULT_SUCCESS) {
        *destVar = TRUE;
        return FALSE;
    }

    *destVar = FALSE;
    return FALSE;
}

BOOL ScrCmd_StopRecordingChatotCry(ScriptContext *ctx)
{
    Sound_StopRecordingChatotCry();
    return TRUE;
}

BOOL ScrCmd_StoreRecordedChatotCry(ScriptContext *ctx)
{
    Sound_StoreRecordedChatotCry(SaveData_GetChatotCry(ctx->fieldSystem->saveData));
    return TRUE;
}

BOOL ScrCmd_SetSubScene63(ScriptContext *ctx)
{
    Sound_SetSceneAndPlayBGM(SOUND_SCENE_SUB_63, SEQ_NONE, 0);
    return TRUE;
}

BOOL ScrCmd_SetInitialVolumeForSequence(ScriptContext *ctx)
{
    u16 seqID = ScriptContext_GetVar(ctx);
    u16 volume = ScriptContext_GetVar(ctx);

    Sound_SetInitialVolumeForSequence(seqID, volume);
    return FALSE;
}

BOOL ScrCmd_SetScene22(ScriptContext *ctx)
{
    if (gSystem.heldKeys & PAD_KEY_UP) {
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_22, SEQ_PL_TOWN02, 1);
    } else {
        Sound_SetSceneAndPlayBGM(SOUND_SCENE_22, SEQ_PL_TOWN02, 1);
    }

    return TRUE;
}

BOOL ScrCmd_SetFieldScene(ScriptContext *ctx)
{
    u16 bgmID = ScriptContext_GetVar(ctx);

    Sound_SetSceneAndPlayBGM(SOUND_SCENE_FIELD, bgmID, 1);
    return TRUE;
}

BOOL ScrCmd_GetCurrentBGM(ScriptContext *ctx)
{
    u16 *destVar = ScriptContext_GetVarPointer(ctx);

    *destVar = Sound_GetCurrentBGM();
    return FALSE;
}
