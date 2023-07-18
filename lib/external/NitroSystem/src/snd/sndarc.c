#include <nnsys/snd/sndarc.h>
#include <nnsys/snd/config.h>

#ifndef NNS_FROM_TOOL

#include <nitro/snd.h>
#include <nnsys/misc.h>
#include <nnsys/snd/player.h>

#else

#define NNS_ASSERT(exp) ((void)0)
#define NNS_NULL_ASSERT(exp) ((void)0)
#define NNS_ALIGN4_ASSERT(exp) ((void)0)
#define NNS_MAX_ASSERT(exp, max) ((void)0)

static NNS_SND_INLINE
void MI_CpuCopy32 (register const void * srcp, register void * destp, register u32 size) {
    const u32 * sp = (const u32 *)srcp;
    u32 * dp = (u32 *)destp;
    u32 * dpe = (u32 *)((char *)dp + size);

    while (dp < dpe) {
        *dp++ = *sp++;
    }
}

#ifdef _MSC_VER
#pragma warning( disable : 4018 )
#pragma warning( disable : 4311 )
#pragma warning( disable : 4312 )
#endif

#endif

static const char null_string = '\0';
static NNSSndArc * sCurrent = NULL;

static const char * GetSymbol(const NNSSndArcOffsetTable * table, int index, const void * base);
static void * GetPtr(void * base, u32 offset);
static const void * GetPtrConst(const void * base, u32 offset);
static const NNSSndArcOffsetTable * GetOffsetTable(const NNSSndArcInfo * info, u32 offset);
static void InfoDisposeCallback(void * mem, u32 size, u32 data1, u32 data2);
static void FatDisposeCallback(void * mem, u32 size, u32 data1, u32 data2);
static void SymbolDisposeCallback(void * mem, u32 size, u32 data1, u32 data2);

static NNS_SND_INLINE
void * GetPtr (void * base, u32 offset) {
    if (offset == 0) {
        return NULL;
    }
    return (u8 *)base + offset;
}

static NNS_SND_INLINE
const void * GetPtrConst (const void * base, u32 offset) {
    if (offset == 0) {
        return NULL;
    }
    return (const u8 *)base + offset;
}

static NNS_SND_INLINE
const NNSSndArcOffsetTable * GetOffsetTable (const NNSSndArcInfo * info, u32 offset) {
    return (const NNSSndArcOffsetTable *)GetPtrConst(info, offset);
}

#ifndef SDK_SMALL_BUILD

#ifndef NNS_FROM_TOOL

void NNS_SndArcInit (NNSSndArc * arc, const char * filePath, NNSSndHeapHandle heap, BOOL symbolLoadFlag) {
    BOOL result;

    NNS_ASSERT(FS_IsAvailable());
    NNS_NULL_ASSERT(arc);

    arc->info = NULL;
    arc->fat = NULL;
    arc->symbol = NULL;
    arc->loadBlockSize = 0;

    result = FS_ConvertPathToFileID(&arc->fileId, filePath);
    NNS_ASSERTMSG(result, "Cannot find file %s\n", filePath);
    if (!result) {
        return;
    }

    FS_InitFile(&arc->file);
    result = FS_OpenFileFast(&arc->file, arc->fileId);
    NNS_ASSERTMSG(result, "Cannot open file %s\n", filePath);
    if (!result) {
        return;
    }

    arc->file_open = TRUE;

    result = NNS_SndArcSetup(arc, heap, symbolLoadFlag);
    NNS_ASSERT(result);
    if (!result) {
        return;
    }

    sCurrent = arc;
}

BOOL NNS_SndArcInitWithResult (NNSSndArc * arc, const char * filePath, NNSSndHeapHandle heap, BOOL symbolLoadFlag) {
    BOOL result;

    NNS_ASSERT(FS_IsAvailable());
    NNS_NULL_ASSERT(arc);

    arc->info = NULL;
    arc->fat = NULL;
    arc->symbol = NULL;
    arc->loadBlockSize = 0;

    result = FS_ConvertPathToFileID(&arc->fileId, filePath);
    if (!result) {
        return FALSE;
    }

    FS_InitFile(&arc->file);
    result = FS_OpenFileFast(&arc->file, arc->fileId);
    if (!result) {
        return FALSE;
    }

    arc->file_open = TRUE;

    result = NNS_SndArcSetup(arc, heap, symbolLoadFlag);
    if (!result) {
        return FALSE;
    }

    sCurrent = arc;

    return TRUE;
}

