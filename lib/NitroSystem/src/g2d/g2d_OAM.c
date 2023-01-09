#include <nnsys/g2d/g2d_OAM.h>
#include <nnsys/g2d/g2d_Softsprite.h>
#include <nnsys/g2d/g2d_OamSoftwareSpriteDraw.h>
#include <nnsys/g2d/fmt/g2d_Cell_data.h>

#include "include/g2d_Internal.h"
#include "include/g2di_Dma.h"

NNS_G2D_DEFINE_NNSI_OBJSIZEWTBL;
NNS_G2D_DEFINE_NNSI_OBJSIZEHTBL;

#define OAM_SETTING_INVISIBLE 192

#define NUM_HW_OAM_ATTR 128
#define NUM_HW_OAM_AFFINE 32
#define NUM_OAM_TYPES 3

#define OAM_NOT_USED 0xFFFF

#define GX_AFFINE_SIZE sizeof(GXOamAffine)
#define GX_OAMATTR_SIZE sizeof(GXOamAttr)
#define OAMATTR_SIZE sizeof(u16) * 3

typedef void (OBJLoadFunction)(const void * pSrc, u32 offset, u32 szByte);

typedef struct OamAttributeCache {
    u16 reservationTable[NUM_HW_OAM_ATTR];
    GXOamAttr oamBuffer[NUM_HW_OAM_ATTR];
} OamAttributeCache;

typedef struct OamAffineCache {
    u16 reservationTable[NUM_HW_OAM_AFFINE];
} OamAffineCache;

typedef struct OamCache {
    OamAttributeCache attributeCache;
    OamAffineCache affineCache;
} OamCache;

static OamCache oamCache_[NUM_OAM_TYPES];
static u16 numRegisterdInstance_ = 0x0;

static NNS_G2D_INLINE BOOL IsManageAreaValid_ (const NNSG2dOAMManageArea * pArea) {
    NNS_G2D_NULL_ASSERT(pArea);

    return (BOOL)((pArea->currentIdx <= pArea->toIdx + 1) &&
                  (pArea->fromIdx <= pArea->toIdx));
}

static NNS_G2D_INLINE OamCache * GetOamCachePtr_ (NNSG2dOamType type) {
    ASSERT_OAMTYPE_VALID(type);
    return &oamCache_[type];
}

static NNS_G2D_INLINE u16 * GetOamReservationTblPtr_ (NNSG2dOamType type) {
    ASSERT_OAMTYPE_VALID(type);
    {
        OamCache * pOamCache = GetOamCachePtr_(type);
        NNS_G2D_NULL_ASSERT(pOamCache);

        return pOamCache->attributeCache.reservationTable;
    }
}

static NNS_G2D_INLINE u16 * GetAffineReservationTblPtr_ (NNSG2dOamType type) {
    ASSERT_OAMTYPE_VALID(type);
    {
        OamCache * pOamCache = GetOamCachePtr_(type);
        NNS_G2D_NULL_ASSERT(pOamCache);

        return pOamCache->affineCache.reservationTable;
    }
}

static NNS_G2D_INLINE GXOamAttr * GetOamBufferPtr_ (NNSG2dOamType type, u16 index) {
    ASSERT_OAMTYPE_VALID(type);
    {
        OamCache * pOamCache = GetOamCachePtr_(type);
        NNS_G2D_NULL_ASSERT(pOamCache);

        return pOamCache->attributeCache.oamBuffer + index;
    }
}

static NNS_G2D_INLINE GXOamAffine * GetAffineBufferPtr_ (NNSG2dOamType type, u16 index) {
    ASSERT_OAMTYPE_VALID(type);
    NNS_G2D_MINMAX_ASSERT(index, 0, NUM_HW_OAM_AFFINE);

    {
        GXOamAffine * pAff = (GXOamAffine *)GetOamBufferPtr_(type, 0);
        NNS_G2D_NULL_ASSERT(pAff);

        return pAff + index;
    }
}

static NNS_G2D_INLINE void GetAffineParams_ (NNSG2dOamType type, u16 idx, MtxFx22 * pMtx) {
    ASSERT_OAMTYPE_VALID(type);
    NNS_G2D_MINMAX_ASSERT(idx, 0, NUM_HW_OAM_AFFINE);
    NNS_G2D_NULL_ASSERT(pMtx);

    {
        GXOamAffine * pAff = GetAffineBufferPtr_(type, idx);
        NNS_G2D_NULL_ASSERT(pAff);

        pMtx->_00 = (s16)(pAff->PA << 4);
        pMtx->_01 = (s16)(pAff->PB << 4);
        pMtx->_10 = (s16)(pAff->PC << 4);
        pMtx->_11 = (s16)(pAff->PD << 4);
    }
}

