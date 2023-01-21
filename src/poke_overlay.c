#include <nitro.h>
#include <string.h>

#include "poke_overlay.h"

typedef enum PMiOverlayRegion {
    OVERLAY_REGION_MAIN,
    OVERLAY_REGION_ITCM,
    OVERLAY_REGION_DTCM,
    OVERLAY_REGION_NUM,
} PMiOverlayRegion;

typedef struct {
    FSOverlayID id;
    BOOL isActive;
} PMiLoadedOverlay;

typedef struct {
    PMiLoadedOverlay unk_00[8];
    PMiLoadedOverlay unk_40[8];
    PMiLoadedOverlay unk_80[8];
} UnkStruct_021BF370;

static void FreeOverlayAllocation(PMiLoadedOverlay * param0);
static BOOL CanOverlayBeLoaded(const FSOverlayID param0);
static PMiLoadedOverlay * GetLoadedOverlaysInRegion(int param0);
static BOOL GetOverlayRamBounds(const FSOverlayID param0, u32 * param1, u32 * param2);
static BOOL LoadOverlayNormal(MIProcessor param0, FSOverlayID param1);
static BOOL LoadOverlayNoInit(MIProcessor param0, FSOverlayID param1);
static BOOL LoadOverlayNoInitAsync(MIProcessor param0, FSOverlayID param1);
void UnloadOverlayByID(const FSOverlayID param0);
int GetOverlayLoadDestination(const FSOverlayID param0);
BOOL HandleLoadOverlay(const FSOverlayID param0, int param1);

static UnkStruct_021BF370 Unk_021BF370;

static void FreeOverlayAllocation (PMiLoadedOverlay * param0)
{
    GF_ASSERT(param0->isActive == 1);
    GF_ASSERT(FS_UnloadOverlay(MI_PROCESSOR_ARM9, param0->id) == TRUE);

    param0->isActive = 0;
}

void UnloadOverlayByID (const FSOverlayID overlayID)
{
    PMiLoadedOverlay * table;
    int i;

    table = GetLoadedOverlaysInRegion(GetOverlayLoadDestination(overlayID));

    for (i = 0; i < 8; i++) {
        if ((table[i].isActive == 1) && (table[i].id == overlayID)) {
            FreeOverlayAllocation(&table[i]);
            return;
        }
    }
}

int GetOverlayLoadDestination (const FSOverlayID overlayID)
{
    FSOverlayInfo info;
    u32 v2;

    GF_ASSERT(FS_LoadOverlayInfo(&info, MI_PROCESSOR_ARM9, overlayID) == TRUE);
    v2 = (u32)FS_GetOverlayAddress(&info);

    if ((v2 <= HW_ITCM_END) && (v2 >= HW_ITCM_IMAGE)) {
        return OVERLAY_REGION_ITCM;
    } else if ((v2 <= HW_DTCM_END) && (v2 >= HW_DTCM)) {
        return OVERLAY_REGION_DTCM;
    }

    return OVERLAY_REGION_MAIN;
}

