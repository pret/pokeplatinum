#include "battle_anim/battle_particle_util.h"

#include <nitro.h>
#include <string.h>

#include "battle_anim/emitter_callbacks.h"
#include "battle_anim/generic_emitter_callback.h"
#include "overlay011/particle_helper.h"

#include "narc.h"
#include "particle_system.h"
#include "spl.h"

static void BattleAnimEmitterCb_Nop(SPLEmitter *emitter);

static const SPLEmitterCallback sEmitterCallbackTable[] = {
    BattleAnimEmitterCb_Nop,
    BattleAnimEmitterCb_SetPosToEnemy1, // Unused
    BattleAnimEmitterCb_SetPosToPlayer1, // Unused
    BattleAnimEmitterCb_SetPosToAttacker,
    BattleAnimEmitterCb_SetPosToDefender,
    BattleAnimEmitterCb_SetAxisAndPos, // Attacker -> Defender
    BattleAnimEmitterCb_SetAxisAndPosReverse, // Defender -> Attacker
    BattleAnimEmitterCb_SetAxisAndPos_ConvergeDefault,
    BattleAnimEmitterCb_SetAxisAndPos_ConvergeCenter,
    BattleAnimEmitterCb_SetAxisAndPos_ConvergeDefender,
    BattleAnimEmitterCb_SetAxisAndPos_ConvergeAttacker,
    BattleAnimEmitterCb_SetAxisAndPos_ConvergeExplicit,
    BattleAnimEmitterCb_SetAxisAndPos_MagnetDefault,
    BattleAnimEmitterCb_SetAxisAndPos_MagnetCenter,
    BattleAnimEmitterCb_SetAxisAndPos_MagnetDefender,
    BattleAnimEmitterCb_SetAxisAndPos_MagnetAttacker,
    BattleAnimEmitterCb_SetAxisAndPos_MagnetExplicit,
    BattleAnimEmitterCb_Generic,
    BattleAnimEmitterCb_SetPosBasedOnBattlers,
    BattleAnimEmitterCb_SetPosToAttackerSide,
    BattleAnimEmitterCb_SetPosToDefenderSide,
    BattleAnimEmitterCb_SetPosToAttacker2, // Equivalent to BattleAnimEmitterCb_SetPosToAttacker
    BattleAnimEmitterCb_Nop2
};

static void BattleAnimEmitterCb_Nop(SPLEmitter *emitter)
{
    return;
}

ParticleSystem *BattleParticleUtil_CreateParticleSystem(enum HeapID heapID, int narcMemberIndex, BOOL uploadResImmediately)
{
    ParticleSystem *ps = ParticleHelper_CreateParticleSystem(heapID);
    void *resource = ParticleSystem_LoadResourceFromNARC(NARC_INDEX_WAZAEFFECT__EFFECTDATA__WAZA_PARTICLE, narcMemberIndex, heapID);
    ParticleSystem_SetResource(ps, resource, VRAM_AUTO_RELEASE_TEXTURE_LNK | VRAM_AUTO_RELEASE_PALETTE_LNK, uploadResImmediately);

    return ps;
}

ParticleSystem *BattleParticleUtil_CreateParticleSystemEx(enum HeapID heapID, enum NarcID narcID, int memberIndex, BOOL uploadResImmediately)
{
    ParticleSystem *ps = ParticleHelper_CreateParticleSystem(heapID);
    void *resource = ParticleSystem_LoadResourceFromNARC(narcID, memberIndex, heapID);
    ParticleSystem_SetResource(ps, resource, VRAM_AUTO_RELEASE_TEXTURE_LNK | VRAM_AUTO_RELEASE_PALETTE_LNK, uploadResImmediately);

    return ps;
}

void *BattleParticleUtil_ReadMemberFromNARC(NARC *narc, int memberIdx, enum HeapID heapID)
{
    return NARC_AllocAndReadWholeMember(narc, memberIdx, heapID);
}

ParticleSystem *ov12_0222384C(NARC *param0, enum HeapID heapID, int param2, int param3)
{
    ParticleSystem *v0;
    void *v1;

    v0 = ov11_0221F888(heapID);

    if (v0 == NULL) {
        return NULL;
    }

    v1 = BattleParticleUtil_ReadMemberFromNARC(param0, param2, heapID);
    ParticleSystem_SetResource(v0, v1, (1 << 1) | (1 << 3), param3);

    return v0;
}

SPLEmitter *BattleParticleUtil_CreateEmitter(ParticleSystem *ps, int resourceID, int callbackID, void *param)
{
    return ParticleSystem_CreateEmitterWithCallback(ps, resourceID, sEmitterCallbackTable[callbackID], param);
}

void BattleParticleUtil_FreeParticleSystem(ParticleSystem *ps)
{
    ParticleHelper_FreeParticleSystem(ps);
}
