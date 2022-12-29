#ifndef NNS_SND_SNDARC_H_
#define NNS_SND_SNDARC_H_

#include <nitro/types.h>
#include <nitro/snd.h>
#include <nnsys/snd/seqdata.h>

#ifndef NNS_FROM_TOOL

#include <nitro/os.h>
#include <nitro/fs.h>
#include <nnsys/snd/heap.h>

#endif

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_SND_ARC_SUPPORTED_FILE_VERSION 0x0006

#define NNS_SND_ARC_LOAD_SEQ (1 << 0)
#define NNS_SND_ARC_LOAD_BANK (1 << 1)
#define NNS_SND_ARC_LOAD_WAVE (1 << 2)
#define NNS_SND_ARC_LOAD_SEQARC (1 << 3)
#define NNS_SND_ARC_LOAD_ALL 0xff

#define NNS_SND_ARC_SIGNATURE_HEAD 'TADS'
#define NNS_SND_ARC_SIGNATURE_INFO 'OFNI'
#define NNS_SND_ARC_SIGNATURE_FAT ' TAF'
#define NNS_SND_ARC_SIGNATURE_SYMB 'BMYS'

#define NNS_SND_ARC_INVALID_FILE_ID 0xffffffff

#define NNS_SND_ARC_INVALID_WAVEARC_NO 0xffff

#define NNS_SND_ARC_BANK_TO_WAVEARC_NUM 4

#define NNS_SND_ARC_STRM_FORCE_STEREO (1 << 0)

#define NNS_SND_ARC_WAVEARC_SINGLE_LOAD (1 << 0)

typedef enum NNSSndArcSndType {
    NNS_SNDARC_SNDTYPE_SEQ,
    NNS_SNDARC_SNDTYPE_BANK,
    NNS_SNDARC_SNDTYPE_WAVEARC,
    NNS_SNDARC_SNDTYPE_SEQARC,

    NNS_SNDARC_SNDTYPE_INVALID = 0xff
} NNSSndArcSndType;

#ifdef _MSC_VER
#pragma warning( disable : 4200 )
#endif

typedef struct NNSSndArcSeqInfo {
    u32 fileId;
    struct NNSSndSeqParam param;
} NNSSndArcSeqInfo;

typedef struct NNSSndArcSeqArcInfo {
    u32 fileId;
} NNSSndArcSeqArcInfo;

typedef struct NNSSndArcBankInfo {
    u32 fileId;
    u16 waveArcNo[NNS_SND_ARC_BANK_TO_WAVEARC_NUM];
} NNSSndArcBankInfo;

typedef struct NNSSndArcWaveArcInfo {
    u32 fileId : 24;
    u32 flags  :  8;
} NNSSndArcWaveArcInfo;

typedef struct NNSSndArcStrmInfo {
    u32 fileId;
    u8 volume;
    u8 playerPrio;
    u8 playerNo;
    u8 flags;
} NNSSndArcStrmInfo;

typedef struct NNSSndArcPlayerInfo {
    u8 seqMax;
    u8 padding;
    u16 allocChBitFlag;
    u32 heapSize;
} NNSSndArcPlayerInfo;

typedef struct NNSSndArcStrmPlayerInfo {
    u8 numChannels;
    u8 chNoList[2];
} NNSSndArcStrmPlayerInfo;

typedef struct NNSSndArcGroupItem {
    u8 type;
    u8 loadFlag;
    u16 padding;
    u32 index;
} NNSSndArcGroupItem;

typedef struct NNSSndArcGroupInfo {
    u32 count;
    struct NNSSndArcGroupItem item[0];
} NNSSndArcGroupInfo;

typedef struct NNSSndArcSeqArcOffset {
    u32 symbol;
    u32 table;
} NNSSndArcSeqArcOffset;

typedef struct NNSSndArcSeqArcOffsetTable {
    u32 count;
    NNSSndArcSeqArcOffset offset[0];
} NNSSndArcSeqArcOffsetTable;

typedef struct NNSSndArcOffsetTable {
    u32 count;
    u32 offset[0];
} NNSSndArcOffsetTable;

typedef struct NNSSndArcFileInfo {
    u32 offset;
    u32 size;
    void * mem;
    u32 reserved;
} NNSSndArcFileInfo;

typedef struct NNSSndArcFat {
    struct SNDBinaryBlockHeader blockHeader;

    u32 count;
    NNSSndArcFileInfo files[0];
} NNSSndArcFat;

typedef struct NNSSndArcInfo {
    struct SNDBinaryBlockHeader blockHeader;

    u32 seqOffset;
    u32 seqArcOffset;
    u32 bankOffset;
    u32 waveArcOffset;
    u32 playerInfoOffset;
    u32 groupInfoOffset;
    u32 strmPlayerInfoOffset;
    u32 strmOffset;
} NNSSndArcInfo;