BOOL NNS_SndArcSetup (NNSSndArc * arc, NNSSndHeapHandle heap, BOOL symbolLoadFlag) {
    BOOL result;
    s32 readSize;

    NNS_NULL_ASSERT(arc);
    NNS_ASSERT(arc->file_open);

    result = FS_SeekFile(&arc->file, 0, FS_SEEK_SET);
    if (!result) {
        return FALSE;
    }

    readSize = FS_ReadFile(
        &arc->file,
        &arc->header,
        sizeof(arc->header)
    );
    if (readSize != sizeof(arc->header)) {
        return FALSE;
    }
    NNS_ASSERT(
        arc->header.fileHeader.signature[0] == 'S' &&
        arc->header.fileHeader.signature[1] == 'D' &&
        arc->header.fileHeader.signature[2] == 'A' &&
        arc->header.fileHeader.signature[3] == 'T'
    );
    NNS_ASSERT(arc->header.fileHeader.version >= NNS_SND_ARC_SUPPORTED_FILE_VERSION);

    if (heap != NNS_SND_HEAP_INVALID_HANDLE) {
        arc->info = (NNSSndArcInfo *)NNS_SndHeapAlloc(heap, arc->header.infoSize, InfoDisposeCallback, (u32)arc, 0);
        if (arc->info == NULL) {
            return FALSE;
        }
        result = FS_SeekFile(&arc->file, (s32)(arc->header.infoOffset), FS_SEEK_SET);
        if (!result) {
            return FALSE;
        }
        readSize = FS_ReadFile(&arc->file, arc->info, (s32)(arc->header.infoSize));
        if (readSize != arc->header.infoSize) {
            return FALSE;
        }
        NNS_ASSERT(arc->info->blockHeader.kind == NNS_SND_ARC_SIGNATURE_INFO);

        arc->fat = (NNSSndArcFat *)NNS_SndHeapAlloc(heap, arc->header.fatSize, FatDisposeCallback, (u32)arc, 0);
        if (arc->fat == NULL) {
            return FALSE;
        }
        result = FS_SeekFile(&arc->file, (s32)(arc->header.fatOffset), FS_SEEK_SET);
        if (!result) {
            return FALSE;
        }
        readSize = FS_ReadFile(&arc->file, arc->fat, (s32)(arc->header.fatSize));
        if (readSize != arc->header.fatSize) {
            return FALSE;
        }
        NNS_ASSERT(arc->fat->blockHeader.kind == NNS_SND_ARC_SIGNATURE_FAT);

        if (symbolLoadFlag && arc->header.symbolDataSize > 0) {
            arc->symbol = (NNSSndArcSymbol *)NNS_SndHeapAlloc(heap, arc->header.symbolDataSize, SymbolDisposeCallback, (u32)arc, 0);
            if (arc->symbol == NULL) {
                return FALSE;
            }
            result = FS_SeekFile(&arc->file, (s32)(arc->header.symbolDataOffset), FS_SEEK_SET);
            if (!result) {
                return FALSE;
            }

            readSize = FS_ReadFile(&arc->file, arc->symbol, (s32)(arc->header.symbolDataSize));
            if (readSize != arc->header.symbolDataSize) {
                return FALSE;
            }
            NNS_ASSERT(arc->symbol->blockHeader.kind == NNS_SND_ARC_SIGNATURE_SYMB);
        }
    }

    return TRUE;
}
#endif

#endif