static NNS_G2D_INLINE BOOL IsOamNotUsed_ (u16 * pResvTblHead, u16 from, u16 to) {
    const u16 * pCursor = pResvTblHead + from;
    const u16 * pEnd = pResvTblHead + to;

    while (pCursor <= pEnd) {
        if (*pCursor != OAM_NOT_USED) {
            return FALSE;
        }
        pCursor++;
    }
    return TRUE;
}

static NNS_G2D_INLINE u16 GetNewGUID_ () {
    return numRegisterdInstance_++;
}

static NNS_G2D_INLINE void DoReserveArea_ (u16 * pResvTblHead, u16 from, u16 to, u16 ownerGUID) {
    NNS_G2D_NULL_ASSERT(pResvTblHead);
    NNS_G2D_ASSERT(from <= to);

    NNS_G2D_ASSERT(IsOamNotUsed_(pResvTblHead, from, to));

    NNSI_G2D_DEBUGMSG0(
        "Oam Reservation occur... from %d to %d by GUID %d \n",
        from,
        to,
        ownerGUID
    );

    MI_CpuFill16(pResvTblHead + from, ownerGUID, sizeof(u16) * (u32)(to - from + 1));
}

static NNS_G2D_INLINE void DoRestoreArea_ (u16 * pResvTblHead, u16 from, u16 to) {
    NNS_G2D_NULL_ASSERT(pResvTblHead);
    NNS_G2D_ASSERT(from <= to);

    NNSI_G2D_DEBUGMSG0("Oam Restoration occur... from %d to %d \n", from, to);

    MI_CpuFill16(pResvTblHead + from, OAM_NOT_USED, sizeof(u16) * (u32)(to - from + 1));
}

static NNS_G2D_INLINE u16 GetCapacity_ (const NNSG2dOAMManageArea * pArea) {
    NNS_G2D_NULL_ASSERT(pArea);

    if (IsManageAreaValid_(pArea)) {
        return (u16)((int)pArea->toIdx - pArea->currentIdx + 1);
    } else {
        return 0;
    }
}

static NNS_G2D_INLINE u16 GetNumOamUsed_ (const NNSG2dOAMManageArea * pArea) {
    NNS_G2D_NULL_ASSERT(pArea);

    if (IsManageAreaValid_(pArea)) {
        return (u16)((int)pArea->currentIdx - pArea->fromIdx);
    } else {
        return 0;
    }
}

static NNS_G2D_INLINE BOOL HasEnoughCapacity_ (const NNSG2dOAMManageArea * pArea, u16 num) {
    NNS_G2D_NULL_ASSERT(pArea);
    NNS_G2D_ASSERT(num != 0);

    return (BOOL)(GetCapacity_(pArea) >= num);
}

static NNS_G2D_INLINE GXOamAttr * GetOamCurrentPtr_ (NNSG2dOamManagerInstance * pMan) {
    NNS_G2D_NULL_ASSERT(pMan);
    NNS_G2D_ASSERT(IsManageAreaValid_(&pMan->managedAttrArea));
    NNS_G2D_ASSERT(pMan->managedAttrArea.toIdx < NUM_HW_OAM_ATTR);
    {
        GXOamAttr * pret = GetOamBufferPtr_(
            pMan->type,
            pMan->managedAttrArea.currentIdx
        );

        NNS_G2D_NULL_ASSERT(pret);

        return pret;
    }
}

static NNS_G2D_INLINE GXOamAttr * GetOamFromPtr_ (NNSG2dOamManagerInstance * pMan) {
    NNS_G2D_NULL_ASSERT(pMan);
    {
        GXOamAttr * pFrom = GetOamBufferPtr_(
            pMan->type,
            pMan->managedAttrArea.fromIdx
        );
        NNS_G2D_NULL_ASSERT(pFrom);

        return pFrom;
    }
}

static NNS_G2D_INLINE u32 GetSizeOfManageArea_ (const NNSG2dOAMManageArea * pArea) {
    NNS_G2D_NULL_ASSERT(pArea);

    if (IsManageAreaValid_(pArea)) {
        return (u32)(GX_OAMATTR_SIZE * (u16)(pArea->toIdx - pArea->fromIdx + 1));
    } else {
        return 0;
    }
}

