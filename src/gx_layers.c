#include <nitro.h>
#include <string.h>
#include <nnsys.h>

#include "data_021BF67C.h"

#include "struct_defs/struct_02099F80.h"

#include "gx_layers.h"

static int sEngineALayers;
static int sEngineBLayers;

void GX_SetBanks (const UnkStruct_02099F80 * banks)
{
    GX_ResetBankForBG();
    GX_ResetBankForBGExtPltt();
    GX_ResetBankForSubBG();
    GX_ResetBankForSubBGExtPltt();
    GX_ResetBankForOBJ();
    GX_ResetBankForOBJExtPltt();
    GX_ResetBankForSubOBJ();
    GX_ResetBankForSubOBJExtPltt();
    GX_ResetBankForTex();
    GX_ResetBankForTexPltt();

    GX_SetBankForBG(banks->unk_00);
    GX_SetBankForBGExtPltt(banks->unk_04);
    GX_SetBankForSubBG(banks->unk_08);
    GX_SetBankForSubBGExtPltt(banks->unk_0C);
    GX_SetBankForOBJ(banks->unk_10);
    GX_SetBankForOBJExtPltt(banks->unk_14);
    GX_SetBankForSubOBJ(banks->unk_18);
    GX_SetBankForSubOBJExtPltt(banks->unk_1C);
    GX_SetBankForTex(banks->unk_20);
    GX_SetBankForTexPltt(banks->unk_24);
}

void GX_DisableEngineALayers (void)
{
    sEngineALayers = 0;
}

void GX_EngineAToggleLayers (u8 layerMask, u8 enable)
{
    if (enable == 1) {
        if (sEngineALayers & layerMask) {
            return;
        }
    } else {
        if (!(sEngineALayers & layerMask)) {
            return;
        }
    }

    sEngineALayers ^= layerMask;
    GX_SetVisiblePlane(sEngineALayers);
}

void GX_EngineASetLayers (int layers)
{
    sEngineALayers = layers;
    GX_SetVisiblePlane(sEngineALayers);
}

void GX_DisableEngineBLayers (void)
{
    sEngineBLayers = 0;
}

void GX_EngineBToggleLayers (u8 layerMask, u8 enable)
{
    if (enable == 1) {
        if (sEngineBLayers & layerMask) {
            return;
        }
    } else {
        if (!(sEngineBLayers & layerMask)) {
            return;
        }
    }

    sEngineBLayers ^= layerMask;
    GXS_SetVisiblePlane(sEngineBLayers);
}

void GX_EngineBSetLayers (int layers)
{
    sEngineBLayers = layers;
    GXS_SetVisiblePlane(sEngineBLayers);
}

void GX_BothDispOn (void)
{
    GX_DispOn();
    GXS_DispOn();
}

void GX_SwapDisplay (void)
{
    if (Unk_021BF67C.unk_65 == 0) {
        GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    } else {
        GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
    }
}

int GX_EngineAGetLayers (void)
{
    return sEngineALayers;
}
