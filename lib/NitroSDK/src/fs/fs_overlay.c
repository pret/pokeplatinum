#include <nitro/os.h>
#include <nitro/mi.h>
#include <nitro/fs.h>
#include <nitro/mb.h>
#include <nitro/dgt/common.h>
#include <nitro/dgt/dgt.h>

#include "include/util.h"
#include "include/rom.h"
#include "include/mw_dtor.h"

typedef enum {
    OVERLAYPROC_ARM9,
    OVERLAYPROC_ARM7
} OVERLAYPROC;

int _ISDbgLib_RegistOverlayInfo(OVERLAYPROC nProc, u32 nAddrRAM, u32 nAddrROM, u32 nSize);
int _ISDbgLib_UnregistOverlayInfo(OVERLAYPROC nProc, u32 nAddrRAM, u32 nSize);

#define FS_OVERLAY_FLAG_COMP 0x0001
#define FS_OVERLAY_FLAG_AUTH 0x0002
#define FS_OVERLAY_DIGEST_SIZE DGT_HASH2_DIGEST_SIZE

#if defined(SDK_TS)
extern u8 SDK_OVERLAYTABLE_DIGEST[];
extern u8 SDK_OVERLAY_DIGEST[];
extern u8 SDK_OVERLAY_DIGEST_END[];
#endif

static const u8 fsi_def_digest_key[64] = {
    0x21, 0x06, 0xc0, 0xde,
    0xba, 0x98, 0xce, 0x3f,
    0xa6, 0x92, 0xe3, 0x9d,
    0x46, 0xf2, 0xed, 0x01,

    0x76, 0xe3, 0xcc, 0x08,
    0x56, 0x23, 0x63, 0xfa,
    0xca, 0xd4, 0xec, 0xdf,
    0x9a, 0x62, 0x78, 0x34,

    0x8f, 0x6d, 0x63, 0x3c,
    0xfe, 0x22, 0xca, 0x92,
    0x20, 0x88, 0x97, 0x23,
    0xd2, 0xcf, 0xae, 0xc2,

    0x32, 0x67, 0x8d, 0xfe,
    0xca, 0x83, 0x64, 0x98,
    0xac, 0xfd, 0x3e, 0x37,
    0x87, 0x46, 0x58, 0x24,
};

static const void * fsi_digest_key_ptr = fsi_def_digest_key;
static int fsi_digest_key_len = sizeof(fsi_def_digest_key);

#if !defined(SDK_TEG) || !defined(SDK_ARM9)
#define FS_NEED_CARD 1
#endif

static u32 FSi_GetOverlayBinarySize (const FSOverlayInfo * p_ovi) {
    u32 size = (((p_ovi->header.flag & FS_OVERLAY_FLAG_COMP) != 0)
                    ? p_ovi->header.compressed : p_ovi->header.ram_size);
    return size;
}

void FS_ClearOverlayImage (FSOverlayInfo * p_ovi) {
    u8 * const addr = FS_GetOverlayAddress(p_ovi);
    const u32 image_size = FS_GetOverlayImageSize(p_ovi);
    const u32 total_size = FS_GetOverlayTotalSize(p_ovi);
#if defined(SDK_ARM9)
    IC_InvalidateRange(addr, total_size);
    DC_InvalidateRange(addr, total_size);
#endif
    MI_CpuFill8(addr + image_size, 0, total_size - image_size);
}

#if defined(FS_IMPLEMENT)

FSFileID FS_GetOverlayFileID (const FSOverlayInfo * p_ovi) {
    FSFileID ret;
    ret.arc = &fsi_arc_rom;
    ret.file_id = p_ovi->header.file_id;
    return ret;
}