static NNS_G2D_INLINE void SetAffineParams_ (NNSG2dOamType type, const MtxFx22 * mtx, u16 idx) {
    ASSERT_OAMTYPE_VALID(type);
    NNS_G2D_NULL_ASSERT(mtx);
    NNS_G2D_MINMAX_ASSERT(idx, 0, NUM_HW_OAM_AFFINE);

    {
        GXOamAffine * pAff = GetAffineBufferPtr_(type, idx);
        NNS_G2D_NULL_ASSERT(pAff);

        G2_SetOBJAffine(pAff, mtx);
    }
}

static void DrawBy3DGraphicsEngine_ (const GXOamAttr * pOam, u16 numOam, const NNSG2dImageAttr * pTexImageAttr, u32 texBaseAddr, u32 pltBaseAddr) {
    MtxFx22 mtx;
    u16 affineIdx;
    s16 posX;
    s16 posY;
    s16 posZ;

    NNS_G2D_NULL_ASSERT(pOam);
    NNS_G2D_NULL_ASSERT(pTexImageAttr);
    NNS_G2D_MINMAX_ASSERT(numOam, 0, NUM_HW_OAM_ATTR);

    G3_PushMtx();
    {
        int i = 0;
        for ( i = 0; i < numOam; i++ ) {
            posX = NNSi_G2dRepeatXinScreenArea(NNSi_G2dGetOamX(&pOam[i]));
            posY = NNSi_G2dRepeatYinScreenArea(NNSi_G2dGetOamY(&pOam[i]));
            posZ = -1;

            G3_Identity();

            if (NNSi_G2dIsRSEnable(&pOam[i])) {
                affineIdx = NNSi_G2dGetAffineIdx(&pOam[i]);
                NNS_G2D_MINMAX_ASSERT(affineIdx, 0, NUM_HW_OAM_AFFINE);
                GetAffineParams_(NNS_G2D_OAMTYPE_SOFTWAREEMULATION, affineIdx, &mtx);

                NNS_G2dDrawOneOam3DDirectWithPosAffineFast(posX, posY, posZ, &pOam[i], pTexImageAttr, texBaseAddr, pltBaseAddr, &mtx);
            } else {
                NNS_G2dDrawOneOam3DDirectWithPosFast(posX, posY, posZ, &pOam[i], pTexImageAttr, texBaseAddr, pltBaseAddr);
            }
        }
    }
    G3_PopMtx(1);
}

static NNS_G2D_INLINE void ClearOamByDefaultValue_ (NNSG2dOamType type) {
    ASSERT_OAMTYPE_VALID(type);

    MI_CpuFill16(
        GetOamBufferPtr_(type, 0),
        OAM_SETTING_INVISIBLE,
        GX_OAMATTR_SIZE * NUM_HW_OAM_ATTR
    );
}

static NNS_G2D_INLINE void SetOamReservationTblNotUsed_ (NNSG2dOamType type) {
    ASSERT_OAMTYPE_VALID(type);

    DoRestoreArea_(
        GetOamReservationTblPtr_(type),
        0,
        NUM_HW_OAM_ATTR - 1
    );
}

static NNS_G2D_INLINE void SetAffineReservationTblNotUsed_ (NNSG2dOamType type) {
    ASSERT_OAMTYPE_VALID(type);

    DoRestoreArea_(
        GetAffineReservationTblPtr_(type),
        0,
        NUM_HW_OAM_AFFINE - 1
    );
}

static NNS_G2D_INLINE void CpuLoadOAMMain_ (const void * pSrc, u32 offset, u32 szByte) {
    NNS_G2D_NULL_ASSERT(pSrc);
    NNS_G2D_ASSERT(offset + szByte <= HW_OAM_SIZE);

    MI_CpuCopy16(pSrc, (void *)(HW_OAM + offset), szByte);
}

static NNS_G2D_INLINE void CpuLoadOAMSub_ (const void * pSrc, u32 offset, u32 szByte) {
    NNS_G2D_NULL_ASSERT(pSrc);
    NNS_G2D_ASSERT(offset + szByte <= HW_OAM_SIZE);

    MI_CpuCopy16(pSrc, (void *)(HW_DB_OAM + offset), szByte);
}

static NNS_G2D_INLINE OBJLoadFunction * GetOBJLoadFunction_ (NNSG2dOamType type) {
    static OBJLoadFunction * funcTbl[] = {
        CpuLoadOAMMain_,
        CpuLoadOAMSub_,
        NULL,
        NULL,
        NULL,
    };

    return funcTbl[type];
}

