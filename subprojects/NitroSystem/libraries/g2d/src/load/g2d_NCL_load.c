#include <nitro.h>
#include <nnsys/g2d/load/g2d_NCL_load.h>
#include <nnsys/g2d/g2d_Load.h>

#include "../include/g2di_Debug.h"

#ifndef SDK_FINALROM
static const char * StrNNSG2dPaletteFmt_ [] = {
    "INVALID_PixelFmt !! ",
    "INVALID_PixelFmt !! ",
    "INVALID_PixelFmt !! ",
    "GX_TEXFMT_PLTT16",
    "GX_TEXFMT_PLTT256",
    "INVALID_PixelFmt !! ",
    "INVALID_PixelFmt !! ",
    "INVALID_PixelFmt !! "
};
#endif

static void DumpPalette_ (const NNSG2dPaletteData * pPlttData) {
    NNS_G2D_NULL_ASSERT(pPlttData);
    NNS_G2D_NULL_ASSERT(pPlttData->pRawData);
    {
        u16 i;
        const u16 * pColor = (const u16 *)pPlttData->pRawData;
        OS_Printf("\n ---------------- palette ---------------- \n");
        for ( i = 0; i < 16 * 16; i++ ) {
            if ((i & 0xF) == 0) {
                OS_Printf("\n");
            }

            OS_Printf(" %04X ", pColor[i]);
        }
        OS_Printf("\n ---------------- palette ---------------- \n");
    }
}

BOOL NNS_G2dGetUnpackedPaletteData (void * pNclrFile, NNSG2dPaletteData ** ppPltData) {
    NNS_G2D_NULL_ASSERT(pNclrFile);
    NNS_G2D_NULL_ASSERT(ppPltData);

    {
        const NNSG2dBinaryFileHeader * pBinFile = pNclrFile;

        NNS_G2D_ASSERTMSG(
            pBinFile->signature == NNS_G2D_BINFILE_SIG_PALETTEDATA ||
            pBinFile->signature == NNS_G2D_BINFILE_SIG_PALETTEDATA_OLD,
            "Input file signature is invalid for this method."
        );
    }

    NNS_G2D_ASSERTMSG(
        NNSi_G2dIsBinFileVersionValid(
            pNclrFile,
            BIN_FILE_VERSION(NCLR)
        ),
        "Input file is obsolete. Please use the new g2dcvtr.exe."
    );

    {
        NNSG2dBinaryFileHeader * pBinFile = (NNSG2dBinaryFileHeader *)pNclrFile;
        {
            NNSG2dPaletteDataBlock * pBinBlk =
                (NNSG2dPaletteDataBlock *)NNS_G2dFindBinaryBlock(
                    pBinFile,
                    NNS_G2D_BINBLK_SIG_PALETTEDATA
                );
            if (pBinBlk) {
                NNS_G2dUnpackNCL((void *)&pBinBlk->paletteData);

                *ppPltData = &pBinBlk->paletteData;
                return TRUE;
            } else {
                *ppPltData = NULL;
                return FALSE;
            }
        }
    }
}

BOOL NNS_G2dGetUnpackedPaletteCompressInfo (void * pNclrFile, NNSG2dPaletteCompressInfo ** ppPltCmpInfo) {
    NNS_G2D_NULL_ASSERT(pNclrFile);
    NNS_G2D_NULL_ASSERT(ppPltCmpInfo);

    {
        const NNSG2dBinaryFileHeader * pBinFile = pNclrFile;

        NNS_G2D_ASSERTMSG(
            pBinFile->signature == NNS_G2D_BINFILE_SIG_PALETTEDATA ||
            pBinFile->signature == NNS_G2D_BINFILE_SIG_PALETTEDATA_OLD,
            "Input file signature is invalid for this method."
        );
    }

    NNS_G2D_ASSERTMSG(
        NNSi_G2dIsBinFileVersionValid(
            pNclrFile,
            BIN_FILE_VERSION(NCLR)
        ),
        "Input file is obsolete. Please use the new g2dcvtr.exe."
    );

    {
        NNSG2dBinaryFileHeader * pBinFile = (NNSG2dBinaryFileHeader *)pNclrFile;
        {
            NNSG2dPaletteCompressDataBlock * pBinBlk =
                (NNSG2dPaletteCompressDataBlock *)NNS_G2dFindBinaryBlock(
                    pBinFile,
                    NNS_G2D_BINBLK_SIG_PALETTECOMPINFO
                );
            if (pBinBlk) {
                NNSi_G2dUnpackNCLCmpInfo((void *)&pBinBlk->plttCmpInfo);

                *ppPltCmpInfo = &pBinBlk->plttCmpInfo;
                return TRUE;
            } else {
                *ppPltCmpInfo = NULL;
                return FALSE;
            }
        }
    }
}

void NNSi_G2dUnpackNCLCmpInfo (NNSG2dPaletteCompressInfo * pPlttCmpInfo) {
    NNS_G2D_NULL_ASSERT(pPlttCmpInfo);

    pPlttCmpInfo->pPlttIdxTbl
        = NNS_G2D_UNPACK_OFFSET_PTR(pPlttCmpInfo->pPlttIdxTbl, pPlttCmpInfo);

    NNSI_G2D_DEBUGMSG0("Unpacking NCLR(Compressed) file is successful.\n");
}

void NNS_G2dUnpackNCL (NNSG2dPaletteData * pPlttData) {
    NNS_G2D_NULL_ASSERT(pPlttData);

    pPlttData->pRawData = NNS_G2D_UNPACK_OFFSET_PTR(pPlttData->pRawData, pPlttData);

    NNS_G2D_MINMAX_ASSERT(pPlttData->fmt, GX_TEXFMT_PLTT16, GX_TEXFMT_PLTT256);

    NNSI_G2D_DEBUGMSG0("Unpacking NCLR file is successful.\n");
}

#ifndef SDK_FINALROM

void NNS_G2dPrintPaletteData (const NNSG2dPaletteData * pPlttData) {
    NNS_G2D_NULL_ASSERT(pPlttData);
    {
        OS_Printf("---------------------------------------------\n");
        OS_Printf(" Palette Data (NCL)");
        OS_Printf(" fmt          = %s \n", StrNNSG2dPaletteFmt_[pPlttData->fmt]);
        OS_Printf(" bExtendedPlt = %d \n", pPlttData->bExtendedPlt);
        DumpPalette_(pPlttData);
        OS_Printf("---------------------------------------------\n");
    }
}

#endif
