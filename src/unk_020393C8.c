#include "unk_020393C8.h"

#include <nitro.h>
#include <string.h>

#include "struct_defs/struct_020E5EB4.h"

#include "communication_system.h"
#include "heap.h"
#include "inlines.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"

typedef struct NetworkIcon_t {
    int unk_00;
    int strength;
    int unk_08;
    u16 x;
    u16 y;
    u8 isWifi;
    u8 screenId;
    u8 unk_12;
    const UnkStruct_020E5EB4 **unused_14;
    SysTask *unk_18;
    GXOamAttr *unk_1C;
} NetworkIcon;

static int inline inline_02039614(NetworkIcon *param0);
static int inline inline_02039614_1(int param0, int param1);
static void sub_02039428(SysTask *param0, void *param1);
static void sub_020394D0(int vramType, BOOL unusedIsWifi, u32 offset, u32 heapID);
static void sub_02039530(int vramType, BOOL isWifi, u32 heapID);
static void sub_02039614(NetworkIcon *param0);

NetworkIcon *NetworkIcon_Init(u32 unused0, u32 heapID, int x, int y, BOOL isWifi, const UnkStruct_020E5EB4 *unused5[], int vramType)
{
    NetworkIcon *v0;

    sub_020394D0(vramType, isWifi, (16 * 2 * 14), heapID);
    sub_02039530(vramType, isWifi, heapID);

    v0 = (NetworkIcon *)Heap_AllocFromHeapAtEnd(heapID, sizeof(NetworkIcon));

    v0->unk_18 = SysTask_ExecuteAfterVBlank(sub_02039428, v0, 5);
    v0->x = x;
    v0->y = y;
    v0->unk_00 = 0;
    v0->strength = 3;
    v0->unused_14 = unused5;
    v0->unk_08 = 0;
    v0->isWifi = isWifi;
    v0->unk_12 = 0;
    v0->screenId = 0;
    v0->unk_1C = (GXOamAttr *)HW_OAM;

    return v0;
}

static void sub_02039428(SysTask *param0, void *param1)
{
    NetworkIcon *v0 = (NetworkIcon *)param1;
    sub_02039614(v0);
}

static int inline inline_02039614(NetworkIcon *networkIcon)
{
    switch (networkIcon->screenId) {
    case 1:
        return (GX_GetDispSelect() == GX_DISP_SELECT_MAIN_SUB) ? NNS_G2D_VRAM_TYPE_2DMAIN : NNS_G2D_VRAM_TYPE_2DSUB;
    case 2:
        return (GX_GetDispSelect() == GX_DISP_SELECT_MAIN_SUB) ? NNS_G2D_VRAM_TYPE_2DSUB : NNS_G2D_VRAM_TYPE_2DMAIN;
    default:
        return NNS_G2D_VRAM_TYPE_2DMAIN;
    }
}

static int inline inline_02039614_1(int param0, int param1)
{
    int v0, v1;

    if (param0 == NNS_G2D_VRAM_TYPE_2DMAIN) {
        v0 = GX_GetOBJVRamModeChar();
        v1 = GX_GetBankForOBJ();
    } else {
        v0 = GXS_GetOBJVRamModeChar();
        v1 = GX_GetBankForSubOBJ();
    }

    switch (v0) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        if ((v1 == GX_VRAM_OBJ_16_G) || (v1 == GX_VRAM_OBJ_16_F)) {
            return 512 - 16 + 4 * param1;
        } else {
            return 1024 - 16 + 4 * param1;
        }
    case GX_OBJVRAMMODE_CHAR_1D_128K:
        if ((v1 == GX_VRAM_OBJ_80_EF) || (v1 == GX_VRAM_OBJ_80_EG)) {
            return 640 - 4 + 1 * param1;
        } else if (v1 == GX_VRAM_OBJ_64_E) {
            return 512 - 4 + 1 * param1;
        } else {
            return 1024 - 4 + 1 * param1;
        }
    default:
        return 1024 - 8 + 2 * param1;
    }
}