void NNS_SndArcInitOnMemory (NNSSndArc * arc, void * data) {
    NNSSndArcHeader * header = (NNSSndArcHeader *)data;
    NNSSndArcFileInfo * file;
    int fileId;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(data);
    NNS_ALIGN4_ASSERT(data);

    MI_CpuCopy32(header, &arc->header, sizeof(arc->header));

    NNS_ASSERT(
        arc->header.fileHeader.signature[0] == 'S' &&
        arc->header.fileHeader.signature[1] == 'D' &&
        arc->header.fileHeader.signature[2] == 'A' &&
        arc->header.fileHeader.signature[3] == 'T'
    );
    NNS_ASSERT(arc->header.fileHeader.version >= NNS_SND_ARC_SUPPORTED_FILE_VERSION);

    arc->info = (NNSSndArcInfo *)GetPtr(header, arc->header.infoOffset);
    arc->fat = (NNSSndArcFat *)GetPtr(header, arc->header.fatOffset);
    arc->symbol = (NNSSndArcSymbol *)GetPtr(header, arc->header.symbolDataOffset);
    arc->loadBlockSize = 0;

    NNS_NULL_ASSERT(arc->info);
    NNS_NULL_ASSERT(arc->fat);

    NNS_ASSERT(arc->info->blockHeader.kind == NNS_SND_ARC_SIGNATURE_INFO);
    NNS_ASSERT(arc->fat->blockHeader.kind == NNS_SND_ARC_SIGNATURE_FAT);
    NNS_ASSERT(arc->symbol == NULL || arc->symbol->blockHeader.kind == NNS_SND_ARC_SIGNATURE_SYMB);

    for ( fileId = 0; fileId < arc->fat->count ; fileId++ ) {
        file = &arc->fat->files[fileId];

        file->mem = GetPtr(header, file->offset);
        NNS_NULL_ASSERT(file->mem);
    }

    arc->file_open = FALSE;

    sCurrent = arc;
}

NNSSndArc * NNS_SndArcSetCurrent (NNSSndArc * arc) {
    NNSSndArc * oldArc = sCurrent;
    sCurrent = arc;
    return oldArc;
}

NNSSndArc * NNS_SndArcGetCurrent (void) {
    return sCurrent;
}

const NNSSndSeqParam * NNS_SndArcGetSeqParam (int seqNo) {
    const NNSSndArcSeqInfo * info;

    info = NNS_SndArcGetSeqInfo(seqNo);
    if (info == NULL) {
        return NULL;
    }

    return &info->param;
}

const NNSSndSeqParam * NNS_SndArcGetSeqArcParam (int seqArcNo, int index) {
    const NNSSndArcSeqArcInfo * info;
    const NNSSndSeqArc * seqArc;
    const NNSSndSeqArcSeqInfo * sound;

    info = NNS_SndArcGetSeqArcInfo(seqArcNo);
    if (info == NULL) {
        return NULL;
    }

    seqArc = (const NNSSndSeqArc *)NNS_SndArcGetFileAddress(info->fileId);
    if (seqArc == NULL) {
        return NULL;
    }

    sound = NNSi_SndSeqArcGetSeqInfo(seqArc, index);
    if (sound == NULL) {
        return NULL;
    }

    return &sound->param;
}

const NNSSndArcSeqInfo * NNS_SndArcGetSeqInfo (int seqNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->seqOffset);
    if (table == NULL) {
        return NULL;
    }

    if (seqNo < 0) {
        return NULL;
    }
    if (seqNo >= table->count) {
        return NULL;
    }

    return (const NNSSndArcSeqInfo *)GetPtrConst(arc->info, table->offset[seqNo]);
}

const NNSSndArcSeqArcInfo * NNS_SndArcGetSeqArcInfo (int seqArcNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->seqArcOffset);
    if (table == NULL) {
        return NULL;
    }

    if (seqArcNo < 0) {
        return NULL;
    }
    if (seqArcNo >= table->count) {
        return NULL;
    }

    return (const NNSSndArcSeqArcInfo *)GetPtrConst(arc->info, table->offset[seqArcNo]);
}

const NNSSndArcBankInfo * NNS_SndArcGetBankInfo (int bankNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->bankOffset);
    if (table == NULL) {
        return NULL;
    }

    if (bankNo < 0) {
        return NULL;
    }
    if (bankNo >= table->count) {
        return NULL;
    }

    return (const NNSSndArcBankInfo *)GetPtrConst(arc->info, table->offset[bankNo]);
}