static NNS_G2D_INLINE void LoadOneAffine_ (const GXOamAffine * pAff, u32 offset, OBJLoadFunction * pOBJLoadFunc) {
    offset += OAMATTR_SIZE;

    (*pOBJLoadFunc)(&pAff->PA, offset + GX_OAMATTR_SIZE * 0, sizeof(u16));
    (*pOBJLoadFunc)(&pAff->PB, offset + GX_OAMATTR_SIZE * 1, sizeof(u16));
    (*pOBJLoadFunc)(&pAff->PC, offset + GX_OAMATTR_SIZE * 2, sizeof(u16));
    (*pOBJLoadFunc)(&pAff->PD, offset + GX_OAMATTR_SIZE * 3, sizeof(u16));
}

static NNS_G2D_INLINE void LoadOamAndAffineFast_ (NNSG2dOamType type, u16 fromIdx, u16 toIdx) {
    GXOamAttr * pFrom = GetOamBufferPtr_(type, fromIdx);
    const u16 szByte = (u16)(GX_OAMATTR_SIZE * (toIdx - fromIdx + 1));
    u16 offset = (u16)(GX_OAMATTR_SIZE * fromIdx);

    DC_FlushRange(pFrom, szByte);

    switch (type) {
    case NNS_G2D_OAMTYPE_MAIN:
        GX_LoadOAM(pFrom, offset, szByte);
        break;
    case NNS_G2D_OAMTYPE_SUB:
        GXS_LoadOAM(pFrom, offset, szByte);
        break;
    default:
        NNS_G2D_ASSERT(FALSE);
        break;
    }
}

static NNS_G2D_INLINE void LoadOam_ (NNSG2dOamType type, u16 fromIdx, u16 toIdx) {
    GXOamAttr * pFrom = GetOamBufferPtr_(type, fromIdx);
    const u16 numArea = (u16)(toIdx - fromIdx + 1);
    u16 offset = (u16)(GX_OAMATTR_SIZE * fromIdx);
    u16 i;
    OBJLoadFunction * pOBJLoadFunc = GetOBJLoadFunction_(type);

    for ( i = 0; i < numArea; i++ ) {
        (*pOBJLoadFunc)(pFrom, offset, OAMATTR_SIZE);

        offset += GX_OAMATTR_SIZE;
        pFrom++;
    }
}

static NNS_G2D_INLINE void LoadAffine_ (NNSG2dOamType type, u16 fromIdx, u16 toIdx) {
    GXOamAffine * pFrom = GetAffineBufferPtr_(type, fromIdx);
    const u16 numArea = (u16)(toIdx - fromIdx + 1);
    u16 offset = (u16)(GX_AFFINE_SIZE * fromIdx);
    u16 i;
    OBJLoadFunction * pOBJLoadFunc = GetOBJLoadFunction_(type);

    for ( i = 0; i < numArea; i++ ) {
        LoadOneAffine_(pFrom, offset, pOBJLoadFunc);

        offset += GX_AFFINE_SIZE;
        pFrom++;
    }
}

static NNS_G2D_INLINE void ResetOam_ (NNSG2dOamType type, u16 fromIdx, u16 toIdx) {
    GXOamAttr * pFrom = GetOamBufferPtr_(type, fromIdx);
    const u16 numArea = (u16)(toIdx - fromIdx + 1);
    u16 i;

    for ( i = 0; i < numArea; i++ ) {
        *((u16 *)pFrom) = OAM_SETTING_INVISIBLE;
        pFrom++;
    }
}

static NNS_G2D_INLINE void ResetAffine_ (NNSG2dOamType type, u16 fromIdx, u16 toIdx) {
    GXOamAffine * pFrom = GetAffineBufferPtr_(type, fromIdx);
    const u16 numArea = (u16)(toIdx - fromIdx + 1);
    u16 i;

    for ( i = 0; i < numArea; i++ ) {
        pFrom->PA = OAM_SETTING_INVISIBLE;
        pFrom->PB = OAM_SETTING_INVISIBLE;
        pFrom->PC = OAM_SETTING_INVISIBLE;
        pFrom->PD = OAM_SETTING_INVISIBLE;
        pFrom++;
    }
}

void * NNSi_G2dGetOamManagerInternalBufferForDebug (NNSG2dOamType type) {
    return (void *)GetOamBufferPtr_(type, 0);
}

