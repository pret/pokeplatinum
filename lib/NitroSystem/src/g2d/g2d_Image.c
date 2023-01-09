#include <nnsys/g2d/g2d_Image.h>

static void InitializeVRamLocation_(NNSG2dVRamLocation * pVramLocation);
static void SetVramLocation_(NNSG2dVRamLocation * pVramLocation, NNS_G2D_VRAM_TYPE type, u32 addr);
static u32 GetVramLocation_(const NNSG2dVRamLocation * pVramLocation, NNS_G2D_VRAM_TYPE type);
static BOOL IsImageReadyToUse_(const NNSG2dVRamLocation * pVramLocation, NNS_G2D_VRAM_TYPE type);

static NNS_G2D_INLINE void InitializeVRamLocation_ (NNSG2dVRamLocation * pVramLocation) {
    int i;
    for ( i = 0; i < NNS_G2D_VRAM_TYPE_MAX; i++ ) {
        pVramLocation->baseAddrOfVram[i] = NNS_G2D_VRAM_ADDR_NOT_INITIALIZED;
    }
}

static NNS_G2D_INLINE void SetVramLocation_ (NNSG2dVRamLocation * pVramLocation, NNS_G2D_VRAM_TYPE type, u32 addr) {
    NNS_G2D_NULL_ASSERT(pVramLocation);
    NNS_G2D_VRAM_TYPE_VALID(type);

    if (IsImageReadyToUse_(pVramLocation, type)) {
        OS_Warning("Invalid setting is detected.\n Make sure to initialize NNSG2dVRamLocation instance before using it.");
    }

    pVramLocation->baseAddrOfVram[type] = addr;
}

static NNS_G2D_INLINE u32 GetVramLocation_ (const NNSG2dVRamLocation * pVramLocation, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pVramLocation);
    NNS_G2D_VRAM_TYPE_VALID(type);

    return pVramLocation->baseAddrOfVram[type];
}

static NNS_G2D_INLINE BOOL IsImageReadyToUse_ (const NNSG2dVRamLocation * pVramLocation, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pVramLocation);
    NNS_G2D_VRAM_TYPE_VALID(type);

    return (GetVramLocation_(pVramLocation, type) != NNS_G2D_VRAM_ADDR_NOT_INITIALIZED) ?
           TRUE : FALSE;
}

static NNS_G2D_INLINE int GetPow_ (u16 num) {
    switch (num) {
    case 1: return GX_TEXSIZE_S8;
    case 2: return GX_TEXSIZE_S16;
    case 4: return GX_TEXSIZE_S32;
    case 8: return GX_TEXSIZE_S64;
    case 16: return GX_TEXSIZE_S128;
    case 32: return GX_TEXSIZE_S256;
    default:
        OS_Warning("unexpected img size !");
        return GX_TEXSIZE_S8;
    }
}

static NNS_G2D_INLINE void CopyCharDataToImageAttr_ (const NNSG2dCharacterData * pSrc, NNSG2dImageAttr * pDst) {
    NNS_G2D_NULL_ASSERT(pSrc);
    NNS_G2D_NULL_ASSERT(pDst);

    if (pSrc->mapingType == GX_OBJVRAMMODE_CHAR_2D) {
        pDst->sizeS = (GXTexSizeS)(GetPow_(pSrc->W));
        pDst->sizeT = (GXTexSizeT)(GetPow_(pSrc->H));
    } else {
        NNS_G2D_ASSERT(
            (pSrc->W == NNS_G2D_1D_MAPPING_CHAR_SIZE) &&
            (pSrc->H == NNS_G2D_1D_MAPPING_CHAR_SIZE)
        );

        pDst->sizeS = (GXTexSizeS)pSrc->W;
        pDst->sizeT = (GXTexSizeT)pSrc->H;
    }

    pDst->fmt = pSrc->pixelFmt;
    pDst->bExtendedPlt = FALSE;
    pDst->plttUse = GX_TEXPLTTCOLOR0_TRNS;
    pDst->mappingType = pSrc->mapingType;
}