BOOL FSi_LoadOverlayInfoCore (FSOverlayInfo * p_ovi, MIProcessor target, FSOverlayID id, FSArchive * p_arc, u32 offset_arm9, u32 len_arm9, u32 offset_arm7, u32 len_arm7) {
    CARDRomRegion pr[1];
    u32 pos;

    if (target == MI_PROCESSOR_ARM9) {
        pr->offset = offset_arm9;
        pr->length = len_arm9;
    } else {
        pr->offset = offset_arm7;
        pr->length = len_arm7;
    }

    pos = (u32)id * sizeof(FSOverlayInfoHeader);
    if (pos >= pr->length) {
        return FALSE;
    } else {
        FSFile file[1];
        FS_InitFile(file);
        if (!FS_OpenFileDirect(file, p_arc, pr->offset + pos, pr->offset + pr->length, (u32) ~0)) {
            return FALSE;
        } else {
            if (FS_ReadFile(file, p_ovi, sizeof(FSOverlayInfoHeader)) !=
                sizeof(FSOverlayInfoHeader)) {
                (void)FS_CloseFile(file);
                return FALSE;
            }
            (void)FS_CloseFile(file);
            p_ovi->target = target;

            if (!FS_OpenFileFast(file, FS_GetOverlayFileID(p_ovi))) {
                return FALSE;
            } else {
                p_ovi->file_pos.offset = FS_GetFileImageTop(file);
                p_ovi->file_pos.length = FS_GetLength(file);
                (void)FS_CloseFile(file);
            }
        }
    }
    return TRUE;
}

BOOL FS_LoadOverlayInfo (FSOverlayInfo * p_ovi, MIProcessor target, FSOverlayID id) {
    CARDRomRegion * const pr = (target == MI_PROCESSOR_ARM9) ? &fsi_ovt9 : &fsi_ovt7;

    if (pr->offset) {
        const u32 pos = (u32)id * sizeof(FSOverlayInfoHeader);
        if (pos >= pr->length) {
            return FALSE;
        } else {
            MI_CpuCopy8((const void *)(pr->offset + pos), p_ovi, sizeof(FSOverlayInfoHeader));
            p_ovi->target = target;

            {
                FSFile file[1];
                FS_InitFile(file);
                if (!FS_OpenFileFast(file, FS_GetOverlayFileID(p_ovi))) {
                    return FALSE;
                } else {
                    p_ovi->file_pos.offset = FS_GetFileImageTop(file);
                    p_ovi->file_pos.length = FS_GetLength(file);
                    (void)FS_CloseFile(file);
                }
            }
            return TRUE;
        }
    } else {
        const CARDRomRegion * const p_ovt9 = CARD_GetRomRegionOVT(MI_PROCESSOR_ARM9);
        const CARDRomRegion * const p_ovt7 = CARD_GetRomRegionOVT(MI_PROCESSOR_ARM7);
        return FSi_LoadOverlayInfoCore(
            p_ovi, target, id,
            &fsi_arc_rom,
            p_ovt9->offset, p_ovt9->length,
            p_ovt7->offset, p_ovt7->length
        );
    }
}

BOOL FS_LoadOverlayImageAsync (FSOverlayInfo * p_ovi, FSFile * p_file) {
    FS_InitFile(p_file);
    if (!FS_OpenFileFast(p_file, FS_GetOverlayFileID(p_ovi))) {
        return FALSE;
    } else {
        s32 size = (s32)FSi_GetOverlayBinarySize(p_ovi);
        FS_ClearOverlayImage(p_ovi);
        if (FS_ReadFileAsync(p_file, FS_GetOverlayAddress(p_ovi), size) != size) {
            (void)FS_CloseFile(p_file);
            return FALSE;
        }
    }
    return TRUE;
}

BOOL FS_LoadOverlayImage (FSOverlayInfo * p_ovi) {
    FSFile p_file[1];

    FS_InitFile(p_file);
    if (!FS_OpenFileFast(p_file, FS_GetOverlayFileID(p_ovi))) {
        return FALSE;
    } else {
        s32 size = (s32)FSi_GetOverlayBinarySize(p_ovi);
        FS_ClearOverlayImage(p_ovi);
        if (FS_ReadFile(p_file, FS_GetOverlayAddress(p_ovi), size) != size) {
            (void)FS_CloseFile(p_file);
            return FALSE;
        }
    }
    (void)FS_CloseFile(p_file);
    return TRUE;
}

#endif

static BOOL FSi_CompareDigest (const u8 * spec_digest, void * src, int len) {
    int i;
    u8 digest[FS_OVERLAY_DIGEST_SIZE];
    u8 digest_key[64];

    MI_CpuClear8(digest, sizeof(digest));
    MI_CpuCopy8(fsi_digest_key_ptr, digest_key, (u32)fsi_digest_key_len);
    DGT_Hash2CalcHmac(digest, src, len, digest_key, fsi_digest_key_len);
    for (i = 0; i < sizeof(digest); i += sizeof(u32)) {
        if (*(const u32 *)(digest + i) != *(const u32 *)(spec_digest + i)) {
            break;
        }
    }
    return (i == sizeof(digest));
}