typedef struct NNSSndArcSymbol {
    struct SNDBinaryBlockHeader blockHeader;

    u32 seqOffset;
    u32 seqArcOffset;
    u32 bankOffset;
    u32 waveArcOffset;
    u32 playerOffset;
    u32 groupOffset;
    u32 strmPlayerOffset;
    u32 strmOffset;
} NNSSndArcSymbol;

typedef struct NNSSndArcHeader {
    struct SNDBinaryFileHeader fileHeader;
    u32 symbolDataOffset;
    u32 symbolDataSize;
    u32 infoOffset;
    u32 infoSize;
    u32 fatOffset;
    u32 fatSize;
    u32 fileImageOffset;
    u32 fileImageSize;
} NNSSndArcHeader;

#ifdef _MSC_VER
#pragma warning( default : 4200 )
#endif

typedef struct NNSSndArc {
    NNSSndArcHeader header;
    BOOL file_open;
#ifndef NNS_FROM_TOOL
    FSFile file;
    FSFileID fileId;
#endif
    struct NNSSndArcFat * fat;
    struct NNSSndArcSymbol * symbol;
    struct NNSSndArcInfo * info;
    s32 loadBlockSize;
} NNSSndArc;

#ifndef NNS_FROM_TOOL
void NNS_SndArcInit(NNSSndArc * arc, const char * filePath, NNSSndHeapHandle heap, BOOL symbolLoadFlag);
BOOL NNS_SndArcInitWithResult(NNSSndArc * arc, const char * filePath, NNSSndHeapHandle heap, BOOL symbolLoadFlag);
BOOL NNS_SndArcSetup(NNSSndArc * arc, NNSSndHeapHandle heap, BOOL symbolLoadFlag);
#endif
void NNS_SndArcInitOnMemory(NNSSndArc * arc, void * data);

NNSSndArc * NNS_SndArcSetCurrent(NNSSndArc * arc);
NNSSndArc * NNS_SndArcGetCurrent(void);

const NNSSndSeqParam * NNS_SndArcGetSeqParam(int seqNo);
const NNSSndSeqParam * NNS_SndArcGetSeqArcParam(int seqArcNo, int index);

const NNSSndArcSeqInfo * NNS_SndArcGetSeqInfo(int seqNo);
const NNSSndArcSeqArcInfo * NNS_SndArcGetSeqArcInfo(int seqNo);
const NNSSndArcBankInfo * NNS_SndArcGetBankInfo(int bankNo);
const NNSSndArcWaveArcInfo * NNS_SndArcGetWaveArcInfo(int waveArcNo);
const NNSSndArcStrmInfo * NNS_SndArcGetStrmInfo(int strmNo);
const NNSSndArcPlayerInfo * NNS_SndArcGetPlayerInfo(int playerNo);
const NNSSndArcGroupInfo * NNS_SndArcGetGroupInfo(int groupNo);
const NNSSndArcStrmPlayerInfo * NNS_SndArcGetStrmPlayerInfo(int playerNo);

u32 NNS_SndArcGetSeqCount(void);
u32 NNS_SndArcGetSeqArcCount(void);
u32 NNS_SndArcGetBankCount(void);
u32 NNS_SndArcGetWaveArcCount(void);
u32 NNS_SndArcGetStrmCount(void);
u32 NNS_SndArcGetGroupCount(void);
u32 NNS_SndArcGetSeqArcSeqCount(int seqArcNo);

#ifndef NNS_FROM_TOOL
s32 NNS_SndArcReadFile(u32 fileId, void * buffer, s32 size, s32 offset);
FSFileID NNS_SndArcGetFileID(void);
#endif
u32 NNS_SndArcGetFileSize(u32 fileId);
u32 NNS_SndArcGetFileOffset(u32 fileId);
void * NNS_SndArcGetFileAddress(u32 fileId);
void NNS_SndArcSetFileAddress(u32 fileId, void * address);
void NNS_SndArcSetLoadBlockSize(s32 loadBlockSize);
s32 NNS_SndArcGetLoadBlockSize();

const char * NNS_SndArcGetSeqSymbol(int seqNo);
const char * NNS_SndArcGetSeqArcSymbol(int seqArcNo);
const char * NNS_SndArcGetSeqArcIdxSymbol(int seqArcNo, int index);
const char * NNS_SndArcGetBankSymbol(int bankNo);
const char * NNS_SndArcGetWaveArcSymbol(int waveArcNo);
const char * NNS_SndArcGetStrmSymbol(int strmNo);
const char * NNS_SndArcGetGroupSymbol(int groupNo);

#ifdef __cplusplus
}
#endif

#endif
