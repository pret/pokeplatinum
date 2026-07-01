#include "battle_anim/script_func_tables.h"

#include <nitro.h>
#include <string.h>

#include "battle_anim/battle_anim_system.h"
#include "battle_anim/ov12_022346A4.h"
#include "battle_anim/script_func_examples.h"
#include "battle_anim/script_func_mimic.h"
#include "battle_anim/script_func_tables.h"
#include "battle_anim/script_funcs_0.h"
#include "battle_anim/script_funcs_1.h"
#include "battle_anim/script_funcs_2.h"
#include "battle_anim/script_funcs_3.h"
#include "battle_anim/script_funcs_4.h"
#include "battle_anim/script_funcs_stat_change.h"
#include "global/utility.h"

static const BattleAnimScriptFunc sBattleAnimScriptFuncs[] = {
    BattleAnimScriptFunc_Nop,
    BattleAnimScriptFunc_AnimExample,
    BattleAnimScriptFunc_SoundExample,
    BattleAnimScriptFunc_GenericExample,
    BattleAnimScriptFunc_RotateMon,
    BattleAnimScriptFunc_Strength,
    BattleAnimScriptFunc_BulkUp,
    BattleAnimScriptFunc_DoubleTeam,
    BattleAnimScriptFunc_QuickAttack,
    BattleAnimScriptFunc_DrillPeck,
    BattleAnimScriptFunc_Submission,
    BattleAnimScriptFunc_Confusion,
    BattleAnimScriptFunc_AcidArmor,
    BattleAnimScriptFunc_Growth,
    BattleAnimScriptFunc_Meditate,
    BattleAnimScriptFunc_Teleport,
    BattleAnimScriptFunc_Flash,
    BattleAnimScriptFunc_NightShadeAttacker,
    BattleAnimScriptFunc_NightShadeDefender,
    BattleAnimScriptFunc_Splash,
    BattleAnimScriptFunc_Spite,
    BattleAnimScriptFunc_Harden,
    BattleAnimScriptFunc_Minimize,
    BattleAnimScriptFunc_FaintAttack,
    BattleAnimScriptFunc_Earthquake,
    BattleAnimScriptFunc_PlayfulHops,
    BattleAnimScriptFunc_Nightmare,
    BattleAnimScriptFunc_Flail,
    BattleAnimScriptFunc_Magnitude,
    BattleAnimScriptFunc_Return,
    BattleAnimScriptFunc_VitalThrow,
    BattleAnimScriptFunc_Swagger,
    BattleAnimScriptFunc_Memento,
    BattleAnimScriptFunc_FadeBg,
    BattleAnimScriptFunc_FadeBattlerSprite,
    BattleAnimScriptFunc_ScalePokemonSprite,
    BattleAnimScriptFunc_Shake,
    BattleAnimScriptFunc_Extrasensory,
    BattleAnimScriptFunc_AlphaFadePokemonSprite,
    BattleAnimScriptFunc_OdorSleuth,
    BattleAnimScriptFunc_HideBattler,
    BattleAnimScriptFunc_FakeOutCurtain,
    BattleAnimScriptFunc_ScaleBattlerSprite,
    BattleAnimScriptFunc_FakeOut,
    BattleAnimScriptFunc_ScrollCustomBg,
    BattleAnimScriptFunc_MuddyWater,
    BattleAnimScriptFunc_Megahorn,
    BattleAnimScriptFunc_MegahornAttacker,
    BattleAnimScriptFunc_MegahornDefender,
    BattleAnimScriptFunc_Surf,
    BattleAnimScriptFunc_BlinkAttacker,
    BattleAnimScriptFunc_MoveBattlerX,
    BattleAnimScriptFunc_MoveBattlerX2, // Functionally equivalent to MoveBattlerX
    BattleAnimScriptFunc_ShakeAndScaleAttacker,
    BattleAnimScriptFunc_ShakeAndScaleAttacker2,
    BattleAnimScriptFunc_Camouflage,
    BattleAnimScriptFunc_Superpower,
    BattleAnimScriptFunc_MoveBattler,
    BattleAnimScriptFunc_Mimic,
    BattleAnimScriptFunc_ShadowPunch,
    BattleAnimScriptFunc_RevolveBattler,
    BattleAnimScriptFunc_MoveBattlerOffScreen,
    BattleAnimScriptFunc_MoveBattlerToDefaultPos,
    BattleAnimScriptFunc_FadePokemonSprite,
    BattleAnimScriptFunc_BattlerPartialDrawTest,
    BattleAnimScriptFunc_MoveEmitterA2BLinear,
    BattleAnimScriptFunc_MoveEmitterA2BParabolic,
    BattleAnimScriptFunc_BattlerPartialDraw,
    BattleAnimScriptFunc_ShakeBg,
    BattleAnimScriptFunc_PixelatePokemonSprite,
    BattleAnimScriptFunc_RolePlay,
    BattleAnimScriptFunc_Snatch,
    BattleAnimScriptFunc_RevolveEmitter,
    BattleAnimScriptFunc_MoveEmitterViewportTop,
    BattleAnimScriptFunc_SetBgGrayscale,
    BattleAnimScriptFunc_SetPokemonSpritePriority,
    BattleAnimScriptFunc_ScrollSwitchedBg,
    BattleAnimScriptFunc_MoveBattlerOnOrOffScreen,
    BattleAnimScriptFunc_RenderPokemonSprites,
    BattleAnimScriptFunc_Sketch,
    BattleAnimScriptFunc_StatChangeUp,
    BattleAnimScriptFunc_StatChangeDown,
    BattleAnimScriptFunc_StatChangeHeal,
    BattleAnimScriptFunc_StatChangeMetal
};

static const BattleAnimScriptSpriteFunc sBattleAnimSpriteFuncs[] = {
    BattleAnimSpriteFunc_SpriteExample,
    BattleAnimSpriteFunc_StringShot,
    BattleAnimSpriteFunc_Kinesis,
    BattleAnimSpriteFunc_Trick,
    BattleAnimSpriteFunc_Metronome,
    BattleAnimSpriteFunc_Constrict,
    BattleAnimSpriteFunc_Bonemerang,
    BattleAnimSpriteFunc_ScaryFace,
    BattleAnimSpriteFunc_Foresight,
    BattleAnimSpriteFunc_LockOn,
    BattleAnimSpriteFunc_Swagger,
    BattleAnimSpriteFunc_MeanLook,
    BattleAnimSpriteFunc_Torment,
    BattleAnimSpriteFunc_BatonPass,
    BattleAnimSpriteFunc_Unused,
    BattleAnimSpriteFunc_Grudge,
    ov12_022339C4,
    BattleAnimSpriteFunc_IcicleSpear,
    ov12_02234008,
    ov12_0222D7C0,
    ov12_0222DB60,
    ov12_0222DEFC,
    ov12_0222E2F8,
    ov12_0222E61C,
    BattleAnimSpriteFunc_FrenzyPlant,
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

BattleAnimScriptFunc BattleAnimScript_GetFunc(u32 id)
{
    if (id >= NELEMS(sBattleAnimScriptFuncs)) {
        return NULL;
    }

    return sBattleAnimScriptFuncs[id];
}

BattleAnimScriptSpriteFunc BattleAnimScript_GetSpriteFunc(u32 id)
{
    if (id >= NELEMS(sBattleAnimSpriteFuncs)) {
        return NULL;
    }

    return sBattleAnimSpriteFuncs[id];
}