void FS_StartOverlay (FSOverlayInfo * p_ovi) {
    u32 rare_size = FSi_GetOverlayBinarySize(p_ovi);

#ifndef  SDK_TEG

    if (MB_IsMultiBootChild()) {
        BOOL ret = FALSE;

        if ((p_ovi->header.flag & FS_OVERLAY_FLAG_AUTH) != 0) {
            const u32 odt_max =
                (u32)((SDK_OVERLAY_DIGEST_END - SDK_OVERLAY_DIGEST) / FS_OVERLAY_DIGEST_SIZE);
            if (p_ovi->header.id < odt_max) {
                const u8 * spec_digest = (SDK_OVERLAY_DIGEST +
                                          FS_OVERLAY_DIGEST_SIZE * p_ovi->header.id);
                ret = FSi_CompareDigest(spec_digest, p_ovi->header.ram_address, (int)rare_size);
            }
        }
        if (!ret) {
            MI_CpuClear8(p_ovi->header.ram_address, rare_size);
            OS_TPanic("FS_StartOverlay() failed! (invalid overlay-segment data)");
            return;
        }
    }
#endif

#ifndef SDK_ARM7

    if ((p_ovi->header.flag & FS_OVERLAY_FLAG_COMP) != 0) {
        MIi_UncompressBackward(p_ovi->header.ram_address + rare_size);
    }
    DC_FlushRange(FS_GetOverlayAddress(p_ovi), FS_GetOverlayImageSize(p_ovi));
#endif

#if !defined(SDK_FINALROM)

    (void)_ISDbgLib_RegistOverlayInfo(
        (p_ovi->target == MI_PROCESSOR_ARM9)
                                      ? OVERLAYPROC_ARM9 : OVERLAYPROC_ARM7,
        (u32)FS_GetOverlayAddress(p_ovi),
        p_ovi->file_pos.offset, FS_GetOverlayImageSize(p_ovi)
    );
#endif

    {
        FSOverlayInitFunc * p = p_ovi->header.sinit_init;
        FSOverlayInitFunc * q = p_ovi->header.sinit_init_end;
        for (; p < q; ++p) {
            if (*p) {
                (**p) ();
            }
        }
    }
}

void FS_EndOverlay (FSOverlayInfo * p_ovi) {
    for (;;) {
        MWiDestructorChain * head = NULL, * tail = NULL;
        const u32 region_top = (u32)FS_GetOverlayAddress(p_ovi);
        const u32 region_bottom = region_top + FS_GetOverlayTotalSize(p_ovi);

        {
            OSIntrMode bak_psr = OS_DisableInterrupts();
            MWiDestructorChain * prev = NULL;
            MWiDestructorChain * base = __global_destructor_chain;
            MWiDestructorChain * p = base;
            while (p) {
                MWiDestructorChain * next = p->next;
                const u32 dtor = (u32)p->dtor;
                const u32 obj = (u32)p->obj;
                if (((obj == 0) && (dtor >= region_top) && (dtor < region_bottom)) ||
                    ((obj >= region_top) && (obj < region_bottom))) {
                    if (!tail) {
                        head = p;
                    } else {
                        tail->next = p;
                    }
                    if (base == p) {
                        base = __global_destructor_chain = next;
                    }
                    tail = p, p->next = NULL;
                    if (prev) {
                        prev->next = next;
                    }
                } else {
                    prev = p;
                }
                p = next;
            }
            (void)OS_RestoreInterrupts(bak_psr);
        }

        if (!head) {
            break;
        }

        do{
            MWiDestructorChain * next = head->next;
            if (head->dtor) {
                (*head->dtor) (head->obj);
            }
            head = next;
        }while (head);
    }

#if !defined(SDK_FINALROM)
    (void)_ISDbgLib_UnregistOverlayInfo(
        (p_ovi->target ==
         MI_PROCESSOR_ARM9) ? OVERLAYPROC_ARM9 : OVERLAYPROC_ARM7,
        (u32)FS_GetOverlayAddress(p_ovi),
        FS_GetOverlayImageSize(p_ovi)
    );
#endif
}

BOOL FS_UnloadOverlayImage (FSOverlayInfo * p_ovi) {
    FS_EndOverlay(p_ovi);
    return TRUE;
}

#if defined(FS_IMPLEMENT)