static NNS_G2D_INLINE void DoLoadingToVram_ (const NNSG2dCharacterData * pSrcData, u32 baseAddr, NNS_G2D_VRAM_TYPE type) {
    const NNSG2dCharacterFmt charFmt = NNSi_G2dGetCharacterFmtType(pSrcData->characterFmt);

    NNS_G2D_ASSERTMSG(
        !NNSi_G2dIsCharacterVramTransfered(pSrcData->characterFmt),
        "You don't have to transfer a image data to VRAM. When you use the VRAM Transfer format image."
    );

    DC_FlushRange(pSrcData->pRawData, pSrcData->szByte);
    switch (type) {
    case NNS_G2D_VRAM_TYPE_3DMAIN:
        NNS_G2D_ASSERT(charFmt == NNS_G2D_CHARACTER_FMT_BMP);
        GX_BeginLoadTex();
        GX_LoadTex((void *)pSrcData->pRawData, baseAddr, pSrcData->szByte);
        GX_EndLoadTex();
        break;
    case NNS_G2D_VRAM_TYPE_2DMAIN:
        NNS_G2D_ASSERT(charFmt == NNS_G2D_CHARACTER_FMT_CHAR);
        GX_LoadOBJ((void *)pSrcData->pRawData, baseAddr, pSrcData->szByte);
        break;
    case NNS_G2D_VRAM_TYPE_2DSUB:
        NNS_G2D_ASSERT(charFmt == NNS_G2D_CHARACTER_FMT_CHAR);
        GXS_LoadOBJ((void *)pSrcData->pRawData, baseAddr, pSrcData->szByte);
        break;
    default:
        NNS_G2D_ASSERT(FALSE);
    }
}

static BOOL IsValid1DMappingType_ (NNS_G2D_VRAM_TYPE vramType, GXOBJVRamModeChar mappingType) {
    switch (vramType) {
    case NNS_G2D_VRAM_TYPE_3DMAIN:
    case NNS_G2D_VRAM_TYPE_2DMAIN:
        return (BOOL)(GX_OBJVRAMMODE_CHAR_1D_32K <= mappingType &&
                      mappingType <= GX_OBJVRAMMODE_CHAR_1D_256K);
        break;
    case NNS_G2D_VRAM_TYPE_2DSUB:

        return (BOOL)(GX_OBJVRAMMODE_CHAR_1D_32K <= mappingType &&
                      mappingType <= GX_OBJVRAMMODE_CHAR_1D_128K);
        break;
    default:
        return FALSE;
    }
}

static BOOL IsValidDataSize_ (const NNSG2dCharacterData * pSrcData, NNS_G2D_VRAM_TYPE vramType) {
    if (vramType == NNS_G2D_VRAM_TYPE_3DMAIN) {
        return TRUE;
    } else {
        switch (pSrcData->mapingType) {
        case GX_OBJVRAMMODE_CHAR_2D:
            return (BOOL)(pSrcData->szByte <= 32 * 1024);
        case GX_OBJVRAMMODE_CHAR_1D_32K:
            return (BOOL)(pSrcData->szByte <= 32 * 1024);
        case GX_OBJVRAMMODE_CHAR_1D_64K:
            return (BOOL)(pSrcData->szByte <= 64 * 1024);
        case GX_OBJVRAMMODE_CHAR_1D_128K:
            return (BOOL)(pSrcData->szByte <= 128 * 1024);
        case GX_OBJVRAMMODE_CHAR_1D_256K:
            return (BOOL)(pSrcData->szByte <= 256 * 1024);
        default:
            return FALSE;
        }
    }
}

static NNS_G2D_INLINE void SetOBJVRamModeCharacterMapping_ (NNS_G2D_VRAM_TYPE vramType, GXOBJVRamModeChar vramMode) {
    GX_OBJVRAMMODE_CHAR_ASSERT(vramMode);

    switch (vramType) {
    case NNS_G2D_VRAM_TYPE_3DMAIN:

        break;
    case NNS_G2D_VRAM_TYPE_2DMAIN:
        GX_SetOBJVRamModeChar(vramMode);
        break;
    case NNS_G2D_VRAM_TYPE_2DSUB:
        GXS_SetOBJVRamModeChar(vramMode);
        break;
    default:
        NNS_G2D_ASSERT(FALSE);
    }
}

static NNS_G2D_INLINE void SetupImageProxyPrams_ (const NNSG2dCharacterData * pSrcData, u32 baseAddr, NNS_G2D_VRAM_TYPE type, NNSG2dImageProxy * pImgProxy) {
    CopyCharDataToImageAttr_(pSrcData, &pImgProxy->attr);
    NNS_G2dSetImageLocation(pImgProxy, type, baseAddr);
}

