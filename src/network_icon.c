#include "network_icon.h"

#include <nitro.h>

#include "constants/graphics.h"

#include "communication_system.h"
#include "heap.h"
#include "sys_task.h"
#include "sys_task_manager.h"
#include "system.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"

#define UPPER_SCREEN 1
#define LOWER_SCREEN 2

static const u16 sUnused5[] = { 496, 20, 500, 20, 504, 20, 508, 20, 65535, 0 };
static const u16 sUnused1[] = { 496, 20, 65535, 0 };
static const u16 sUnused2[] = { 500, 20, 65535, 0 };
static const u16 sUnused3[] = { 504, 20, 65535, 0 };
static const u16 sUnused4[] = { 508, 20, 65535, 0 };
static const u16 *sUnused[] = { sUnused1, sUnused2, sUnused3, sUnused4, sUnused5 };

static enum NNS_G2D_VRAM_TYPE inline GetVramType(NetworkIcon *networkIcon);
static int inline GetStrengthOAMOffset(enum NNS_G2D_VRAM_TYPE vramType, int strength);
static void PostVBlankCallback(SysTask *task, void *data);
static void LoadIconPalette(enum NNS_G2D_VRAM_TYPE vramType, BOOL unusedIsWifi, u32 offset, enum HeapID heapID);
static void LoadIconGraphic(enum NNS_G2D_VRAM_TYPE vramType, BOOL isWifi, enum HeapID heapID);
static void UpdateOAM(NetworkIcon *icon);
static void SetNetworkIconStrength(NetworkIcon *icon, int networkStrength);
static void DestroyNetworkIcon(NetworkIcon *icon);
static NetworkIcon *CreateNetworkIcon(u32 unused0, u32 heapID, int x, int y, BOOL isWifi, void *unused, enum NNS_G2D_VRAM_TYPE vramType);
static void InitGlobalNetworkIcon(int x, int y, BOOL isWifi, enum NNS_G2D_VRAM_TYPE vramType);

static NetworkIcon *CreateNetworkIcon(u32 unused0, u32 heapID, int x, int y, BOOL isWifi, void *unused, enum NNS_G2D_VRAM_TYPE vramType)
{
    LoadIconPalette(vramType, isWifi, PLTT_OFFSET(14), heapID);
    LoadIconGraphic(vramType, isWifi, heapID);

    NetworkIcon *icon = Heap_AllocAtEnd(heapID, sizeof(NetworkIcon));

    icon->postVBlankTask = SysTask_ExecuteAfterVBlank(PostVBlankCallback, icon, 5);
    icon->x = x;
    icon->y = y;
    icon->unused = 0;
    icon->strength = 3;
    icon->unused2 = unused;
    icon->unused3 = 0;
    icon->isWifi = isWifi;
    icon->createdOnSubScreen = FALSE;
    icon->screenId = 0;
    icon->oam = (GXOamAttr *)HW_OAM;

    return icon;
}

static void PostVBlankCallback(SysTask *task, void *data)
{
    UpdateOAM(data);
}

static enum NNS_G2D_VRAM_TYPE inline GetVramType(NetworkIcon *networkIcon)
{
    switch (networkIcon->screenId) {
    case UPPER_SCREEN:
        return GX_GetDispSelect() == GX_DISP_SELECT_MAIN_SUB ? NNS_G2D_VRAM_TYPE_2DMAIN : NNS_G2D_VRAM_TYPE_2DSUB;
    case LOWER_SCREEN:
        return GX_GetDispSelect() == GX_DISP_SELECT_MAIN_SUB ? NNS_G2D_VRAM_TYPE_2DSUB : NNS_G2D_VRAM_TYPE_2DMAIN;
    default:
        return NNS_G2D_VRAM_TYPE_2DMAIN;
    }
}