void NNS_G2dInitOamManagerModule () {
    ClearOamByDefaultValue_(NNS_G2D_OAMTYPE_MAIN);
    ClearOamByDefaultValue_(NNS_G2D_OAMTYPE_SUB);
    ClearOamByDefaultValue_(NNS_G2D_OAMTYPE_SOFTWAREEMULATION);

    NNSI_G2D_DEBUGMSG0("Initialize OamBuffer ... done.\n");

    SetOamReservationTblNotUsed_(NNS_G2D_OAMTYPE_MAIN);
    SetOamReservationTblNotUsed_(NNS_G2D_OAMTYPE_SUB);
    SetOamReservationTblNotUsed_(NNS_G2D_OAMTYPE_SOFTWAREEMULATION);

    NNSI_G2D_DEBUGMSG0("Initialize Oam reservation table ... done.\n");

    SetAffineReservationTblNotUsed_(NNS_G2D_OAMTYPE_MAIN);
    SetAffineReservationTblNotUsed_(NNS_G2D_OAMTYPE_SUB);
    SetAffineReservationTblNotUsed_(NNS_G2D_OAMTYPE_SOFTWAREEMULATION);

    NNSI_G2D_DEBUGMSG0("Initialize Oam affine reservation table ... done.\n");

    NNSI_G2D_DEBUGMSG0("Initialize OamManager ... done.\n");
}

BOOL NNS_G2dGetNewManagerInstance (NNSG2dOamManagerInstance * pMan, u16 from, u16 to, NNSG2dOamType type) {
    ASSERT_OAMTYPE_VALID(type);
    NNS_G2D_ASSERT(from <= to);
    NNS_G2D_ASSERT(to < NUM_HW_OAM_ATTR);
    NNS_G2D_NULL_ASSERT(pMan);

    {
        u16 * pReserveTbl = GetOamReservationTblPtr_(type);
        NNS_G2D_NULL_ASSERT(pReserveTbl);

        if (IsOamNotUsed_(pReserveTbl, from, to)) {
            pMan->GUID = GetNewGUID_();
            pMan->managedAttrArea.fromIdx = from;
            pMan->managedAttrArea.toIdx = to;
            pMan->managedAttrArea.currentIdx = from;

            pMan->managedAffineArea.fromIdx = NUM_HW_OAM_AFFINE;
            pMan->managedAffineArea.toIdx = 0;

            pMan->type = type;
            pMan->bFastTransferEnable = FALSE;

            DoReserveArea_(pReserveTbl, from, to, pMan->GUID);

            return TRUE;
        } else {
            OS_Warning("Failure in NNS_G2dGetNewManagerInstance().\n The manageArea that you specified has been used by someone.");
            return FALSE;
        }
    }
}

BOOL NNS_G2dInitManagerInstanceAffine (NNSG2dOamManagerInstance * pMan, u16 from, u16 to) {
    NNS_G2D_NULL_ASSERT(pMan);
    NNS_G2D_ASSERT(from <= to);
    NNS_G2D_ASSERT(to < NUM_HW_OAM_AFFINE);

    {
        u16 * pReserveTbl = GetAffineReservationTblPtr_(pMan->type);
        NNS_G2D_NULL_ASSERT(pReserveTbl);

        if (IsOamNotUsed_(pReserveTbl, from, to)) {
            pMan->managedAffineArea.fromIdx = from;
            pMan->managedAffineArea.toIdx = to;
            pMan->managedAffineArea.currentIdx = from;
            pMan->bFastTransferEnable = FALSE;

            DoReserveArea_(pReserveTbl, from, to, pMan->GUID);

            return TRUE;
        } else {
            OS_Warning("Failure in NNS_G2dInitManagerInstanceAffine().\n The manageArea that you specified has been used by someone.");
            return FALSE;
        }
    }
}

