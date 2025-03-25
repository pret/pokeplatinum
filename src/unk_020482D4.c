#include <nitro.h>
#include <string.h>

#include "field/field_system.h"

#include "field_script_context.h"
#include "inlines.h"
#include "system.h"
#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "unk_0202CC64.h"
#include "unk_020553DC.h"

static BOOL ScriptContext_IsSoundFadeFinished(ScriptContext *ctx);
static BOOL ScriptContext_IsFanfareFinished(ScriptContext *ctx);
static BOOL sub_020484B0(ScriptContext *param0);
static BOOL ScriptContext_IsSoundFinished(ScriptContext *ctx);
BOOL ScrCmd_053(ScriptContext *param0);
BOOL ScrCmd_FadeOutMusic(ScriptContext *ctx);
BOOL ScriptContext_IsSoundFadeFinished(ScriptContext *ctx);
BOOL ScrCmd_055(ScriptContext *param0);
BOOL ScrCmd_056(ScriptContext *param0);
BOOL ScrCmd_057(ScriptContext *param0);
BOOL ScrCmd_058(ScriptContext *param0);
BOOL ScrCmd_04A(ScriptContext *param0);
BOOL ScrCmd_PlayCry(ScriptContext *ctx);
BOOL ScrCmd_04D(ScriptContext *param0);
BOOL ScrCmd_059(ScriptContext *param0);
BOOL ScrCmd_05A(ScriptContext *param0);
BOOL ScrCmd_05B(ScriptContext *param0);
BOOL ScrCmd_05C(ScriptContext *param0);
BOOL ScrCmd_05D(ScriptContext *param0);
BOOL ScrCmd_283(ScriptContext *param0);
BOOL ScrCmd_2AE(ScriptContext *param0);
BOOL ScrCmd_2F8(ScriptContext *param0);
BOOL ScrCmd_2F9(ScriptContext *param0);
BOOL ScrCmd_2FA(ScriptContext *param0);

BOOL ScrCmd_2AE(ScriptContext *param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);
    u16 *v1 = ScriptContext_GetVarPointer(param0);

    *v1 = Sound_IsSequencePlaying(v0);
    return 0;
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
    Sound_PlayBGM(sub_020554A4(ctx->fieldSystem, ctx->fieldSystem->location->mapId));
    return FALSE;
}

BOOL ScrCmd_053(ScriptContext *param0)
{
    Sound_SetSpecialBGM(param0->fieldSystem, ScriptContext_ReadHalfWord(param0));
    return 0;
}

BOOL ScrCmd_FadeOutMusic(ScriptContext *ctx)
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

BOOL ScrCmd_055(ScriptContext *param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);

    Sound_FadeInBGM(127, v0, 0);
    ScriptContext_Pause(param0, ScriptContext_IsSoundFadeFinished);

    return 1;
}

BOOL ScrCmd_056(ScriptContext *param0)
{
    u8 v0 = ScriptContext_ReadByte(param0);
    BOOL v1 = ScriptContext_ReadByte(param0);

    Sound_SetBGMPlayerPaused(v0, v1);
    return 0;
}

BOOL ScrCmd_057(ScriptContext *param0)
{
    sub_02005588(4, ScriptContext_ReadHalfWord(param0));
    return 0;
}

BOOL ScrCmd_058(ScriptContext *param0)
{
    Sound_SetBGMFixed(ScriptContext_ReadByte(param0));
    return 0;
}

BOOL ScrCmd_PlayFanfare(ScriptContext *ctx)
{
    Sound_PlayEffect(ScriptContext_GetVar(ctx));
    return FALSE;
}

BOOL ScrCmd_04A(ScriptContext *param0)
{
    Sound_StopEffect(ScriptContext_GetVar(param0), 0);
    return 0;
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

BOOL ScrCmd_04D(ScriptContext *param0)
{
    ScriptContext_Pause(param0, sub_020484B0);
    return 1;
}

static BOOL sub_020484B0(ScriptContext *param0)
{
    if (sub_0200598C() == 0) {
        return 1;
    }

    return 0;
}

BOOL ScrCmd_PlaySound(ScriptContext *ctx)
{
    sub_02006150(ScriptContext_ReadHalfWord(ctx));
    return FALSE;
}

BOOL ScrCmd_WaitSound(ScriptContext *ctx)
{
    ScriptContext_Pause(ctx, ScriptContext_IsSoundFinished);
    return TRUE;
}

static BOOL ScriptContext_IsSoundFinished(ScriptContext *ctx)
{
    return sub_020061E4() == FALSE;
}

BOOL ScrCmd_059(ScriptContext *ctx)
{
    u16 *v0 = ScriptContext_GetVarPointer(ctx);

    if (IsChatotCryStructReadyForProcessing(SaveData_GetChatotCry(ctx->fieldSystem->saveData)) == TRUE) {
        *v0 = 1;
        return FALSE;
    }

    *v0 = 0;
    return FALSE;
}

BOOL ScrCmd_05A(ScriptContext *param0)
{
    u16 *v0 = ScriptContext_GetVarPointer(param0);

    if (StartMicSampling() == MIC_RESULT_SUCCESS) {
        *v0 = 1;
        return 0;
    }

    *v0 = 0;
    return 0;
}

BOOL ScrCmd_05B(ScriptContext *param0)
{
    StopMicSampling();
    return 1;
}

BOOL ScrCmd_05C(ScriptContext *param0)
{
    StoreMicDataInChatotCryStruct(SaveData_GetChatotCry(param0->fieldSystem->saveData));
    return 1;
}

BOOL ScrCmd_05D(ScriptContext *param0)
{
    Sound_SetSceneAndPlayBGM(63, 0, 0);
    return 1;
}

BOOL ScrCmd_283(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    u16 v1 = ScriptContext_GetVar(param0);

    sub_02004AD4(v0, v1);
    return 0;
}

BOOL ScrCmd_2F8(ScriptContext *param0)
{
    if (gSystem.heldKeys & PAD_KEY_UP) {
        Sound_SetSceneAndPlayBGM(22, 1218, 1);
    } else {
        Sound_SetSceneAndPlayBGM(22, 1218, 1);
    }

    return 1;
}

BOOL ScrCmd_2F9(ScriptContext *param0)
{
    u16 v0 = ScriptContext_GetVar(param0);

    Sound_SetSceneAndPlayBGM(4, v0, 1);
    return 1;
}

BOOL ScrCmd_2FA(ScriptContext *param0)
{
    u16 *v0 = ScriptContext_GetVarPointer(param0);

    *v0 = Sound_GetCurrentBGM();
    return 0;
}
