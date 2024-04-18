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
BOOL sub_020482FC(ScriptContext * param0);
BOOL sub_0204830C(ScriptContext * param0);
BOOL sub_02048320(ScriptContext * param0);
BOOL sub_02048338(ScriptContext * param0);
BOOL sub_02048350(ScriptContext * param0);
BOOL sub_02048378(ScriptContext * param0);
BOOL sub_0204838C(ScriptContext * param0);
BOOL sub_020483B0(ScriptContext * param0);
BOOL sub_020483CC(ScriptContext * param0);
BOOL sub_020483E0(ScriptContext * param0);
BOOL sub_020483F4(ScriptContext * param0);
BOOL sub_02048410(ScriptContext * param0);
BOOL sub_0204842C(ScriptContext * param0);
BOOL sub_0204846C(ScriptContext * param0);
BOOL sub_020484A0(ScriptContext * param0);
BOOL sub_020484C4(ScriptContext * param0);
BOOL sub_020484D4(ScriptContext * param0);
BOOL sub_020484F8(ScriptContext * param0);
BOOL sub_02048530(ScriptContext * param0);
BOOL sub_0204855C(ScriptContext * param0);
BOOL sub_02048568(ScriptContext * param0);
BOOL sub_0204857C(ScriptContext * param0);
BOOL sub_0204858C(ScriptContext * param0);
BOOL sub_020482D4(ScriptContext * param0);
BOOL sub_020485C0(ScriptContext * param0);
BOOL sub_020485D4(ScriptContext * param0);
BOOL sub_020485F4(ScriptContext * param0);

BOOL sub_020482D4 (ScriptContext * param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);
    u16 * v1 = ScriptContext_GetVarPointer(param0);

    *v1 = sub_02005690(v0);
    return 0;
}

BOOL sub_020482FC (ScriptContext * param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);

    Sound_PlayBGM(v0);
    return 0;
}

BOOL sub_0204830C (ScriptContext * param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);

    sub_020055D0(sub_020041FC(), 0);
    return 0;
}

BOOL sub_02048320 (ScriptContext * param0)
{
    int v0 = param0->fieldSys->unk_1C->unk_00;
    u16 v1 = sub_020554A4(param0->fieldSys, v0);

    Sound_PlayBGM(v1);
    return 0;
}

BOOL sub_02048338 (ScriptContext * param0)
{
    sub_020553F0(param0->fieldSys, ScriptContext_ReadHalfWord(param0));
    return 0;
}

BOOL sub_02048350 (ScriptContext * param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);
    u16 v1 = ScriptContext_ReadHalfWord(param0);

    sub_0200564C(v0, v1);
    ScriptContext_Pause(param0, sub_02048378);
    return 1;
}

static BOOL sub_02048378 (ScriptContext * param0)
{
    if (sub_02005684() == 0) {
        return 1;
    }

    return 0;
}

BOOL sub_0204838C (ScriptContext * param0)
{
    u16 v0 = ScriptContext_ReadHalfWord(param0);

    sub_0200560C(127, v0, 0);
    ScriptContext_Pause(param0, sub_02048378);

    return 1;
}

BOOL sub_020483B0 (ScriptContext * param0)
{
    u8 v0 = ScriptContext_ReadByte(param0);
    BOOL v1 = ScriptContext_ReadByte(param0);

    sub_020049F4(v0, v1);
    return 0;
}

BOOL sub_020483CC (ScriptContext * param0)
{
    sub_02005588(4, ScriptContext_ReadHalfWord(param0));
    return 0;
}

BOOL sub_020483E0 (ScriptContext * param0)
{
    sub_020041CC(ScriptContext_ReadByte(param0));
    return 0;
}

BOOL sub_020483F4 (ScriptContext * param0)
{
    Sound_PlayEffect(ScriptContext_GetVar(param0));
    return 0;
}

BOOL sub_02048410 (ScriptContext * param0)
{
    sub_020057A4(ScriptContext_GetVar(param0), 0);
    return 0;
}

BOOL sub_0204842C (ScriptContext * param0)
{
    param0->data[0] = ScriptContext_GetVar(param0);

    ScriptContext_Pause(param0, sub_02048454);
    return 1;
}

static BOOL sub_02048454 (ScriptContext * param0)
{
    if (sub_020057D4(param0->data[0]) == 0) {
        return 1;
    }

    return 0;
}

BOOL sub_0204846C (ScriptContext * param0)
{
    u16 v0, v1;

    v0 = ScriptContext_GetVar(param0);
    v1 = ScriptContext_GetVar(param0);

    sub_02005844(v0, 0);

    return 0;
}

BOOL sub_020484A0 (ScriptContext * param0)
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

BOOL sub_020484C4 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;

    sub_02006150(ScriptContext_ReadHalfWord(param0));
    return 0;
}

BOOL sub_020484D4 (ScriptContext * param0)
{
    ScriptContext_Pause(param0, sub_020484E4);
    return 1;
}

static BOOL sub_020484E4 (ScriptContext * param0)
{
    FieldSystem * v0 = param0->fieldSys;

    if (sub_020061E4() == 0) {
        return 1;
    }

    return 0;
}

BOOL sub_020484F8 (ScriptContext * param0)
{
    u16 * v0 = ScriptContext_GetVarPointer(param0);

    if (IsChatotCryStructReadyForProcessing(GetChatotCryDataFromSave(param0->fieldSys->saveData)) == 1) {
        *v0 = 1;
        return 0;
    }

    *v0 = 0;
    return 0;
}

BOOL sub_02048530 (ScriptContext * param0)
{
    u16 * v0 = ScriptContext_GetVarPointer(param0);

    if (StartMicSampling() == MIC_RESULT_SUCCESS) {
        *v0 = 1;
        return 0;
    }

    *v0 = 0;
    return 0;
}

BOOL sub_0204855C (ScriptContext * param0)
{
    StopMicSampling();
    return 1;
}

BOOL sub_02048568 (ScriptContext * param0)
{
    StoreMicDataInChatotCryStruct(GetChatotCryDataFromSave(param0->fieldSys->saveData));
    return 1;
}

BOOL sub_0204857C (ScriptContext * param0)
{
    sub_02004550(63, 0, 0);
    return 1;
}

BOOL sub_0204858C (ScriptContext * param0)
{
    u16 v0 = ScriptContext_GetVar(param0);
    u16 v1 = ScriptContext_GetVar(param0);

    sub_02004AD4(v0, v1);
    return 0;
}

BOOL sub_020485C0 (ScriptContext * param0)
{
    if (gCoreSys.heldKeys & PAD_KEY_UP) {
        sub_02004550(22, 1218, 1);
    } else {
        sub_02004550(22, 1218, 1);
    }

    return 1;
}

BOOL sub_020485D4 (ScriptContext * param0)
{
    u16 v0 = ScriptContext_GetVar(param0);

    sub_02004550(4, v0, 1);
    return 1;
}

BOOL sub_020485F4 (ScriptContext * param0)
{
    u16 * v0 = ScriptContext_GetVarPointer(param0);

    *v0 = sub_020041FC();
    return 0;
}