BOOL NNS_G2dGetNewOamManagerInstance (NNSG2dOamManagerInstance * pMan, u16 fromOBJ, u16 numOBJ, u16 fromAffine, u16 numAffine, NNSG2dOamType type) {
    ASSERT_OAMTYPE_VALID(type);
    NNS_G2D_NON_ZERO_ASSERT(numOBJ);
    NNS_G2D_ASSERT(numOBJ <= NUM_HW_OAM_ATTR);
    NNS_G2D_ASSERT(numAffine <= NUM_HW_OAM_AFFINE);
    NNS_G2D_NULL_ASSERT(pMan);

    {
        u16 * pReserveTbl = GetOamReservationTblPtr_(type);
        const u16 toOBJ = (u16)(fromOBJ + (numOBJ - 1));

        NNS_G2D_NULL_ASSERT(pReserveTbl);

        if (IsOamNotUsed_(pReserveTbl, fromOBJ, toOBJ)) {
            pMan->GUID = GetNewGUID_();
            pMan->managedAttrArea.fromIdx = fromOBJ;
            pMan->managedAttrArea.toIdx = toOBJ;
            pMan->managedAttrArea.currentIdx = fromOBJ;

            DoReserveArea_(pReserveTbl, fromOBJ, toOBJ, pMan->GUID);
        } else {
            OS_Warning("Failure in NNS_G2dGetNewManagerInstance().\n The manageArea that you specified has been used by someone.");
            return FALSE;
        }
    }

    {
        u16 * pReserveTbl = GetAffineReservationTblPtr_(type);
        NNS_G2D_NULL_ASSERT(pReserveTbl);

        if (numAffine == 0) {
            pMan->managedAffineArea.fromIdx = NUM_HW_OAM_AFFINE;
            pMan->managedAffineArea.toIdx = 0;
            pMan->managedAffineArea.currentIdx = pMan->managedAffineArea.fromIdx;
        } else {
            const u16 toAffine = (u16)(fromAffine + (numAffine - 1));

            if (IsOamNotUsed_(pReserveTbl, fromAffine, toAffine)) {
                pMan->managedAffineArea.fromIdx = fromAffine;
                pMan->managedAffineArea.toIdx = toAffine;
                pMan->managedAffineArea.currentIdx = fromAffine;

                DoReserveArea_(pReserveTbl, fromAffine, toAffine, pMan->GUID);
            } else {
                OS_Warning("Failure in NNS_G2dGetNewManagerInstanceNew().\n The manageArea that you specified has been used by someone.");
                return FALSE;
            }
        }
    }

    pMan->bFastTransferEnable = FALSE;
    pMan->type = type;

    return TRUE;
}

BOOL NNS_G2dGetNewOamManagerInstanceAsFastTransferMode (NNSG2dOamManagerInstance * pMan, u16 fromOBJ, u16 numOBJ, NNSG2dOamType type) {
    ASSERT_OAMTYPE_VALID(type);
    NNS_G2D_NON_ZERO_ASSERT(numOBJ);
    NNS_G2D_ASSERT(numOBJ <= NUM_HW_OAM_ATTR);
    NNS_G2D_NULL_ASSERT(pMan);
    NNS_G2D_ASSERT(fromOBJ % 4 == 0);
    NNS_G2D_ASSERT(numOBJ % 4 == 0);

    {
        u16 * pReserveTbl = GetOamReservationTblPtr_(type);
        const u16 toOBJ = (u16)(fromOBJ + (numOBJ - 1));

        NNS_G2D_NULL_ASSERT(pReserveTbl);

        if (IsOamNotUsed_(pReserveTbl, fromOBJ, toOBJ)) {
            pMan->GUID = GetNewGUID_();
            pMan->managedAttrArea.fromIdx = fromOBJ;
            pMan->managedAttrArea.toIdx = toOBJ;
            pMan->managedAttrArea.currentIdx = fromOBJ;

            DoReserveArea_(pReserveTbl, fromOBJ, toOBJ, pMan->GUID);
        } else {
            OS_Warning("Failure in NNS_G2dGetNewOamManagerInstanceAsFastTransferMode().\n The manageArea that you specified has been used by someone.");
            return FALSE;
        }
    }

    {
        const u16 fromAffine = (u16)(fromOBJ / 4);
        const u16 numAffine = (u16)(numOBJ / 4);
        const u16 toAffine = (u16)(fromAffine + (numAffine - 1));

        u16 * pReserveTbl = GetAffineReservationTblPtr_(type);
        NNS_G2D_NULL_ASSERT(pReserveTbl);

        if (IsOamNotUsed_(pReserveTbl, fromAffine, toAffine)) {
            pMan->managedAffineArea.fromIdx = fromAffine;
            pMan->managedAffineArea.toIdx = toAffine;
            pMan->managedAffineArea.currentIdx = fromAffine;

            DoReserveArea_(pReserveTbl, fromAffine, toAffine, pMan->GUID);
        } else {
            OS_Warning("Failure in NNS_G2dGetNewManagerInstanceNew().\n The manageArea that you specified has been used by someone.");
            return FALSE;
        }
    }

    pMan->bFastTransferEnable = TRUE;
    pMan->type = type;

    return TRUE;
}

