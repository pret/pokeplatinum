#include <nitro/gx/gx_load.h>
#include <nitro/gx/gx_vramcnt.h>
#include <nitro/gx/gx_bgcnt.h>
#include <nitro/hw/ARM9/mmap_global.h>
#include <nitro/mi/dma.h>

#include "include/gxstate.h"
#include "include/gxdma.h"

void GX_LoadBGPltt (const void * pSrc, u32 offset, u32 szByte) {
    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(offset + szByte <= HW_BG_PLTT_SIZE);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(HW_BG_PLTT + offset), szByte);
}

void GXS_LoadBGPltt (const void * pSrc, u32 offset, u32 szByte) {
    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(offset + szByte <= HW_DB_BG_PLTT_SIZE);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(HW_DB_BG_PLTT + offset), szByte);
}

void GX_LoadOBJPltt (const void * pSrc, u32 offset, u32 szByte) {
    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(offset + szByte <= HW_OBJ_PLTT_SIZE);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(HW_OBJ_PLTT + offset), szByte);
}

void GXS_LoadOBJPltt (const void * pSrc, u32 offset, u32 szByte) {
    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(offset + szByte <= HW_DB_OBJ_PLTT_SIZE);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(HW_DB_OBJ_PLTT + offset), szByte);
}

void GX_LoadOAM (const void * pSrc, u32 offset, u32 szByte) {
    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(offset + szByte <= HW_OAM_SIZE);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(HW_OAM + offset), szByte);
}

void GXS_LoadOAM (const void * pSrc, u32 offset, u32 szByte) {
    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(offset + szByte <= HW_DB_OAM_SIZE);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(HW_DB_OAM + offset), szByte);
}

