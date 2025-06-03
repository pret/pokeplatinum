#include "overlay012/ov12_022237EC.h"

#include <nitro.h>
#include <string.h>

#include "overlay011/ov11_0221F840.h"
#include "overlay012/ov12_0222389C.h"
#include "overlay012/ov12_0222421C.h"

#include "narc.h"
#include "particle_system.h"
#include "spl.h"

static void ov12_022237EC(SPLEmitter *param0);

static const SPLEmitterCallback sEmitterCallbackTable[] = {
    ov12_022237EC,
    ov12_022238E0,
    ov12_02223998,
    ov12_02223A38,
    ov12_022239F4,
    ov12_02224168,
    ov12_022241EC,
    ov12_02224174,
    ov12_02224180,
    ov12_0222418C,
    ov12_02224198,
    ov12_022241A4,
    ov12_022241B0,
    ov12_022241BC,
    ov12_022241C8,
    ov12_022241D4,
    ov12_022241E0,
    ov12_02224F14,
    ov12_02223B98,
    ov12_02223AC8,
    ov12_02223B30,
    ov12_02223A7C,
    ov12_022238DC
};

static void ov12_022237EC(SPLEmitter *param0)
{
    return;
}

ParticleSystem *ov12_022237F0(int heapID, int param1, int param2)
{
    ParticleSystem *v0 = ov11_0221F840(heapID);
    void *v1 = ParticleSystem_LoadResourceFromNARC(29, param1, heapID);

    ParticleSystem_SetResource(v0, v1, (1 << 1) | (1 << 3), param2);
    return v0;
}

ParticleSystem *ov12_02223818(int heapID, int param1, int param2, int param3)
{
    ParticleSystem *v0 = ov11_0221F840(heapID);
    void *v1 = ParticleSystem_LoadResourceFromNARC(param1, param2, heapID);

    ParticleSystem_SetResource(v0, v1, (1 << 1) | (1 << 3), param3);
    return v0;
}

void *ov12_02223844(NARC *param0, int param1, int param2)
{
    return NARC_AllocAndReadWholeMember(param0, param1, param2);
}

ParticleSystem *ov12_0222384C(NARC *param0, int heapID, int param2, int param3)
{
    ParticleSystem *v0;
    void *v1;

    v0 = ov11_0221F888(heapID);

    if (v0 == NULL) {
        return NULL;
    }

    v1 = ov12_02223844(param0, param2, heapID);
    ParticleSystem_SetResource(v0, v1, (1 << 1) | (1 << 3), param3);

    return v0;
}

SPLEmitter *BattleParticleUtil_CreateEmitter(ParticleSystem *ps, int resourceID, int callbackID, void *param)
{
    return ParticleSystem_CreateEmitterWithCallback(ps, resourceID, sEmitterCallbackTable[callbackID], param);
}

void BattleParticleUtil_FreeParticleSystem(ParticleSystem *ps)
{
    ov11_0221F8D8(ps);
}