static inline void inline_02039440(GXOamAttr *param0)
{
    G2_SetOBJAttr(param0, 0, 0, 0, GX_OAM_MODE_NORMAL, 0, GX_OAM_EFFECT_NODISPLAY, GX_OAM_SHAPE_16x16, GX_OAM_COLORMODE_16, 0, 0, 0);
}

void NetworkIcon_SetStrength(NetworkIcon *param0, int networkStrength)
{
    if (networkStrength < 4) {
        param0->strength = networkStrength;
        param0->unk_08 = 0;
    }
}

void sub_02039440(NetworkIcon *param0)
{
    SysTask_Done(param0->unk_18);
    inline_02039440((GXOamAttr *)(HW_OAM));

    if (param0->unk_12) {
        inline_02039440((GXOamAttr *)(HW_OAM_END));
    }

    Heap_FreeToHeap(param0);
}

void sub_02039474(NetworkIcon *param0, BOOL param1, u32 heapID)
{
    sub_020394D0(NNS_G2D_VRAM_TYPE_2DSUB, param0->isWifi, (16 * 2 * 14), heapID);
    sub_02039530(NNS_G2D_VRAM_TYPE_2DSUB, param0->isWifi, heapID);

    param0->screenId = (param1) ? 1 : 2;
    param0->unk_12 = 1;
}

void *sub_020394A8(u32 heapID)
{
    void *heapPtr = Heap_AllocFromHeapAtEnd(heapID, 600);

    ReadFileToBuffer("data/pl_wm.NCLR", &heapPtr);
    DC_FlushRange(heapPtr, 600);

    return heapPtr;
}

static void sub_020394D0(int vramType, BOOL unusedIsWifi, u32 offset, u32 heapID)
{
    void *heapPtr = Heap_AllocFromHeapAtEnd(heapID, 600);

    if (heapPtr) {
        NNSG2dPaletteData *paletteData;

        ReadFileToBuffer("data/pl_wm.NCLR", &heapPtr);
        DC_FlushRange(heapPtr, 600);
        NNS_G2dGetUnpackedPaletteData(heapPtr, &paletteData);

        if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
            GX_LoadOBJPltt(paletteData->pRawData, offset, (16 * 2));
        } else {
            GXS_LoadOBJPltt(paletteData->pRawData, offset, (16 * 2));
        }

        Heap_FreeToHeap(heapPtr);
    }
}

static void sub_02039530(int vramType, BOOL isWifi, u32 heapID)
{
    void *v0 = Heap_AllocFromHeapAtEnd(heapID, 600);

    if (v0) {
        NNSG2dCharacterData *v1;
        int offset, v3, v4;

        if (isWifi) {
            ReadFileToBuffer("data/pl_wifi.NCGR", &v0);
        } else {
            ReadFileToBuffer("data/pl_wm.NCGR", &v0);
        }

        DC_FlushRange(v0, 600);
        NNS_G2dGetUnpackedBGCharacterData(v0, &v1);

        if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
            v3 = GX_GetOBJVRamModeChar();
            v4 = GX_GetBankForOBJ();
        } else {
            v3 = GXS_GetOBJVRamModeChar();
            v4 = GX_GetBankForSubOBJ();
        }

        switch (v3) {
        case GX_OBJVRAMMODE_CHAR_1D_32K:
            if ((v4 == GX_VRAM_OBJ_16_G) || (v4 == GX_VRAM_OBJ_16_F)) {
                offset = ((512 - 16) * 32);
            } else {
                offset = ((1024 - 16) * 32);
            }
            break;
        case GX_OBJVRAMMODE_CHAR_1D_128K:
            if ((v4 == GX_VRAM_OBJ_80_EF) || (v4 == GX_VRAM_OBJ_80_EG)) {
                offset = ((2560 - 16) * 32);
            } else if (v4 == GX_VRAM_OBJ_64_E) {
                offset = 0x10000 - 16 * 32;
            } else {
                offset = ((4096 - 16) * 32);
            }
            break;
        default:
            offset = ((2048 - 16) * 32);
            break;
        }

        if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
            GX_LoadOBJ(v1->pRawData, offset, (4 * 4 * 32));
        } else {
            GXS_LoadOBJ(v1->pRawData, offset, (4 * 4 * 32));
        }

        Heap_FreeToHeap(v0);
    }
}