BOOL FS_LoadOverlay (MIProcessor target, FSOverlayID id) {
    FS_ASSERT_INIT(FALSE);

    {
        FSOverlayInfo ovi;
        if (!FS_LoadOverlayInfo(&ovi, target, id) || !FS_LoadOverlayImage(&ovi)) {
            return FALSE;
        }
        FS_StartOverlay(&ovi);
    }
    return TRUE;
}

BOOL FS_UnloadOverlay (MIProcessor target, FSOverlayID id) {
    FS_ASSERT_INIT(FALSE);

    {
        FSOverlayInfo ovi;
        if (!FS_LoadOverlayInfo(&ovi, target, id) || !FS_UnloadOverlayImage(&ovi)) {
            return FALSE;
        }
    }
    return TRUE;
}

#else

static void FSi_ReadRomDirect (const void * src, void * dst, u32 len) {
#if !defined(SDK_TS)
    if (src >= (const void *)HW_CTRDG_ROM) {
        (void)OS_LockCartridge((u16)fsi_card_lock_id);
        MI_CpuCopy32(src, dst, len);
        (void)OS_UnlockCartridge((u16)fsi_card_lock_id);
    } else
#endif
    {
        (void)CARD_LockRom((u16)fsi_card_lock_id);
        CARD_ReadRom(FS_DMA_NOT_USE, src, dst, len);
        (void)CARD_UnlockRom((u16)fsi_card_lock_id);
    }
}

BOOL FS_LoadOverlay (MIProcessor target, FSOverlayID id) {
    FS_ASSERT_INIT(FALSE);

    {
        const u8 * const base = (const u8 *)
                                (((OS_GetConsoleType() & OS_CONSOLE_DEV_CARD) != 0) ? 0x00000000 : HW_CTRDG_ROM);

        const CARDRomRegion * fat = CARD_GetRomRegionFAT();

        const CARDRomRegion * ovt = CARD_GetRomRegionOVT(target);

        FSOverlayInfo ovi;
        FSArchiveFAT fat_info;

        u32 pos, index;

        index = (u32)id;
        pos = index * sizeof(FSOverlayInfoHeader);
        if (pos >= ovt->length) {
            return FALSE;
        }
        FSi_ReadRomDirect(base + ovt->offset + pos, &ovi, sizeof(FSOverlayInfoHeader));
        ovi.target = target;

        index = ovi.header.file_id;
        pos = index * sizeof(FSArchiveFAT);
        if (pos >= fat->length) {
            return FALSE;
        }
        FSi_ReadRomDirect(base + fat->offset + pos, &fat_info, sizeof(FSArchiveFAT));

        FS_ClearOverlayImage(&ovi);
        FSi_ReadRomDirect(
            base + fat_info.top,
            ovi.header.ram_address, fat_info.bottom - fat_info.top
        );

        (void)_ISDbgLib_RegistOverlayInfo(
            (ovi.target ==
             MI_PROCESSOR_ARM9) ? OVERLAYPROC_ARM9 : OVERLAYPROC_ARM7,
            (u32)FS_GetOverlayAddress(&ovi),
            (u32)(base + fat_info.top), FS_GetOverlayImageSize(&ovi)
        );

        FS_StartOverlay(&ovi);
    }

    return TRUE;
}

BOOL FS_UnloadOverlay (MIProcessor target, FSOverlayID id) {
    FS_ASSERT_INIT(FALSE);
    (void)target;
    (void)id;
    return TRUE;
}

#endif

void FS_AttachOverlayTable (MIProcessor target, const void * ptr, u32 len) {
#ifdef  SDK_TS
    if ((ptr != NULL) && (target == MI_PROCESSOR_ARM9)) {
        int bak_ovt_mode = DGT_SetOverlayTableMode(TRUE);
        if (!FSi_CompareDigest((const u8 *)SDK_OVERLAYTABLE_DIGEST, (void *)ptr, (int)len)) {
            OS_TPanic("FS_AttachOverlayTable() failed! (invalid overlay-table data)");
        }
        (void)DGT_SetOverlayTableMode(bak_ovt_mode);
    }
#endif

    {
        CARDRomRegion * const pr = (target == MI_PROCESSOR_ARM9) ? &fsi_ovt9 : &fsi_ovt7;
        OSIntrMode bak_psr = OS_DisableInterrupts();

        pr->offset = (u32)ptr;
        pr->length = len;

        (void)OS_RestoreInterrupts(bak_psr);
    }
}