const NNSSndArcWaveArcInfo * NNS_SndArcGetWaveArcInfo (int waveArcNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->waveArcOffset);
    if (table == NULL) {
        return NULL;
    }

    if (waveArcNo < 0) {
        return NULL;
    }
    if (waveArcNo >= table->count) {
        return NULL;
    }

    return (const NNSSndArcWaveArcInfo *)GetPtrConst(arc->info, table->offset[waveArcNo]);
}

const NNSSndArcStrmInfo * NNS_SndArcGetStrmInfo (int strmNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->strmOffset);
    if (table == NULL) {
        return NULL;
    }

    if (strmNo < 0) {
        return NULL;
    }
    if (strmNo >= table->count) {
        return NULL;
    }

    return (const NNSSndArcStrmInfo *)GetPtrConst(arc->info, table->offset[strmNo]);
}

const NNSSndArcPlayerInfo * NNS_SndArcGetPlayerInfo (int playerNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->playerInfoOffset);
    if (table == NULL) {
        return NULL;
    }

    if (playerNo < 0) {
        return NULL;
    }
    if (playerNo >= table->count) {
        return NULL;
    }

    return (const NNSSndArcPlayerInfo *)GetPtrConst(arc->info, table->offset[playerNo]);
}

const NNSSndArcStrmPlayerInfo * NNS_SndArcGetStrmPlayerInfo (int playerNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->strmPlayerInfoOffset);
    if (table == NULL) {
        return NULL;
    }

    if (playerNo < 0) {
        return NULL;
    }
    if (playerNo >= table->count) {
        return NULL;
    }

    return (const NNSSndArcStrmPlayerInfo *)GetPtrConst(arc->info, table->offset[playerNo]);
}

const NNSSndArcGroupInfo * NNS_SndArcGetGroupInfo (int groupNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->groupInfoOffset);
    if (table == NULL) {
        return NULL;
    }

    if (groupNo < 0) {
        return NULL;
    }
    if (groupNo >= table->count) {
        return NULL;
    }

    return (const NNSSndArcGroupInfo *)GetPtrConst(arc->info, table->offset[groupNo]);
}

u32 NNS_SndArcGetSeqCount (void) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->seqOffset);
    if (table == NULL) {
        return 0;
    }

    return table->count;
}

u32 NNS_SndArcGetSeqArcCount (void) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->seqArcOffset);
    if (table == NULL) {
        return 0;
    }

    return table->count;
}

u32 NNS_SndArcGetBankCount (void) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->bankOffset);
    if (table == NULL) {
        return 0;
    }

    return table->count;
}

u32 NNS_SndArcGetWaveArcCount (void) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->waveArcOffset);
    if (table == NULL) {
        return 0;
    }

    return table->count;
}

u32 NNS_SndArcGetStrmCount (void) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->strmOffset);
    if (table == NULL) {
        return 0;
    }

    return table->count;
}

u32 NNS_SndArcGetGroupCount (void) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->info);

    table = GetOffsetTable(arc->info, arc->info->groupInfoOffset);
    if (table == NULL) {
        return 0;
    }

    return table->count;
}

u32 NNS_SndArcGetSeqArcSeqCount (int seqArcNo) {
    const NNSSndArcSeqArcInfo * info;
    const NNSSndSeqArc * seqArc;

    info = NNS_SndArcGetSeqArcInfo(seqArcNo);
    if (info == NULL) {
        return 0;
    }

    seqArc = (const NNSSndSeqArc *)NNS_SndArcGetFileAddress(info->fileId);
    if (seqArc == NULL) {
        return 0;
    }

    return NNSi_SndSeqArcGetSeqCount(seqArc);
}

u32 NNS_SndArcGetFileOffset (u32 fileId) {
    NNSSndArc * arc = sCurrent;
    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->fat);

    if (fileId >= arc->fat->count) {
        return 0;
    }
    return arc->fat->files[fileId].offset;
}

u32 NNS_SndArcGetFileSize (u32 fileId) {
    NNSSndArc * arc = sCurrent;
    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->fat);

    if (fileId >= arc->fat->count) {
        return 0;
    }
    return arc->fat->files[fileId].size;
}

#ifndef NNS_FROM_TOOL

