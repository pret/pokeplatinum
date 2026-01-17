#include <nitro.h>
#include <string.h>

#include "overlay104/frontier_script_context.h"
#include "overlay104/ov104_0222FBE4.h"

#include "sound.h"
#include "sound_playback.h"

static BOOL WaitSoundEffect(FrontierScriptContext *ctx);
static BOOL WaitFanfare(FrontierScriptContext *ctx);

BOOL FrontierScrCmd_PlaySoundEffect(FrontierScriptContext *ctx)
{
    Sound_PlayEffect(ov104_0222FC00(ctx));
    return FALSE;
}

BOOL FrontierScrCmd_StopSoundEffect(FrontierScriptContext *ctx)
{
    Sound_StopEffect(ov104_0222FC00(ctx), 0);
    return FALSE;
}

BOOL FrontierScrCmd_WaitSoundEffect(FrontierScriptContext *ctx)
{
    ctx->data[0] = ov104_0222FC00(ctx);
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