static NNS_G2D_INLINE void DoLoadingPalette_ (const NNSG2dPaletteData * pSrcData, u32 srcOffset, u32 addr, u32 szByte, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pSrcData);
    {
        const void * pSrcRawData = (const void *)((const u8 *)pSrcData->pRawData + srcOffset);

        DC_FlushRange(pSrcData->pRawData, pSrcData->szByte);

        switch (type) {
        case NNS_G2D_VRAM_TYPE_2DMAIN:

            if (pSrcData->bExtendedPlt) {
                GX_BeginLoadOBJExtPltt();
                GX_LoadOBJExtPltt(pSrcRawData, addr, szByte);
                GX_EndLoadOBJExtPltt();
            } else {
                GX_LoadOBJPltt(pSrcRawData, addr, szByte);
            }
            break;
        case NNS_G2D_VRAM_TYPE_2DSUB:

            if (pSrcData->bExtendedPlt) {
                GXS_BeginLoadOBJExtPltt();
                GXS_LoadOBJExtPltt(pSrcRawData, addr, szByte);
                GXS_EndLoadOBJExtPltt();
            } else {
                GXS_LoadOBJPltt(pSrcRawData, addr, szByte);
            }
            break;
        case NNS_G2D_VRAM_TYPE_3DMAIN:

            GX_BeginLoadTexPltt();
            GX_LoadTexPltt(pSrcRawData, addr, szByte);
            GX_EndLoadTexPltt();
            break;
        default:
            NNS_G2D_ASSERT(FALSE);
            break;
        }
    }
}

static NNS_G2D_INLINE u32 CalcSizePerOnePltt_ (const NNSG2dPaletteData * pSrcData) {
    NNS_G2D_NULL_ASSERT(pSrcData);

    if (pSrcData->fmt == GX_TEXFMT_PLTT16) {
        return 16 * sizeof(u16);
    } else {
        NNS_G2D_ASSERT(pSrcData->fmt == GX_TEXFMT_PLTT256);
        return 256 * sizeof(u16);
    }
}

static NNS_G2D_INLINE u16 GetCompressedPlttOriginalIndex_ (const NNSG2dPaletteCompressInfo * pCmpInfo, u16 idx) {
    NNS_G2D_NULL_ASSERT(pCmpInfo);

    return *(((u16 *)pCmpInfo->pPlttIdxTbl) + idx);
}

static NNS_G2D_INLINE void DoLoadingPaletteEx_ (const NNSG2dPaletteData * pSrcData, const NNSG2dPaletteCompressInfo * pCmpInfo, u32 addr, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pSrcData);
    NNS_G2D_NULL_ASSERT(pCmpInfo);
    NNS_G2D_VRAM_TYPE_VALID(type);

    {
        u16 i;
        u32 offsetAddr;
        const u32 szOnePltt = CalcSizePerOnePltt_(pSrcData);
        const u16 numIdx = pCmpInfo->numPalette;

        for ( i = 0; i < numIdx; i++ ) {
            offsetAddr = GetCompressedPlttOriginalIndex_(pCmpInfo, i) * szOnePltt;
            DoLoadingPalette_(pSrcData, szOnePltt * i, addr + offsetAddr, szOnePltt, type);
        }
    }
}

void NNS_G2dInitImageProxy (NNSG2dImageProxy * pImg) {
    NNS_G2D_NULL_ASSERT(pImg);
    InitializeVRamLocation_(&pImg->vramLocation);
}

void NNS_G2dSetImageLocation (NNSG2dImageProxy * pImg, NNS_G2D_VRAM_TYPE type, u32 addr) {
    NNS_G2D_NULL_ASSERT(pImg);
    NNS_G2D_VRAM_TYPE_VALID(type);

    SetVramLocation_(&pImg->vramLocation, type, addr);
}

u32 NNS_G2dGetImageLocation (const NNSG2dImageProxy * pImg, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pImg);
    NNS_G2D_VRAM_TYPE_VALID(type);

    return GetVramLocation_(&pImg->vramLocation, type);
}

BOOL NNS_G2dIsImageReadyToUse (const NNSG2dImageProxy * pImg, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pImg);
    NNS_G2D_VRAM_TYPE_VALID(type);

    return IsImageReadyToUse_(&pImg->vramLocation, type);
}