s32 NNS_SndArcReadFile (u32 fileId, void * buffer, s32 size, s32 offset) {
#ifndef SDK_SMALL_BUILD

    NNSSndArc * arc = sCurrent;
    const NNSSndArcFileInfo * file;
    s32 totalReadSize;
    s32 readSize;
    s32 blockSize;
    s32 currentOffset;
    s32 requestSize;
    u8 * destAddress;

    NNS_ASSERT(FS_IsAvailable());
    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->fat);
    NNS_NULL_ASSERT(buffer);
    NNS_ASSERTMSG(arc->file_open, "Cannot use this function for the Sound Archive initialized by NNS_SndArcInitOnMemory\n");

    if (fileId >= arc->fat->count) {
        return -1;
    }
    file = &arc->fat->files[fileId];

    currentOffset = offset;

    blockSize = arc->loadBlockSize;
    if (blockSize == 0) {
        blockSize = size;
    }
    totalReadSize = 0;
    destAddress = (u8 *)buffer;

    while (totalReadSize < size) {
        requestSize = size - totalReadSize;
        if (requestSize > blockSize) {
            requestSize = blockSize;
        }
        if (requestSize > file->size - currentOffset) {
            requestSize = (s32)(file->size - currentOffset);
        }
        if (requestSize == 0) {
            break;
        }

        if (!FS_SeekFile(&arc->file, (s32)(file->offset + currentOffset), FS_SEEK_SET)) {
            return -1;
        }
        readSize = FS_ReadFile(&arc->file, destAddress, requestSize);
        if (readSize < 0) {
            return readSize;
        }

        totalReadSize += readSize;
        currentOffset += readSize;
        destAddress += readSize;
    }

    return totalReadSize;

#else

#pragma unused( fileId, buffer, size, offset )
    return -1;

#endif
}

FSFileID NNS_SndArcGetFileID (void) {
    NNSSndArc * arc = sCurrent;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->fat);
    NNS_ASSERTMSG(arc->file_open, "Cannot use this function for the Sound Archive initialized by NNS_SndArcInitOnMemory\n");

    return arc->fileId;
}

#endif

void * NNS_SndArcGetFileAddress (u32 fileId) {
    NNSSndArc * arc = sCurrent;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->fat);

    if (fileId >= arc->fat->count) {
        return NULL;
    }
    return arc->fat->files[fileId].mem;
}

void NNS_SndArcSetFileAddress (u32 fileId, void * address) {
    NNSSndArc * arc = sCurrent;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->fat);
    NNS_MAX_ASSERT(fileId, arc->fat->count - 1);

    arc->fat->files[fileId].mem = address;
}

s32 NNS_SndArcGetLoadBlockSize () {
    NNSSndArc * arc = sCurrent;

    NNS_NULL_ASSERT(arc);
    return arc->loadBlockSize;
}

void NNS_SndArcSetLoadBlockSize (s32 loadBlockSize) {
    NNSSndArc * arc = sCurrent;

    NNS_NULL_ASSERT(arc);
    arc->loadBlockSize = loadBlockSize;
}

const char * NNS_SndArcGetSeqSymbol (int seqNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);

    if (arc->symbol == NULL) {
        return &null_string;
    }

    table = (const NNSSndArcOffsetTable *)GetPtrConst(arc->symbol, arc->symbol->seqOffset);
    if (table == NULL) {
        return &null_string;
    }

    return GetSymbol(table, seqNo, arc->symbol);
}

const char * NNS_SndArcGetSeqArcSymbol (int seqArcNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcSeqArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);

    if (arc->symbol == NULL) {
        return &null_string;
    }

    table = (const NNSSndArcSeqArcOffsetTable *)GetPtrConst(arc->symbol, arc->symbol->seqArcOffset);
    if (table == NULL) {
        return &null_string;
    }

    if (seqArcNo < 0) {
        return &null_string;
    }
    if (seqArcNo >= table->count) {
        return &null_string;
    }

    if (table->offset[seqArcNo].symbol == 0) {
        return &null_string;
    }

    return (const char *)GetPtrConst(arc->symbol, table->offset[seqArcNo].symbol);
}