static int inline GetStrengthOAMOffset(enum NNS_G2D_VRAM_TYPE vramType, int strength)
{
    int ramMode, gxBank;
    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        ramMode = GX_GetOBJVRamModeChar();
        gxBank = GX_GetBankForOBJ();
    } else {
        ramMode = GXS_GetOBJVRamModeChar();
        gxBank = GX_GetBankForSubOBJ();
    }

    switch (ramMode) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        if (gxBank == GX_VRAM_OBJ_16_G || gxBank == GX_VRAM_OBJ_16_F) {
            return 512 - 16 + 4 * strength;
        } else {
            return 1024 - 16 + 4 * strength;
        }
    case GX_OBJVRAMMODE_CHAR_1D_128K:
        if (gxBank == GX_VRAM_OBJ_80_EF || gxBank == GX_VRAM_OBJ_80_EG) {
            return 640 - 4 + 1 * strength;
        } else if (gxBank == GX_VRAM_OBJ_64_E) {
            return 512 - 4 + 1 * strength;
        } else {
            return 1024 - 4 + 1 * strength;
        }
    default:
        return 1024 - 8 + 2 * strength;
    }
}

static inline void ClearOAM(GXOamAttr *oam)
{
    G2_SetOBJAttr(oam, 0, 0, 0, GX_OAM_MODE_NORMAL, 0, GX_OAM_EFFECT_NODISPLAY, GX_OAM_SHAPE_16x16, GX_OAM_COLORMODE_16, 0, 0, 0);
}

void SetNetworkIconStrength(NetworkIcon *icon, int networkStrength)
{
    if (networkStrength < 4) {
        icon->strength = networkStrength;
        icon->unused3 = 0;
    }
}

static void DestroyNetworkIcon(NetworkIcon *icon)
{
    SysTask_Done(icon->postVBlankTask);
    ClearOAM((GXOamAttr *)HW_OAM);

    if (icon->createdOnSubScreen) {
        ClearOAM((GXOamAttr *)HW_OAM_END);
    }

    Heap_Free(icon);
}

static void CreateIconOnSubScreen(NetworkIcon *icon, BOOL isUpperScreen, enum HeapID heapID)
{
    LoadIconPalette(NNS_G2D_VRAM_TYPE_2DSUB, icon->isWifi, PLTT_OFFSET(14), heapID);
    LoadIconGraphic(NNS_G2D_VRAM_TYPE_2DSUB, icon->isWifi, heapID);

    icon->screenId = isUpperScreen ? UPPER_SCREEN : LOWER_SCREEN;
    icon->createdOnSubScreen = TRUE;
}

void *NetworkIcon_GetPalette(enum HeapID heapID)
{
    void *heapPtr = Heap_AllocAtEnd(heapID, 600);

    ReadFileToBuffer("data/pl_wm.NCLR", &heapPtr);
    DC_FlushRange(heapPtr, 600);

    return heapPtr;
}

static void LoadIconPalette(enum NNS_G2D_VRAM_TYPE vramType, BOOL unusedIsWifi, u32 offset, enum HeapID heapID)
{
    void *heapPtr = Heap_AllocAtEnd(heapID, 600);

    if (heapPtr) {
        ReadFileToBuffer("data/pl_wm.NCLR", &heapPtr);
        DC_FlushRange(heapPtr, 600);

        NNSG2dPaletteData *paletteData;
        NNS_G2dGetUnpackedPaletteData(heapPtr, &paletteData);

        if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
            GX_LoadOBJPltt(paletteData->pRawData, offset, PALETTE_SIZE_BYTES);
        } else {
            GXS_LoadOBJPltt(paletteData->pRawData, offset, PALETTE_SIZE_BYTES);
        }

        Heap_Free(heapPtr);
    }
}