void NNS_G2dInitImagePaletteProxy (NNSG2dImagePaletteProxy * pImg) {
    NNS_G2D_NULL_ASSERT(pImg);
    InitializeVRamLocation_(&pImg->vramLocation);
}

void NNS_G2dSetImagePaletteLocation (NNSG2dImagePaletteProxy * pImg, NNS_G2D_VRAM_TYPE type, u32 addr) {
    NNS_G2D_NULL_ASSERT(pImg);
    NNS_G2D_VRAM_TYPE_VALID(type);

    SetVramLocation_(&pImg->vramLocation, type, addr);
}

u32 NNS_G2dGetImagePaletteLocation (const NNSG2dImagePaletteProxy * pImg, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pImg);
    NNS_G2D_VRAM_TYPE_VALID(type);

    return GetVramLocation_(&pImg->vramLocation, type);
}

BOOL NNS_G2dIsImagePaletteReadyToUse (const NNSG2dImagePaletteProxy * pImg, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pImg);
    NNS_G2D_VRAM_TYPE_VALID(type);

    return IsImageReadyToUse_(&pImg->vramLocation, type);
}

void NNS_G2dLoadImage1DMapping (const NNSG2dCharacterData * pSrcData, u32 baseAddr, NNS_G2D_VRAM_TYPE type, NNSG2dImageProxy * pImgProxy) {
    NNS_G2D_NULL_ASSERT(pSrcData);
    NNS_G2D_NULL_ASSERT(pImgProxy);
    NNS_G2D_ASSERTMSG(
        IsValid1DMappingType_(type, pSrcData->mapingType),
        "Invalid mapping-type."
    );
    NNS_G2D_ASSERTMSG(
        IsValidDataSize_(pSrcData, type),
        "Invalid data size for the mapping-type."
    );

    SetOBJVRamModeCharacterMapping_(type, pSrcData->mapingType);

    DoLoadingToVram_(pSrcData, baseAddr, type);

    SetupImageProxyPrams_(pSrcData, baseAddr, type, pImgProxy);
}

void NNS_G2dLoadImage2DMapping (const NNSG2dCharacterData * pSrcData, u32 baseAddr, NNS_G2D_VRAM_TYPE type, NNSG2dImageProxy * pImgProxy) {
    NNS_G2D_NULL_ASSERT(pSrcData);
    NNS_G2D_NULL_ASSERT(pImgProxy);
    NNS_G2D_ASSERT(pSrcData->mapingType == GX_OBJVRAMMODE_CHAR_2D);
    NNS_G2D_ASSERTMSG(
        IsValidDataSize_(pSrcData, type),
        "Invalid data size for the mapping-type."
    );

    SetOBJVRamModeCharacterMapping_(type, pSrcData->mapingType);

    DoLoadingToVram_(pSrcData, baseAddr, type);

    SetupImageProxyPrams_(pSrcData, baseAddr, type, pImgProxy);
}

void NNS_G2dLoadImageVramTransfer (const NNSG2dCharacterData * pSrcData, u32 baseAddr, NNS_G2D_VRAM_TYPE type, NNSG2dImageProxy * pImgProxy) {
    NNS_G2D_MINMAX_ASSERT(
        pSrcData->mapingType,
        GX_OBJVRAMMODE_CHAR_1D_32K,
        GX_OBJVRAMMODE_CHAR_1D_256K
    );

    NNS_G2D_ASSERTMSG(
        NNSi_G2dIsCharacterVramTransfered(pSrcData->characterFmt),
        "NNS_G2dSetVramTransferImageProxy() must be used only for the vram transfer format image data."
    );

    DC_FlushRange(pSrcData->pRawData, pSrcData->szByte);

    SetOBJVRamModeCharacterMapping_(type, pSrcData->mapingType);

    CopyCharDataToImageAttr_(pSrcData, &pImgProxy->attr);

    NNS_G2dSetImageLocation(pImgProxy, type, baseAddr);
}

void NNS_G2dLoadPalette (const NNSG2dPaletteData * pSrcData, u32 addr, NNS_G2D_VRAM_TYPE type, NNSG2dImagePaletteProxy * pPltProxy) {
    NNS_G2D_NULL_ASSERT(pSrcData);
    NNS_G2D_VRAM_TYPE_VALID(type);
    NNS_G2D_NULL_ASSERT(pPltProxy);

    DoLoadingPalette_(pSrcData, 0, addr, pSrcData->szByte, type);

    pPltProxy->fmt = pSrcData->fmt;
    pPltProxy->bExtendedPlt = pSrcData->bExtendedPlt;

    NNS_G2dSetImagePaletteLocation(pPltProxy, type, addr);
}

