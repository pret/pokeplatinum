#include <nitro.h>
#include <string.h>

#include "inlines.h"
#include "core_sys.h"

#include "field/field_system.h"

#include "unk_020041CC.h"
#include "unk_02005474.h"
#include "unk_02006224.h"
#include "unk_0202CC64.h"
#include "field_script_context.h"
#include "unk_020553DC.h"

static BOOL sub_02048378(ScriptContext * param0);
static BOOL sub_02048454(ScriptContext * param0);
static BOOL sub_020484B0(ScriptContext * param0);
static BOOL sub_020484E4(ScriptContext * param0);
BOOL ScrCmd_050(ScriptContext * param0);
BOOL ScrCmd_051(ScriptContext * param0);
BOOL ScrCmd_052(ScriptContext * param0);
BOOL ScrCmd_053(ScriptContext * param0);
BOOL ScrCmd_054(ScriptContext * param0);
BOOL sub_02048378(ScriptContext * param0);
BOOL ScrCmd_055(ScriptContext * param0);
BOOL ScrCmd_056(ScriptContext * param0);
BOOL ScrCmd_057(ScriptContext * param0);
BOOL ScrCmd_058(ScriptContext * param0);
BOOL ScrCmd_049(ScriptContext * param0);
BOOL ScrCmd_04A(ScriptContext * param0);
BOOL ScrCmd_04B(ScriptContext * param0);
BOOL ScrCmd_04C(ScriptContext * param0);
BOOL ScrCmd_04D(ScriptContext * param0);
BOOL ScrCmd_04E(ScriptContext * param0);
BOOL ScrCmd_04F(ScriptContext * param0);
BOOL ScrCmd_059(ScriptContext * param0);
BOOL ScrCmd_05A(ScriptContext * param0);
BOOL ScrCmd_05B(ScriptContext * param0);
BOOL ScrCmd_05C(ScriptContext * param0);
BOOL ScrCmd_05D(ScriptContext * param0);
BOOL ScrCmd_283(ScriptContext * param0);
BOOL ScrCmd_2AE(ScriptContext * param0);
BOOL ScrCmd_2F8(ScriptContext * param0);
BOOL ScrCmd_2F9(ScriptContext * param0);
BOOL ScrCmd_2FA(ScriptContext * param0);

BOOL ScrCmd_2AE (ScriptContext * param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02005690(v0);
    return 0;
}

BOOL ScrCmd_050 (ScriptContext * param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);

    Sound_PlayBGM(v0);
    return 0;
}

BOOL ScrCmd_051 (ScriptContext * param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);

    sub_020055D0(sub_020041FC(), 0);
    return 0;
}

BOOL ScrCmd_052 (ScriptContext * param0)
{
    int v0 = param0->fieldSystem->location->mapId;
    u16 v1 = sub_020554A4(param0->fieldSystem, v0);

    Sound_PlayBGM(v1);
    return 0;
}

BOOL ScrCmd_053 (ScriptContext * param0)
{
    sub_020553F0(param0->fieldSystem, ScriptContext_ReadHalfWord(param0));
    return 0;
}

BOOL ScrCmd_054 (ScriptContext * param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);
    u16 v1 = ScriptContext_ReadHalfWord(param0);

    sub_0200564C(v0, v1);
    ScriptContext_Pause(param0, sub_02048378);
    return 1;
}

static BOOL sub_02048378 (ScriptContext * param0)
{
    if (Sound_CheckFade() == 0) {
        return 1;
    }

    return 0;
}

BOOL ScrCmd_055 (ScriptContext * param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);

    sub_0200560C(127, v0, 0);
    ScriptContext_Pause(param0, sub_02048378);

    return 1;
}

BOOL ScrCmd_056 (ScriptContext * param0)
{
    u8 v0 = ScriptContext_ReadByte(param0);
    BOOL v1 = ScriptContext_ReadByte(param0);

    sub_020049F4(v0, v1);
    return 0;
}

