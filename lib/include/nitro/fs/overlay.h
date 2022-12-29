#if !defined(NITRO_FS_OVERLAY_H_)
#define NITRO_FS_OVERLAY_H_

#include <nitro/misc.h>
#include <nitro/types.h>
#include <nitro/mi.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef u32 FSOverlayID;

#define FS_EXTERN_OVERLAY(name) extern u32 SDK_OVERLAY_ ## name ## _ID[1]

#define FS_OVERLAY_ID(name) ((u32) & (SDK_OVERLAY_ ## name ## _ID))

typedef void (* FSOverlayInitFunc) (void);

typedef struct {
    u32 id;
    u8 * ram_address;
    u32 ram_size;
    u32 bss_size;

    FSOverlayInitFunc * sinit_init;
    FSOverlayInitFunc * sinit_init_end;
    u32 file_id;
    u32 compressed : 24;
    u32 flag : 8;
} FSOverlayInfoHeader;

typedef struct {
    FSOverlayInfoHeader header;
    MIProcessor target;
    CARDRomRegion file_pos;
} FSOverlayInfo;

BOOL FS_LoadOverlayInfo(FSOverlayInfo * p_ovi, MIProcessor target, FSOverlayID id);

static inline u32 FS_GetOverlayTotalSize (const FSOverlayInfo * p_ovi)
{
    return (u32)(p_ovi->header.ram_size + p_ovi->header.bss_size);
}

static inline u32 FS_GetOverlayImageSize (const FSOverlayInfo * p_ovi)
{
    return (u32)(p_ovi->header.ram_size);
}

static inline void * FS_GetOverlayAddress (const FSOverlayInfo * p_ovi)
{
    return p_ovi->header.ram_address;
}

FSFileID FS_GetOverlayFileID(const FSOverlayInfo * p_ovi);

void FS_ClearOverlayImage(FSOverlayInfo * p_ovi);

BOOL FS_LoadOverlayImage(FSOverlayInfo * p_ovi);

BOOL FS_LoadOverlayImageAsync(FSOverlayInfo * p_ovi, FSFile * p_file);

void FS_StartOverlay(FSOverlayInfo * p_ovi);

void FS_EndOverlay(FSOverlayInfo * p_ovi);

BOOL FS_UnloadOverlayImage(FSOverlayInfo * p_ovi);

BOOL FS_LoadOverlay(MIProcessor target, FSOverlayID id);

BOOL FS_UnloadOverlay(MIProcessor target, FSOverlayID id);

void FS_AttachOverlayTable(MIProcessor target, const void * ptr, u32 len);

static inline void FS_RegisterOverlayToDebugger (const FSOverlayInfo * p_ovi, const FSFile * p_file)
{
    (void)p_ovi;
    (void)p_file;
}

#ifdef __cplusplus
}
#endif

#endif