const char * NNS_SndArcGetSeqArcIdxSymbol (int seqArcNo, int index) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcSeqArcOffsetTable * table;
    const NNSSndArcOffsetTable * symbolTable;

    NNS_NULL_ASSERT(arc);

    if (arc->symbol == NULL) {
        return &null_string;
    }

    table = (const NNSSndArcSeqArcOffsetTable *)GetPtrConst(arc->symbol, arc->symbol->seqArcOffset);
    if (table == NULL) {
        return &null_string;
    }

    if (seqArcNo < 0) {
        return &null_string;
    }
    if (seqArcNo >= table->count) {
        return &null_string;
    }

    symbolTable = (const NNSSndArcOffsetTable *)GetPtrConst(arc->symbol, table->offset[seqArcNo].table);
    if (symbolTable == NULL) {
        return &null_string;
    }

    return GetSymbol(symbolTable, index, arc->symbol);
}

const char * NNS_SndArcGetBankSymbol (int bankNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);

    if (arc->symbol == NULL) {
        return &null_string;
    }

    table = (const NNSSndArcOffsetTable *)GetPtrConst(arc->symbol, arc->symbol->bankOffset);
    if (table == NULL) {
        return &null_string;
    }

    return GetSymbol(table, bankNo, arc->symbol);
}

const char * NNS_SndArcGetWaveArcSymbol (int waveArcNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);

    if (arc->symbol == NULL) {
        return &null_string;
    }

    table = (const NNSSndArcOffsetTable *)GetPtrConst(arc->symbol, arc->symbol->waveArcOffset);
    if (table == NULL) {
        return &null_string;
    }

    return GetSymbol(table, waveArcNo, arc->symbol);
}

const char * NNS_SndArcGetStrmSymbol (int strmNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);

    if (arc->symbol == NULL) {
        return &null_string;
    }

    table = (const NNSSndArcOffsetTable *)GetPtrConst(arc->symbol, arc->symbol->strmOffset);
    if (table == NULL) {
        return &null_string;
    }

    return GetSymbol(table, strmNo, arc->symbol);
}

const char * NNS_SndArcGetGroupSymbol (int groupNo) {
    NNSSndArc * arc = sCurrent;
    const NNSSndArcOffsetTable * table;

    NNS_NULL_ASSERT(arc);

    if (arc->symbol == NULL) {
        return &null_string;
    }

    table = (const NNSSndArcOffsetTable *)GetPtrConst(arc->symbol, arc->symbol->groupOffset);
    if (table == NULL) {
        return &null_string;
    }

    return GetSymbol(table, groupNo, arc->symbol);
}

static const char * GetSymbol (const NNSSndArcOffsetTable * table, int index, const void * base) {
    if (index < 0) {
        return &null_string;
    }
    if (index >= table->count) {
        return &null_string;
    }

    if (table->offset[index] == 0) {
        return &null_string;
    }

    return (const char *)GetPtrConst(base, table->offset[index]);
}

static void InfoDisposeCallback (void * mem, u32 size, u32 data1, u32 data2) {
    NNSSndArc * arc = (NNSSndArc *)data1;

    (void)mem;
    (void)size;
    (void)data2;

    NNS_NULL_ASSERT(arc);

    arc->info = NULL;
}

static void FatDisposeCallback (void * mem, u32 size, u32 data1, u32 data2) {
    NNSSndArc * arc = (NNSSndArc *)data1;
    int i;

    (void)mem;
    (void)size;
    (void)data2;

    NNS_NULL_ASSERT(arc);
    NNS_NULL_ASSERT(arc->fat);

    for ( i = 0; i < arc->fat->count ; i++ ) {
#ifndef NNS_FROM_TOOL
        NNS_ASSERTMSG(
            arc->fat->files[i].mem == NULL,
            "Cannot clear sndarc FAT block, because some file is on memory."
        );
#endif
    }

    arc->fat = NULL;
}

static void SymbolDisposeCallback (void * mem, u32 size, u32 data1, u32 data2) {
    NNSSndArc * arc = (NNSSndArc *)data1;

    (void)mem;
    (void)size;
    (void)data2;

    NNS_NULL_ASSERT(arc);

    arc->symbol = NULL;
}
