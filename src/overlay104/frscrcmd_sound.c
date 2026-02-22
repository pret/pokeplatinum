#include <nitro.h>
#include <string.h>

#include "overlay104/frontier_script_context.h"
#include "overlay104/frscrcmd.h"

#include "sound.h"
#include "sound_playback.h"

static BOOL WaitSoundEffect(FrontierScriptContext *ctx);
static BOOL WaitFanfare(FrontierScriptContext *ctx);

BOOL FrontierScrCmd_PlaySoundEffect(FrontierScriptContext *ctx)
{
    Sound_PlayEffect(FrontierScriptContext_GetVar(ctx));
    return FALSE;
}

BOOL FrontierScrCmd_StopSoundEffect(FrontierScriptContext *ctx)
{
    Sound_StopEffect(FrontierScriptContext_GetVar(ctx), 0);
    return FALSE;
}

BOOL FrontierScrCmd_WaitSoundEffect(FrontierScriptContext *ctx)
{
    ctx->data[0] = FrontierScriptContext_GetVar(ctx);
    FrontierScriptContext_Pause(ctx, WaitSoundEffect);
    return TRUE;
}

static BOOL WaitSoundEffect(FrontierScriptContext *ctx)
{
    return Sound_IsEffectPlaying(ctx->data[0]) == FALSE;
}

BOOL FrontierScrCmd_PlayFanfare(FrontierScriptContext *ctx)
{
    Sound_PlayFanfare(FrontierScriptContext_ReadHalfWord(ctx));
    return FALSE;
}

BOOL FrontierScrCmd_WaitFanfare(FrontierScriptContext *ctx)
{
    FrontierScriptContext_Pause(ctx, WaitFanfare);
    return TRUE;
}

static BOOL WaitFanfare(FrontierScriptContext *ctx)
{
    return Sound_IsBGMPausedByFanfare() == FALSE;
}

BOOL FrontierScrCmd_PlayBGM(FrontierScriptContext *ctx)
{
    Sound_PlayBGM(FrontierScriptContext_ReadHalfWord(ctx));
    return FALSE;
}

BOOL FrontierScrCmd_StopBGM(FrontierScriptContext *ctx)
{
    u16 unused = FrontierScriptContext_ReadHalfWord(ctx);
    Sound_StopBGM(Sound_GetCurrentBGM(), 0);
    return FALSE;
}
