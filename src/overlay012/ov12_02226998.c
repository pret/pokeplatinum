#include "overlay012/ov12_02226998.h"

#include <nitro.h>
#include <string.h>

#include "global/utility.h"
#include "overlay012/battle_anim_system.h"
#include "overlay012/ov12_02226998.h"
#include "overlay012/ov12_022269C0.h"
#include "overlay012/ov12_02226B84.h"
#include "overlay012/ov12_0222AC70.h"
#include "overlay012/ov12_0222D6B0.h"
#include "overlay012/ov12_0222E784.h"
#include "overlay012/ov12_0222E91C.h"
#include "overlay012/ov12_0222F700.h"
#include "overlay012/ov12_022346A4.h"
#include "overlay012/ov12_02234E44.h"

static const BattleAnimScriptFunc sBattleAnimScriptFuncs[] = {
    BattleAnimScriptFunc_Nop,
    BattleAnimScriptFunc_AnimExample,
    BattleAnimScriptFunc_SoundExample,
    BattleAnimScriptFunc_GenericExample,
    BattleAnimScriptFunc_RotateMon,
    BattleAnimScriptFunc_Strength,
    ov12_0222B45C,
    ov12_0222B68C,
    ov12_0222F770,
    ov12_0222F9E4,
    ov12_02227534,
    ov12_022300C4,
    ov12_022303D0,
    ov12_0222B9E0,
    ov12_0222BAE4,
    ov12_0222BCF4,
    ov12_0222BE48,
    ov12_02230754,
    ov12_02230804,
    ov12_0222BFA8,
    ov12_02230A8C,
    ov12_0222C0C0,
    ov12_0222C3C0,
    ov12_02231444,
    ov12_0222C5FC,
    ov12_02231E7C,
    ov12_0222C6D4,
    ov12_0222C8F8,
    ov12_0222CA2C,
    ov12_0223249C,
    ov12_022326AC,
    ov12_02232024,
    ov12_02233178,
    ov12_02227828,
    ov12_0222797C,
    ov12_02227CBC,
    ov12_02226CB0,
    ov12_02233CD4,
    ov12_02228168,
    ov12_0222CB90,
    ov12_02228214,
    ov12_02233F30,
    ov12_02227F30,
    ov12_02234214,
    ov12_02226EB0,
    ov12_022271D8,
    ov12_022342C4,
    ov12_022344D0,
    ov12_0223464C,
    ov12_0222CFA0,
    ov12_022282BC,
    ov12_02228394,
    ov12_02228520,
    ov12_022287CC,
    ov12_02228A0C,
    ov12_0222E1A8,
    ov12_02228B40,
    ov12_02228C6C,
    ov12_0222E810,
    ov12_0222EAA0,
    ov12_02228E00,
    ov12_02228EC0,
    ov12_022290DC,
    ov12_022291AC,
    ov12_02229304,
    ov12_02229B28,
    ov12_02229E54,
    ov12_02229638,
    ov12_02229810,
    ov12_02229908,
    ov12_0222EFB0,
    ov12_0222F2F8,
    ov12_0222A00C,
    ov12_02229C5C,
    ov12_0222A604,
    ov12_0222A8F4,
    ov12_0222AC40,
    ov12_02228FB4,
    BattleAnimScriptFunc_RenderPokemonSprites,
    ov12_0222F5EC,
    ov12_022351A4,
    ov12_022351D0,
    ov12_022351FC,
    ov12_02235228
};

static const BattleAnimScriptSpriteFunc sBattleAnimScriptSpriteFuncs[] = {
    ov12_02226B1C,
    ov12_0222AE68,
    ov12_0222FE30,
    ov12_0222D56C,
    ov12_02230CEC,
    ov12_02231010,
    ov12_022312A4,
    ov12_02231650,
    ov12_02231950,
    ov12_02231C1C,
    ov12_0222777C,
    ov12_02232378,
    ov12_022329E0,
    ov12_02232CA8,
    ov12_02233454,
    ov12_02233734,
    ov12_022339C4,
    ov12_0222CC54,
    ov12_02234008,
    ov12_0222D7C0,
    ov12_0222DB60,
    ov12_0222DEFC,
    ov12_0222E2F8,
    ov12_0222E61C,
    ov12_0222EC90,
    ov12_0222A1AC,
    ov12_0222A34C,
    ov12_0222A410,
    ov12_0222A5C0,
    ov12_022346A4,
    ov12_02234A10,
    ov12_022348C8,
    ov12_02234D98
};

static const BattleAnimScriptSpriteFunc sUnusedSpriteFuncs[] = {
    NULL
};

void UnusedSpriteFunc()
{
    UNUSED(sUnusedSpriteFuncs[0]);
}

BattleAnimScriptFunc BattleAnimScript_GetFunc(enum BattleAnimScriptFuncID id)
{
    if (id >= (NELEMS(sBattleAnimScriptFuncs))) {
        return NULL;
    }

    return sBattleAnimScriptFuncs[id];
}

BattleAnimScriptSpriteFunc BattleAnimScript_GetSpriteFunc(u32 id)
{
    if (id >= (NELEMS(sBattleAnimScriptSpriteFuncs))) {
        return NULL;
    }

    return sBattleAnimScriptSpriteFuncs[id];
}