static void LoadIconGraphic(enum NNS_G2D_VRAM_TYPE vramType, BOOL isWifi, enum HeapID heapID)
{
    void *ncgrFile = Heap_AllocAtEnd(heapID, 600);

    if (ncgrFile) {

        if (isWifi) {
            ReadFileToBuffer("data/pl_wifi.NCGR", &ncgrFile);
        } else {
            ReadFileToBuffer("data/pl_wm.NCGR", &ncgrFile);
        }

        DC_FlushRange(ncgrFile, 600);

        NNSG2dCharacterData *charData;
        NNS_G2dGetUnpackedBGCharacterData(ncgrFile, &charData);

        GXOBJVRamModeChar ramMode;
        int gxBank;
        if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
            ramMode = GX_GetOBJVRamModeChar();
            gxBank = GX_GetBankForOBJ();
        } else {
            ramMode = GXS_GetOBJVRamModeChar();
            gxBank = GX_GetBankForSubOBJ();
        }

        int offset;
        switch (ramMode) {
        case GX_OBJVRAMMODE_CHAR_1D_32K:
            if (gxBank == GX_VRAM_OBJ_16_G || gxBank == GX_VRAM_OBJ_16_F) {
                offset = (512 - 16) * 32;
            } else {
                offset = (1024 - 16) * 32;
            }
            break;
        case GX_OBJVRAMMODE_CHAR_1D_128K:
            if (gxBank == GX_VRAM_OBJ_80_EF || gxBank == GX_VRAM_OBJ_80_EG) {
                offset = (2560 - 16) * 32;
            } else if (gxBank == GX_VRAM_OBJ_64_E) {
                offset = 65536 - 16 * 32;
            } else {
                offset = (4096 - 16) * 32;
            }
            break;
        default:
            offset = (2048 - 16) * 32;
            break;
        }

        if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
            GX_LoadOBJ(charData->pRawData, offset, 4 * 4 * 32);
        } else {
            GXS_LoadOBJ(charData->pRawData, offset, 4 * 4 * 32);
        }

        Heap_Free(ncgrFile);
    }
}

static NetworkIcon *sGlobalNetworkIcon = NULL;

static void UpdateOAM(NetworkIcon *icon)
{
    enum NNS_G2D_VRAM_TYPE vramType = GetVramType(icon);
    int oamOffset = GetStrengthOAMOffset(vramType, icon->strength);
    GXOamAttr *oam = vramType == NNS_G2D_VRAM_TYPE_2DMAIN ? (GXOamAttr *)HW_OAM : (GXOamAttr *)HW_OAM_END;

    G2_SetOBJAttr(oam, icon->x, icon->y, 0, GX_OAM_MODE_NORMAL, FALSE, GX_OAM_EFFECT_NONE, GX_OAM_SHAPE_16x16, GX_OAM_COLORMODE_16, oamOffset, 14, 0);

    if (oam != icon->oam) {
        G2_SetOBJAttr(icon->oam, 0, 0, 0, GX_OAM_MODE_NORMAL, FALSE, GX_OAM_EFFECT_NODISPLAY, GX_OAM_SHAPE_16x16, GX_OAM_COLORMODE_16, 0, 0, 0);
        icon->oam = oam;
    }
}

void NetworkIcon_Update()
{
    if (sGlobalNetworkIcon != NULL) {
        UpdateOAM(sGlobalNetworkIcon);
    }
}

void NetworkIcon_Init()
{
    BOOL isWifi = FALSE;
    if (CommMan_IsConnectedToWifi()) {
        isWifi = TRUE;
    }
    InitGlobalNetworkIcon(240, 0, isWifi, NNS_G2D_VRAM_TYPE_2DMAIN);
}

static void InitGlobalNetworkIcon(int x, int y, BOOL isWifi, enum NNS_G2D_VRAM_TYPE vramType)
{
    if (!WirelessDriver_Initialized()) {
        return;
    }

    if (sGlobalNetworkIcon) {
        NetworkIcon_Destroy();
    }

    sGlobalNetworkIcon = CreateNetworkIcon(0, HEAP_ID_NETWORK_ICON, x, y, isWifi, sUnused, vramType);
}

void NetworkIcon_Destroy()
{
    if (sGlobalNetworkIcon) {
        DestroyNetworkIcon(sGlobalNetworkIcon);
        sGlobalNetworkIcon = NULL;
    }
}

void NetworkIcon_SetStrength(int networkStrength)
{
    if (sGlobalNetworkIcon) {
        SetNetworkIconStrength(sGlobalNetworkIcon, networkStrength);
    }
}

void NetworkIcon_CreateOnSubScreen(BOOL isUpperScreen, u32 heapID)
{
    if (sGlobalNetworkIcon) {
        CreateIconOnSubScreen(sGlobalNetworkIcon, isUpperScreen, heapID);
    }
}

void NetworkIcon_InitIfConnected()
{
    if (CommSys_IsInitialized()) {
        if (CommSys_ConnectedCount() > 1 || CommMan_IsConnectedToWifi()) {
            NetworkIcon_Init();
        }
    } else if (CommMan_IsConnectedToWifi()) {
        NetworkIcon_Init();
    }
}