BOOL NNS_G2dEntryOamManagerOam (NNSG2dOamManagerInstance * pMan, const GXOamAttr * pOam, u16 num) {
    NNS_G2D_NULL_ASSERT(pMan);
    NNS_G2D_NULL_ASSERT(pOam);
    NNS_G2D_ASSERT(num != 0);

    if (HasEnoughCapacity_(&pMan->managedAttrArea, num)) {
        int i = 0;
        GXOamAttr * pOamAttr = GetOamCurrentPtr_(pMan);
        for ( i = 0; i < num; i++ ) {
            pOamAttr[i].attr0 = pOam->attr0;
            pOamAttr[i].attr1 = pOam->attr1;
            pOamAttr[i].attr2 = pOam->attr2;

            pMan->managedAttrArea.currentIdx++;
            pOam++;
        }

        NNSI_G2D_DEBUGMSG1(
            "New Oam entry occur...  from %d to %d for GUID %d\n",
            pMan->currentPos,
            pMan->currentPos + num,
            pMan->GUID
        );

        return TRUE;
    } else {
        NNSI_G2D_DEBUGMSG0("The OamBuffer has no capacity enough to store new Oam.");
        return FALSE;
    }
}

BOOL NNS_G2dEntryOamManagerOamWithAffineIdx (NNSG2dOamManagerInstance * pMan, const GXOamAttr * pOam, u16 affineIdx) {
    NNS_G2D_NULL_ASSERT(pMan);
    NNS_G2D_NULL_ASSERT(pOam);

    if (HasEnoughCapacity_(&pMan->managedAttrArea, 1)) {
        GXOamAttr * pOamAttr = GetOamCurrentPtr_(pMan);

        pOamAttr->attr0 = pOam->attr0;
        pOamAttr->attr1 = pOam->attr1;
        pOamAttr->attr2 = pOam->attr2;

        if (NNS_G2D_OAM_AFFINE_IDX_NONE != affineIdx) {
            {
                if (pOamAttr->rsMode & 0x1) {
                    pOamAttr->rsParam = affineIdx;
                }
            }
        }

        pMan->managedAttrArea.currentIdx++;
        return TRUE;
    } else {
        NNSI_G2D_DEBUGMSG0("The OamBuffer has no capacity enough to store new Oam.");
        return FALSE;
    }
}

void NNS_G2dSetOamManagerAffine (NNSG2dOamType type, const MtxFx22 * mtx, u16 idx) {
    ASSERT_OAMTYPE_VALID(type);
    NNS_G2D_NULL_ASSERT(mtx);
    NNS_G2D_MINMAX_ASSERT(idx, 0, NUM_HW_OAM_AFFINE);

    SDK_WARNING(
        IsOamNotUsed_(GetAffineReservationTblPtr_(type), idx, idx),
        "An invalid affine param setting to the managed area is detected. index = %d", idx
    );

    SetAffineParams_(type, mtx, idx);
}

u16 NNS_G2dEntryOamManagerAffine (NNSG2dOamManagerInstance * pMan, const MtxFx22 * mtx) {
    NNS_G2D_NULL_ASSERT(pMan);
    NNS_G2D_NULL_ASSERT(mtx);
    NNS_G2D_ASSERT(IsManageAreaValid_(&pMan->managedAffineArea));

    if (HasEnoughCapacity_(&pMan->managedAffineArea, 1)) {
        const u16 currentAffineIdx = pMan->managedAffineArea.currentIdx;

        SetAffineParams_(pMan->type, mtx, currentAffineIdx);

        pMan->managedAffineArea.currentIdx++;

        return currentAffineIdx;
    } else {
        NNSI_G2D_DEBUGMSG0("The OamBuffer has no capacity enough to store new Affine Paramater.");
        return NNS_G2D_OAM_AFFINE_IDX_NONE;
    }
}

void NNS_G2dApplyOamManagerToHW (NNSG2dOamManagerInstance * pMan) {
    NNS_G2D_NULL_ASSERT(pMan);
    NNS_G2D_ASSERTMSG(
        pMan->type != NNS_G2D_OAMTYPE_SOFTWAREEMULATION,
        " For the NNS_G2D_OAMTYPE_SOFTWAREEMULATION type Manager, Use NNS_G2dApplyOamManagerToHWSprite() instead."
    );
    {
        if (pMan->bFastTransferEnable) {
            LoadOamAndAffineFast_(
                pMan->type,
                pMan->managedAttrArea.fromIdx,
                pMan->managedAttrArea.toIdx
            );
        } else {
            LoadOam_(
                pMan->type,
                pMan->managedAttrArea.fromIdx,
                pMan->managedAttrArea.toIdx
            );

            if (IsManageAreaValid_(&pMan->managedAffineArea)) {
                LoadAffine_(
                    pMan->type,
                    pMan->managedAffineArea.fromIdx,
                    pMan->managedAffineArea.toIdx
                );
            }
        }
    }
}