void NNS_G2dLoadPaletteEx (const NNSG2dPaletteData * pSrcData, const NNSG2dPaletteCompressInfo * pCmpInfo, u32 addr, NNS_G2D_VRAM_TYPE type, NNSG2dImagePaletteProxy * pPltProxy) {
    NNS_G2D_NULL_ASSERT(pSrcData);
    NNS_G2D_NULL_ASSERT(pCmpInfo);
    NNS_G2D_VRAM_TYPE_VALID(type);
    NNS_G2D_NULL_ASSERT(pPltProxy);

    DoLoadingPaletteEx_(pSrcData, pCmpInfo, addr, type);

    pPltProxy->fmt = pSrcData->fmt;
    pPltProxy->bExtendedPlt = pSrcData->bExtendedPlt;

    NNS_G2dSetImagePaletteLocation(pPltProxy, type, addr);
}

void NNSi_G2dInitializeVRamLocation (NNSG2dVRamLocation * pVramLocation) {
    InitializeVRamLocation_(pVramLocation);
}

void NNSi_G2dSetVramLocation (NNSG2dVRamLocation * pVramLocation, NNS_G2D_VRAM_TYPE type, u32 addr) {
    NNS_G2D_NULL_ASSERT(pVramLocation);
    NNS_G2D_VRAM_TYPE_VALID(type);

    SetVramLocation_(pVramLocation, type, addr);
}

u32 NNSi_G2dGetVramLocation (const NNSG2dVRamLocation * pVramLocation, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pVramLocation);
    NNS_G2D_VRAM_TYPE_VALID(type);

    return GetVramLocation_(pVramLocation, type);
}

BOOL NNSi_G2dIsVramLocationReadyToUse (const NNSG2dVRamLocation * pVramLocation, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pVramLocation);
    NNS_G2D_VRAM_TYPE_VALID(type);

    return IsImageReadyToUse_(pVramLocation, type);
}

void NNSi_G2dDoImageLoadingToVram (const NNSG2dCharacterData * pSrcData, u32 baseAddr, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pSrcData);
    NNS_G2D_VRAM_TYPE_VALID(type);

    DoLoadingToVram_(pSrcData, baseAddr, type);
}

void NNSi_G2dSetupImageProxyPrams (const NNSG2dCharacterData * pSrcData, u32 baseAddr, NNS_G2D_VRAM_TYPE type, NNSG2dImageProxy * pImgProxy) {
    NNS_G2D_NULL_ASSERT(pSrcData);
    NNS_G2D_VRAM_TYPE_VALID(type);
    NNS_G2D_NULL_ASSERT(pImgProxy);

    SetupImageProxyPrams_(pSrcData, baseAddr, type, pImgProxy);
}

void NNSi_G2dDoLoadingPaletteToVram (const NNSG2dPaletteData * pSrcData, u32 addr, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pSrcData);
    NNS_G2D_VRAM_TYPE_VALID(type);

    DoLoadingPalette_(pSrcData, 0, addr, pSrcData->szByte, type);
}

void NNSi_G2dDoLoadingPaletteToVramEx (const NNSG2dPaletteData * pSrcData, const NNSG2dPaletteCompressInfo * pCmpInfo, u32 addr, NNS_G2D_VRAM_TYPE type) {
    NNS_G2D_NULL_ASSERT(pSrcData);
    NNS_G2D_NULL_ASSERT(pCmpInfo);
    NNS_G2D_VRAM_TYPE_VALID(type);

    DoLoadingPaletteEx_(pSrcData, pCmpInfo, addr, type);
}

void NNSi_G2dSetupPaletteProxyPrams (const NNSG2dPaletteData * pSrcData, u32 addr, NNS_G2D_VRAM_TYPE type, NNSG2dImagePaletteProxy * pPltProxy) {
    NNS_G2D_NULL_ASSERT(pSrcData);
    NNS_G2D_VRAM_TYPE_VALID(type);
    NNS_G2D_NULL_ASSERT(pPltProxy);

    pPltProxy->fmt = pSrcData->fmt;
    pPltProxy->bExtendedPlt = pSrcData->bExtendedPlt;

    NNS_G2dSetImagePaletteLocation(pPltProxy, type, addr);
}
