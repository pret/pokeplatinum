#include "game_overlay.h"

#include <nitro.h>
#include <string.h>

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

static void FreeOverlayAllocation(PMiLoadedOverlay *loadedOverlays);
static BOOL CanOverlayBeLoaded(const FSOverlayID overlayID);
static PMiLoadedOverlay *GetLoadedOverlaysInRegion(int param0);
static BOOL GetOverlayRamBounds(const FSOverlayID overlayID, u32 *param1, u32 *param2);
static BOOL LoadOverlayNormal(MIProcessor param0, FSOverlayID param1);
static BOOL LoadOverlayNoInit(MIProcessor param0, FSOverlayID param1);
static BOOL LoadOverlayNoInitAsync(MIProcessor param0, FSOverlayID param1);

static UnkStruct_021BF370 Unk_021BF370;

#ifdef GDB_DEBUGGING

/* Added to support GDB overlay debugging. */
unsigned long _novlys = MAX_OVERLAYS;
struct_overlayTable _ovly_table[MAX_OVERLAYS] = {};
// this does nothing, but needs to be defined for GDB to refresh overlay state automatically.
static void _ovly_debug_event(void)
{
}

// helper function to mark a specific overlay as unmapped.
void UnloadOverlayGDB(const FSOverlayID overlayID)
{
    GF_ASSERT(overlayID < _novlys);
    _ovly_table[overlayID].mapped--;
    _ovly_debug_event();
}
// helper function to mark a specific overlay as mapped, and provide its RAM address and size to GDB.
void LoadOverlayGDB(const FSOverlayID overlayID)
{
    FSOverlayInfo overlayInfo;

    GF_ASSERT(overlayID < _novlys);

    // 1. fetch overlay info to identify vma
    GF_ASSERT(FS_LoadOverlayInfo(&overlayInfo, MI_PROCESSOR_ARM9, overlayID) == TRUE);

    // 2. add entry to _ovly_table
    // note that this is a little hacky. the VMA is correct but the LMA is not exposed by the OverlayManager
    // and the size field is not correct compared to what's stored in the NEF.
    // the standard overlay manager in GDB bases comparisons on VMA and LMA, so it's not viable here.
    // requires a custom GDB build which maps based on section ID and can override section size.
    // see https://github.com/joshua-smith-12/binutils-gdb-nds
    _ovly_table[overlayID].vma = overlayInfo.header.ram_address;
    _ovly_table[overlayID].id = overlayID;
    _ovly_table[overlayID].size = overlayInfo.header.ram_size;
    _ovly_table[overlayID].mapped++;
    _ovly_debug_event();
}
#endif // GDB_DEBUGGING

static void FreeOverlayAllocation(PMiLoadedOverlay *loadedOverlays)
{
    GF_ASSERT(loadedOverlays->isActive == TRUE);
    GF_ASSERT(FS_UnloadOverlay(MI_PROCESSOR_ARM9, loadedOverlays->id) == TRUE);

    loadedOverlays->isActive = FALSE;
}

void Overlay_UnloadByID(const FSOverlayID overlayID)
{
    PMiLoadedOverlay *loadedOverlays = GetLoadedOverlaysInRegion(Overlay_GetLoadDestination(overlayID));
    int i;

    for (i = 0; i < 8; i++) {
        if ((loadedOverlays[i].isActive == TRUE) && (loadedOverlays[i].id == overlayID)) {
            FreeOverlayAllocation(&loadedOverlays[i]);
#ifdef GDB_DEBUGGING
            UnloadOverlayGDB(overlayID);
#endif
            return;
        }
    }
}

int Overlay_GetLoadDestination(const FSOverlayID overlayID)
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

BOOL Overlay_LoadByID(const FSOverlayID overlayID, enum OverlayLoadType loadType)
{
    BOOL result;
    u32 dmaBak = FS_DMA_NOT_USE;
    int overlayRegion;
    PMiLoadedOverlay *loadedOverlays;
    int i;

    if (!CanOverlayBeLoaded(overlayID)) {
        return FALSE;
    }

    overlayRegion = Overlay_GetLoadDestination(overlayID);
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
        GF_ASSERT(FALSE);
        return FALSE;
    }

    if (overlayRegion == OVERLAY_REGION_ITCM || overlayRegion == OVERLAY_REGION_DTCM) {
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

    if (overlayRegion == OVERLAY_REGION_ITCM || overlayRegion == OVERLAY_REGION_DTCM) {
        FS_SetDefaultDMA(dmaBak);
    }

    if (result == FALSE) {
        GF_ASSERT(FALSE);
        return FALSE;
    }

    return TRUE;
}

static BOOL CanOverlayBeLoaded(const FSOverlayID overlayID)
{
    u32 myStart, myEnd, theirStart, theirEnd;
    PMiLoadedOverlay *loadedOverlays;
    int i;

    if (!GetOverlayRamBounds(overlayID, &myStart, &myEnd)) {
        return FALSE;
    }

    loadedOverlays = GetLoadedOverlaysInRegion(Overlay_GetLoadDestination(overlayID));

    for (i = 0; i < 8; i++) {
        if (loadedOverlays[i].isActive == TRUE && GetOverlayRamBounds(loadedOverlays[i].id, &theirStart, &theirEnd) == TRUE) {
            if (((myStart >= theirStart) && (myStart < theirEnd)) || ((myEnd > theirStart) && (myEnd <= theirEnd)) || ((myStart <= theirStart) && (myEnd >= theirEnd))) {
                GF_ASSERT(0);
                return FALSE;
            }
        }
    }

    return TRUE;
}

static PMiLoadedOverlay *GetLoadedOverlaysInRegion(int region)
{
    PMiLoadedOverlay *ret;

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

static BOOL GetOverlayRamBounds(const FSOverlayID overlayID, u32 *start, u32 *end)
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

static BOOL LoadOverlayNormal(MIProcessor proc, FSOverlayID overlayID)
{
#ifdef GDB_DEBUGGING
    LoadOverlayGDB(overlayID);
#endif
    return FS_LoadOverlay(proc, overlayID);
}

static BOOL LoadOverlayNoInit(MIProcessor proc, FSOverlayID overlayID)
{
    FSOverlayInfo info;

    if (!FS_LoadOverlayInfo(&info, proc, overlayID)) {
        return FALSE;
    }

    if (!FS_LoadOverlayImage(&info)) {
        return FALSE;
    }

#ifdef GDB_DEBUGGING
    LoadOverlayGDB(overlayID);
#endif

    FS_StartOverlay(&info);
    return TRUE;
}

static BOOL LoadOverlayNoInitAsync(MIProcessor proc, FSOverlayID overlayID)
{
    FSFile file;
    FSOverlayInfo info;

    if (!FS_LoadOverlayInfo(&info, proc, overlayID)) {
        return FALSE;
    }

#ifdef GDB_DEBUGGING
    LoadOverlayGDB(overlayID);
#endif

    FS_InitFile(&file);
    FS_LoadOverlayImageAsync(&info, &file);
    FS_WaitAsync(&file);
    FS_CloseFile(&file);
    FS_StartOverlay(&info);

    return TRUE;
}