BOOL HandleLoadOverlay (const FSOverlayID overlayID, int loadType)
{
    BOOL result;
    u32 dmaBak = FS_DMA_NOT_USE;
    int overlayRegion;
    PMiLoadedOverlay * loadedOverlays;
    int i;

    if (!CanOverlayBeLoaded(overlayID)) {
        return FALSE;
    }

    overlayRegion = GetOverlayLoadDestination(overlayID);
    loadedOverlays = GetLoadedOverlaysInRegion(overlayRegion);

    for (i = 0; i < 8; i++) {
        if (loadedOverlays[i].isActive == FALSE) {
            loadedOverlays = &loadedOverlays[i];
            loadedOverlays->isActive = TRUE;
            loadedOverlays->id = overlayID;
            break;
        }
    }

    if (i >= 8) {
        GF_ASSERT(0);
        return FALSE;
    }

    if ((overlayRegion == 1) || (overlayRegion == 2)) {
        dmaBak = FS_SetDefaultDMA(FS_DMA_NOT_USE);
    }

    switch (loadType) {
    case OVERLAY_LOAD_NORMAL:
        result = LoadOverlayNormal(MI_PROCESSOR_ARM9, overlayID);
        break;
    case OVERLAY_LOAD_NOINIT:
        result = LoadOverlayNoInit(MI_PROCESSOR_ARM9, overlayID);
        break;
    case OVERLAY_LOAD_ASYNC:
        result = LoadOverlayNoInitAsync(MI_PROCESSOR_ARM9, overlayID);
        break;
    default:
        GF_ASSERT(0);
        return 0;
    }

    if ((overlayRegion == 1) || (overlayRegion == 2)) {
        FS_SetDefaultDMA(dmaBak);
    }

    if (result == 0) {
        GF_ASSERT(0);
        return 0;
    }

    return 1;
}

static BOOL CanOverlayBeLoaded (const FSOverlayID param0)
{
    u32 myStart, myEnd, theirStart, theirEnd;
    PMiLoadedOverlay * loadedOverlay;
    int i;

    if (!GetOverlayRamBounds(param0, &myStart, &myEnd)) {
        return FALSE;
    }

    loadedOverlay = GetLoadedOverlaysInRegion(GetOverlayLoadDestination(param0));

    for (i = 0; i < 8; i++) {
        if (loadedOverlay[i].isActive == TRUE && GetOverlayRamBounds(loadedOverlay[i].id, &theirStart, &theirEnd) == TRUE) {
            if (((myStart >= theirStart) && (myStart < theirEnd)) || ((myEnd > theirStart) && (myEnd <= theirEnd)) || ((myStart <= theirStart) && (myEnd >= theirEnd))) {
                GF_ASSERT(0);
                return FALSE;
            }
        }
    }

    return TRUE;
}

static PMiLoadedOverlay * GetLoadedOverlaysInRegion (int region)
{
    PMiLoadedOverlay * ret;

    switch (region) {
    case OVERLAY_REGION_MAIN:
    default:
        ret = Unk_021BF370.unk_00;
        break;
    case OVERLAY_REGION_ITCM:
        ret = Unk_021BF370.unk_40;
        break;
    case OVERLAY_REGION_DTCM:
        ret = Unk_021BF370.unk_80;
        break;
    }

    return ret;
}

static BOOL GetOverlayRamBounds (const FSOverlayID overlayID, u32 * start, u32 * end)
{
    FSOverlayInfo info;

    if (!FS_LoadOverlayInfo(&info, MI_PROCESSOR_ARM9, overlayID)) {
        GF_ASSERT(0);
        return FALSE;
    }

    *start = (u32)FS_GetOverlayAddress(&info);
    *end = *start + FS_GetOverlayTotalSize(&info);

    return TRUE;
}

static BOOL LoadOverlayNormal (MIProcessor proc, FSOverlayID overlayID)
{
    return FS_LoadOverlay(proc, overlayID);
}

static BOOL LoadOverlayNoInit (MIProcessor proc, FSOverlayID overlayID)
{
    FSOverlayInfo info;

    if (!FS_LoadOverlayInfo(&info, proc, overlayID)) {
        return FALSE;
    }

    if (!FS_LoadOverlayImage(&info)) {
        return FALSE;
    }

    FS_StartOverlay(&info);
    return TRUE;
}

static BOOL LoadOverlayNoInitAsync (MIProcessor proc, FSOverlayID overlayID)
{
    FSFile file;
    FSOverlayInfo info;

    if (!FS_LoadOverlayInfo(&info, proc, overlayID)) {
        return FALSE;
    }

    FS_InitFile(&file);
    FS_LoadOverlayImageAsync(&info, &file);
    FS_WaitAsync(&file);
    FS_CloseFile(&file);
    FS_StartOverlay(&info);

    return TRUE;
}
