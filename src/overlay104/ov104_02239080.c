#include <nitro.h>
#include <string.h>

#include "overlay104/frontier_script_context.h"
#include "overlay104/ov104_0222FBE4.h"

#include "sound.h"
#include "sound_playback.h"

static BOOL ov104_022390C0(FrontierScriptContext *param0);
static BOOL ov104_022390F8(FrontierScriptContext *param0);

BOOL FrontierScrCmd_55(FrontierScriptContext *param0)
{
    Sound_PlayEffect(ov104_0222FC00(param0));
    return 0;
}

BOOL FrontierScrCmd_56(FrontierScriptContext *param0)
{
    Sound_StopEffect(ov104_0222FC00(param0), 0);
    return 0;
}

BOOL FrontierScrCmd_57(FrontierScriptContext *param0)
{
    param0->data[0] = ov104_0222FC00(param0);
    FrontierScriptContext_Pause(param0, ov104_022390C0);

    return 1;
}

static BOOL ov104_022390C0(FrontierScriptContext *param0)
{
    if (Sound_IsEffectPlaying(param0->data[0]) == 0) {
        return 1;
    }

    return 0;
}

BOOL FrontierScrCmd_58(FrontierScriptContext *param0)
{
    Sound_PlayFanfare(FrontierScriptContext_ReadHalfWord(param0));
    return 0;
}

BOOL FrontierScrCmd_59(FrontierScriptContext *param0)
{
    FrontierScriptContext_Pause(param0, ov104_022390F8);
    return 1;
}

static BOOL ov104_022390F8(FrontierScriptContext *param0)
{
    if (Sound_IsBGMPausedByFanfare() == 0) {
        return 1;
    }

    return 0;
}

BOOL FrontierScrCmd_5A(FrontierScriptContext *param0)
{
    Sound_PlayBGM(FrontierScriptContext_ReadHalfWord(param0));
    return 0;
}

BOOL FrontierScrCmd_5B(FrontierScriptContext *param0)
{
    u16 v0 = FrontierScriptContext_ReadHalfWord(param0);

    Sound_StopBGM(Sound_GetCurrentBGM(), 0);
    return 0;
}