void NNS_G2dApplyOamManagerToHWSprite (NNSG2dOamManagerInstance * pMan, const NNSG2dImageAttr * pTexImageAttr, u32 texBaseAddr, u32 pltBaseAddr) {
    NNS_G2D_NULL_ASSERT(pMan);
    NNS_G2D_NULL_ASSERT(pTexImageAttr);

    NNS_G2D_ASSERTMSG(
        pMan->type == NNS_G2D_OAMTYPE_SOFTWAREEMULATION,
        " For the NNS_G2D_OAMTYPE_MAIN SUB type Manager, Use NNS_G2dApplyOamManagerToHW() instead."
    );

    if (pMan->spriteZoffsetStep != 0) {
        fx32 step = NNSi_G2dGetOamSoftEmuAutoZOffsetStep();
        NNSi_G2dSetOamSoftEmuAutoZOffsetFlag(TRUE);
        NNSi_G2dSetOamSoftEmuAutoZOffsetStep(pMan->spriteZoffsetStep);

        {
            void * pFrom = GetOamFromPtr_(pMan);
            const u16 numOam = GetNumOamUsed_(&pMan->managedAttrArea);
            NNS_G2D_NULL_ASSERT(pFrom);

            DrawBy3DGraphicsEngine_(
                pFrom,
                numOam,
                pTexImageAttr,
                texBaseAddr,
                pltBaseAddr
            );
        }

        NNSi_G2dSetOamSoftEmuAutoZOffsetStep(step);
        NNSi_G2dSetOamSoftEmuAutoZOffsetFlag(FALSE);
        NNSi_G2dResetOamSoftEmuAutoZOffset();
    } else {
        {
            void * pFrom = GetOamFromPtr_(pMan);
            const u16 numOam = GetNumOamUsed_(&pMan->managedAttrArea);
            NNS_G2D_NULL_ASSERT(pFrom);

            DrawBy3DGraphicsEngine_(
                pFrom,
                numOam,
                pTexImageAttr,
                texBaseAddr,
                pltBaseAddr
            );
        }
    }
}

void NNS_G2dResetOamManagerBuffer (NNSG2dOamManagerInstance * pMan) {
    NNS_G2D_NULL_ASSERT(pMan);

    {
        if (pMan->bFastTransferEnable) {
            const u32 szByte = GetSizeOfManageArea_(&pMan->managedAttrArea);
            void * pData = GetOamFromPtr_(pMan);
            NNS_G2D_ASSERT(szByte != 0);

            DC_InvalidateRange(pData, szByte);
            NNSi_G2dDmaFill32(NNS_G2D_DMA_NO, pData, OAM_SETTING_INVISIBLE, szByte);
        } else {
            ResetOam_(
                pMan->type,
                pMan->managedAttrArea.fromIdx,
                pMan->managedAttrArea.toIdx
            );
        }
    }

    {
        pMan->managedAttrArea.currentIdx = pMan->managedAttrArea.fromIdx;
        pMan->managedAffineArea.currentIdx = pMan->managedAffineArea.fromIdx;
    }
}

void NNS_G2dApplyAndResetOamManagerBuffer (NNSG2dOamManagerInstance * pMan) {
    NNS_G2D_NULL_ASSERT(pMan);

    NNS_G2dApplyOamManagerToHW(pMan);
    NNS_G2dResetOamManagerBuffer(pMan);
}

u16 NNS_G2dGetOamManagerOamCapacity (NNSG2dOamManagerInstance * pMan) {
    NNS_G2D_NULL_ASSERT(pMan);
    return GetCapacity_(&pMan->managedAttrArea);
}

u16 NNS_G2dGetOamManagerAffineCapacity (NNSG2dOamManagerInstance * pMan) {
    NNS_G2D_NULL_ASSERT(pMan);
    return GetCapacity_(&pMan->managedAffineArea);
}

GXOamAttr * NNS_G2dGetOamBuffer (NNSG2dOamType type) {
    return GetOamBufferPtr_(type, 0);
}