BOOL ScrCmd_057 (ScriptContext * param0)
{
    sub_02005588(4, ScriptContext_ReadHalfWord(param0));
    return 0;
}

BOOL ScrCmd_058 (ScriptContext * param0)
{
    sub_020041CC(ScriptContext_ReadByte(param0));
    return 0;
}

BOOL ScrCmd_049 (ScriptContext * param0)
{
    Sound_PlayEffect(ScriptContext_GetVar(param0));
    return 0;
}

BOOL ScrCmd_04A (ScriptContext * param0)
{
    sub_020057A4(ScriptContext_GetVar(param0), 0);
    return 0;
}

BOOL ScrCmd_04B (ScriptContext * param0)
{
    param0->data[0] = ScriptContext_GetVar(param0);

    ScriptContext_Pause(param0, sub_02048454);
    return 1;
}

static BOOL sub_02048454 (ScriptContext * param0)
{
    if (Sound_IsEffectPlaying(param0->data[0]) == 0) {
        return 1;
    }

    return 0;
}

BOOL ScrCmd_04C (ScriptContext * param0)
{
    u16 v0, v1;

    v0 = ScriptContext_GetVar(param0);
    v1 = ScriptContext_GetVar(param0);

    sub_02005844(v0, 0);

    return 0;
}

BOOL ScrCmd_04D (ScriptContext * param0)
{
    ScriptContext_Pause(param0, sub_020484B0);
    return 1;
}

static BOOL sub_020484B0 (ScriptContext * param0)
{
    if (sub_0200598C() == 0) {
        return 1;
    }

    return 0;
}

BOOL ScrCmd_04E (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;

    sub_02006150(ScriptContext_ReadHalfWord(param0));
    return 0;
}

BOOL ScrCmd_04F (ScriptContext * param0)
{
    ScriptContext_Pause(param0, sub_020484E4);
    return 1;
}

static BOOL sub_020484E4 (ScriptContext * param0)
{
    FieldSystem * fieldSystem = param0->fieldSystem;

    if (sub_020061E4() == 0) {
        return 1;
    }

    return 0;
}

BOOL ScrCmd_059 (ScriptContext * param0)
{
    u16 * v0 = ScriptContext_GetVarPointer(param0);

    if (IsChatotCryStructReadyForProcessing(GetChatotCryDataFromSave(param0->fieldSystem->saveData)) == 1) {
        *v0 = 1;
        return 0;
    }

    *v0 = 0;
    return 0;
}

BOOL ScrCmd_05A (ScriptContext * param0)
{
    u16 * v0 = ScriptContext_GetVarPointer(param0);

    if (StartMicSampling() == MIC_RESULT_SUCCESS) {
        *v0 = 1;
        return 0;
    }

    *v0 = 0;
    return 0;
}

BOOL ScrCmd_05B (ScriptContext * param0)
{
    StopMicSampling();
    return 1;
}

BOOL ScrCmd_05C (ScriptContext * param0)
{
    StoreMicDataInChatotCryStruct(GetChatotCryDataFromSave(param0->fieldSystem->saveData));
    return 1;
}

BOOL ScrCmd_05D (ScriptContext * param0)
{
    sub_02004550(63, 0, 0);
    return 1;
}

BOOL ScrCmd_283 (ScriptContext * param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    u16 v1 = ScriptContext_GetVar(param0);

    sub_02004AD4(v0, v1);
    return 0;
}

BOOL ScrCmd_2F8 (ScriptContext * param0)
{
    if (gCoreSys.heldKeys & PAD_KEY_UP) {
        sub_02004550(22, 1218, 1);
    } else {
        sub_02004550(22, 1218, 1);
    }

    return 1;
}

BOOL ScrCmd_2F9 (ScriptContext * param0)
{
    u16 v0 = ScriptContext_GetVar(param0);

    sub_02004550(4, v0, 1);
    return 1;
}

BOOL ScrCmd_2FA (ScriptContext * param0)
{
    u16 * v0 = ScriptContext_GetVarPointer(param0);

    *v0 = sub_020041FC();
    return 0;
}