static const UnkStruct_020E5EB4 Unk_020E5EB4[] = {
    { 0x1F0, 0x14 },
    { 0x1F4, 0x14 },
    { 0x1F8, 0x14 },
    { 0x1FC, 0x14 },
    { 0xFFFF, 0x0 }
};

static const UnkStruct_020E5EB4 Unk_020E5EAC[] = {
    { 0x1F0, 0x14 },
    { 0xFFFF, 0x0 }
};

static const UnkStruct_020E5EB4 Unk_020E5EA4[] = {
    { 0x1F4, 0x14 },
    { 0xFFFF, 0x0 }
};

static const UnkStruct_020E5EB4 Unk_020E5E9C[] = {
    { 0x1F8, 0x14 },
    { 0xFFFF, 0x0 }
};

static const UnkStruct_020E5EB4 Unk_020E5E94[] = {
    { 0x1FC, 0x14 },
    { 0xFFFF, 0x0 }
};

static const UnkStruct_020E5EB4 *Unk_02100A38[] = {
    Unk_020E5EAC,
    Unk_020E5EA4,
    Unk_020E5E9C,
    Unk_020E5E94,
    Unk_020E5EB4
};

static NetworkIcon *sGlobalNetworkIcon = NULL;

static void sub_02039614(NetworkIcon *v0)
{
    int v1, v2;
    GXOamAttr *v3;

    v1 = inline_02039614(v0);
    v2 = inline_02039614_1(v1, v0->strength);
    v3 = (v1 == NNS_G2D_VRAM_TYPE_2DMAIN) ? (GXOamAttr *)(HW_OAM) : (GXOamAttr *)(HW_OAM_END);

    G2_SetOBJAttr(v3, v0->x, v0->y, 0, GX_OAM_MODE_NORMAL, 0, GX_OAM_EFFECT_NONE, GX_OAM_SHAPE_16x16, GX_OAM_COLORMODE_16, v2, 14, 0);

    if (v3 != v0->unk_1C) {
        G2_SetOBJAttr(v0->unk_1C, 0, 0, 0, GX_OAM_MODE_NORMAL, 0, GX_OAM_EFFECT_NODISPLAY, GX_OAM_SHAPE_16x16, GX_OAM_COLORMODE_16, 0, 0, 0);
        v0->unk_1C = v3;
    }
}

void sub_02039720(void)
{
    NetworkIcon *networkIcon = sGlobalNetworkIcon;

    if (networkIcon == NULL) {
        return;
    }

    sub_02039614(networkIcon);
}

void sub_02039734(void)
{
    BOOL isWifi = FALSE;

    if (CommMan_IsConnectedToWifi()) {
        isWifi = TRUE;
    }

    sub_02039750(240, 0, isWifi, NNS_G2D_VRAM_TYPE_2DMAIN);
}

void sub_02039750(int param0, int param1, BOOL isWifi, int param3)
{
    if (!WirelessDriver_Initialised()) {
        return;
    }

    if (sGlobalNetworkIcon) {
        DestroyNetworkIcon();
    }

    sGlobalNetworkIcon = NetworkIcon_Init(0, HEAP_ID_91, param0, param1, isWifi, Unk_02100A38, param3);
}

void DestroyNetworkIcon(void)
{
    if (sGlobalNetworkIcon) {
        sub_02039440(sGlobalNetworkIcon);
        sGlobalNetworkIcon = NULL;
    }
}

void SetNetworkIconStrength(int param0)
{
    if (sGlobalNetworkIcon) {
        NetworkIcon_SetStrength(sGlobalNetworkIcon, param0);
    }
}

void sub_020397C8(BOOL param0, u32 heapID)
{
    if (sGlobalNetworkIcon) {
        sub_02039474(sGlobalNetworkIcon, param0, heapID);
    }
}

void DrawWifiConnectionIcon(void)
{
    if (CommSys_IsInitialized()) {
        if ((CommSys_ConnectedCount() > 1) || CommMan_IsConnectedToWifi()) {
            sub_02039734();
        }
    } else if (CommMan_IsConnectedToWifi()) {
        sub_02039734();
    }
}