void GX_LoadOBJ (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);
    ptr = (u32)G2_GetOBJCharPtr();

    GX_RegionCheck_OBJ(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GXS_LoadOBJ (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);

    ptr = (u32)G2S_GetOBJCharPtr();

    GX_RegionCheck_SubOBJ(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GX_LoadBG0Scr (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);
    ptr = (u32)G2_GetBG0ScrPtr();

    GX_RegionCheck_BG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GXS_LoadBG0Scr (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);
    ptr = (u32)G2S_GetBG0ScrPtr();

    GX_RegionCheck_SubBG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GX_LoadBG1Scr (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);

    ptr = (u32)G2_GetBG1ScrPtr();

    GX_RegionCheck_BG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GXS_LoadBG1Scr (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);

    ptr = (u32)G2S_GetBG1ScrPtr();

    GX_RegionCheck_SubBG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GX_LoadBG2Scr (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);
    ptr = (u32)G2_GetBG2ScrPtr();

    GX_RegionCheck_BG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GXS_LoadBG2Scr (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);

    ptr = (u32)G2S_GetBG2ScrPtr();

    GX_RegionCheck_SubBG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GX_LoadBG3Scr (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);

    ptr = (u32)G2_GetBG3ScrPtr();

    GX_RegionCheck_BG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GXS_LoadBG3Scr (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN2_ASSERT(offset);
    SDK_ALIGN2_ASSERT(szByte);

    ptr = (u32)G2S_GetBG3ScrPtr();

    GX_RegionCheck_SubBG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy16(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GX_LoadBG0Char (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);

    ptr = (u32)G2_GetBG0CharPtr();

    GX_RegionCheck_BG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GXS_LoadBG0Char (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);

    ptr = (u32)G2S_GetBG0CharPtr();

    GX_RegionCheck_SubBG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GX_LoadBG1Char (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);

    ptr = (u32)G2_GetBG1CharPtr();

    GX_RegionCheck_BG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GXS_LoadBG1Char (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);

    ptr = (u32)G2S_GetBG1CharPtr();

    GX_RegionCheck_SubBG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GX_LoadBG2Char (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);

    ptr = (u32)G2_GetBG2CharPtr();

    GX_RegionCheck_BG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GXS_LoadBG2Char (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);

    ptr = (u32)G2S_GetBG2CharPtr();

    GX_RegionCheck_SubBG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GX_LoadBG3Char (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);

    ptr = (u32)G2_GetBG3CharPtr();

    GX_RegionCheck_BG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

void GXS_LoadBG3Char (const void * pSrc, u32 offset, u32 szByte) {
    u32 ptr;
    SDK_NULL_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(offset);
    SDK_ALIGN4_ASSERT(szByte);

    ptr = (u32)G2S_GetBG3CharPtr();

    GX_RegionCheck_SubBG(ptr + offset, ptr + offset + szByte);

    GXi_DmaCopy32(GXi_DmaId, pSrc, (void *)(ptr + offset), szByte);
}

static GXVRamBGExtPltt sBGExtPltt = (GXVRamBGExtPltt)(0);
static u32 sBGExtPlttLCDCBlk = 0;
static u32 sBGExtPlttLCDCOffset = 0;

void GX_BeginLoadBGExtPltt () {
    SDK_ASSERT(0 == sBGExtPltt && 0 == sBGExtPlttLCDCBlk && 0 == sBGExtPlttLCDCOffset);

    sBGExtPltt = GX_ResetBankForBGExtPltt();

    switch (sBGExtPltt) {
    case GX_VRAM_BGEXTPLTT_0123_E:
        sBGExtPlttLCDCBlk = HW_LCDC_VRAM_E;
        sBGExtPlttLCDCOffset = 0;
        break;

    case GX_VRAM_BGEXTPLTT_23_G:
        sBGExtPlttLCDCBlk = HW_LCDC_VRAM_G;
        sBGExtPlttLCDCOffset = 0x4000;
        break;

    case GX_VRAM_BGEXTPLTT_0123_FG:
    case GX_VRAM_BGEXTPLTT_01_F:
        sBGExtPlttLCDCBlk = HW_LCDC_VRAM_F;
        sBGExtPlttLCDCOffset = 0;
        break;

    case GX_VRAM_BGEXTPLTT_NONE:
        break;

    default:
        SDK_INTERNAL_ERROR("unknown case 0x%x", sBGExtPltt);
        break;
    }
}

void GX_LoadBGExtPltt (const void * pSrc, u32 destSlotAddr, u32 szByte) {
    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(sBGExtPltt != GX_VRAM_BGEXTPLTT_NONE);
    SDK_ASSERT(sBGExtPlttLCDCBlk != 0);
    SDK_ALIGN4_ASSERT(szByte);
    SDK_ALIGN4_ASSERT(destSlotAddr);
    SDK_ALIGN4_ASSERT(pSrc);

#ifdef SDK_DEBUG
    switch (sBGExtPltt) {
    case GX_VRAM_BGEXTPLTT_0123_E:
    case GX_VRAM_BGEXTPLTT_0123_FG:
        SDK_ASSERTMSG(
            destSlotAddr + szByte <= 0x8000,
            "Illegal address/size specified(0x%5x->0x%5x)",
            destSlotAddr, destSlotAddr + szByte
        );
        break;

    case GX_VRAM_BGEXTPLTT_23_G:
        SDK_ASSERTMSG(
            destSlotAddr + szByte <= 0x8000,
            "Illegal address/size specified(0x%5x->0x%5x)",
            destSlotAddr, destSlotAddr + szByte
        );
        SDK_ASSERTMSG(
            destSlotAddr >= 0x4000,
            "BGExtPltt 0x0000 - 0x4000 not available(0x%5x->0x%5x)",
            destSlotAddr, destSlotAddr + szByte
        );
        break;

    case GX_VRAM_BGEXTPLTT_01_F:
        SDK_ASSERTMSG(
            destSlotAddr + szByte <= 0x4000,
            "BGExtPltt 0x4000 - 0x8000 not available(0x%5x->0x%5x)",
            destSlotAddr, destSlotAddr + szByte
        );
        break;

    default:
        SDK_INTERNAL_ERROR("unknown case 0x%x", sBGExtPltt);
        break;
    }
#endif
    GXi_DmaCopy32Async(
        GXi_DmaId,
        pSrc,
        (void *)(sBGExtPlttLCDCBlk + destSlotAddr - sBGExtPlttLCDCOffset),
        szByte, NULL, NULL
    );
}

void GX_EndLoadBGExtPltt () {
    GXi_WaitDma(GXi_DmaId);

    GX_SetBankForBGExtPltt(sBGExtPltt);

    sBGExtPltt = (GXVRamBGExtPltt)0;
    sBGExtPlttLCDCBlk = 0;
    sBGExtPlttLCDCOffset = 0;
}

static GXVRamOBJExtPltt sOBJExtPltt = (GXVRamOBJExtPltt)(0);
static u32 sOBJExtPlttLCDCBlk = 0;

void GX_BeginLoadOBJExtPltt () {
    SDK_ASSERT(0 == sOBJExtPltt && 0 == sOBJExtPlttLCDCBlk);

    sOBJExtPltt = GX_ResetBankForOBJExtPltt();

    switch (sOBJExtPltt) {
    case GX_VRAM_OBJEXTPLTT_0_F:
        sOBJExtPlttLCDCBlk = HW_LCDC_VRAM_F;
        break;

    case GX_VRAM_OBJEXTPLTT_0_G:
        sOBJExtPlttLCDCBlk = HW_LCDC_VRAM_G;
        break;

    case GX_VRAM_OBJEXTPLTT_NONE:
        break;

    default:
        SDK_INTERNAL_ERROR("unknown case 0x%x", sOBJExtPltt);
        break;
    }
    ;
}

void GX_LoadOBJExtPltt (const void * pSrc, u32 destSlotAddr, u32 szByte) {
    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(GX_VRAM_OBJEXTPLTT_NONE != sOBJExtPltt);
    SDK_ASSERT(0 != sOBJExtPlttLCDCBlk);
    SDK_ALIGN4_ASSERT(szByte);
    SDK_ALIGN4_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(destSlotAddr);
    SDK_ASSERT(destSlotAddr + szByte <= 0x2000);

    GXi_DmaCopy32Async(
        GXi_DmaId,
        pSrc, (void *)(sOBJExtPlttLCDCBlk + destSlotAddr), szByte, NULL, NULL
    );
}

void GX_EndLoadOBJExtPltt () {
    GXi_WaitDma(GXi_DmaId);

    GX_SetBankForOBJExtPltt(sOBJExtPltt);

    sOBJExtPltt = (GXVRamOBJExtPltt)0;
    sOBJExtPlttLCDCBlk = 0;
}

static GXVRamSubBGExtPltt sSubBGExtPltt = (GXVRamSubBGExtPltt)(0);

void GXS_BeginLoadBGExtPltt () {
    SDK_ASSERT(0 == sSubBGExtPltt);

    sSubBGExtPltt = GX_ResetBankForSubBGExtPltt();

    SDK_ASSERTMSG(GX_VRAM_SUB_BGEXTPLTT_0123_H == sSubBGExtPltt, "Sub BGExtPltt not allocated");
}

void GXS_LoadBGExtPltt (const void * pSrc, u32 destSlotAddr, u32 szByte) {
    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(GX_VRAM_SUB_BGEXTPLTT_0123_H == sSubBGExtPltt);
    SDK_ALIGN4_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(destSlotAddr);
    SDK_ALIGN4_ASSERT(szByte);

    SDK_ASSERTMSG(
        destSlotAddr + szByte <= 0x8000,
        "Illegal address/size specified(0x%5x->0x%5x)",
        destSlotAddr, destSlotAddr + szByte
    );

    GXi_DmaCopy32Async(
        GXi_DmaId,
        pSrc, (void *)(HW_LCDC_VRAM_H + destSlotAddr), szByte, NULL, NULL
    );
}

void GXS_EndLoadBGExtPltt () {
    GXi_WaitDma(GXi_DmaId);

    GX_SetBankForSubBGExtPltt(sSubBGExtPltt);

    sSubBGExtPltt = (GXVRamSubBGExtPltt)0;
}

static GXVRamSubOBJExtPltt sSubOBJExtPltt = (GXVRamSubOBJExtPltt)(0);

void GXS_BeginLoadOBJExtPltt () {
    SDK_ASSERT(0 == sSubOBJExtPltt);

    sSubOBJExtPltt = GX_ResetBankForSubOBJExtPltt();

    SDK_ASSERTMSG(GX_VRAM_SUB_OBJEXTPLTT_0_I == sSubOBJExtPltt, "Sub OBJExtPltt not allocated");
}

void GXS_LoadOBJExtPltt (const void * pSrc, u32 destSlotAddr, u32 szByte) {
    SDK_NULL_ASSERT(pSrc);
    SDK_ASSERT(GX_VRAM_SUB_OBJEXTPLTT_0_I == sSubOBJExtPltt);
    SDK_ALIGN4_ASSERT(pSrc);
    SDK_ALIGN4_ASSERT(destSlotAddr);
    SDK_ALIGN4_ASSERT(szByte);

    SDK_ASSERTMSG(
        destSlotAddr + szByte <= 0x2000,
        "Illegal address/size specified(0x%5x->0x%5x)",
        destSlotAddr, destSlotAddr + szByte
    );

    GXi_DmaCopy32Async(
        GXi_DmaId,
        pSrc, (void *)(HW_LCDC_VRAM_I + destSlotAddr), szByte, NULL, NULL
    );
}

void GXS_EndLoadOBJExtPltt () {
    GXi_WaitDma(GXi_DmaId);

    GX_SetBankForSubOBJExtPltt(sSubOBJExtPltt);

    sSubOBJExtPltt = (GXVRamSubOBJExtPltt)0;
}
