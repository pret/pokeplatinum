#if !defined(NITRO_MB_CACHE_H_)
#define NITRO_MB_CACHE_H_

#if defined(__cplusplus)
extern  "C"
{
#endif

#define MB_CACHE_INFO_MAX 4

#define MB_CACHE_STATE_EMPTY 0
#define MB_CACHE_STATE_BUSY 1
#define MB_CACHE_STATE_READY 2
#define MB_CACHE_STATE_LOCKED 3

typedef struct {
    u32 src;
    u32 len;
    u8 * ptr;
    u32 state;
} MBiCacheInfo;

typedef struct {
    u32 lifetime;
    u32 recent;
    MBiCacheInfo * p_list;
    u32 size;
    char arc_name[FS_ARCHIVE_NAME_LEN_MAX + 1];
    u32 arc_name_len;
    FSArchive * arc_pointer;
    u8 reserved[32 - FS_ARCHIVE_NAME_LEN_MAX - 1 - sizeof(u32) - sizeof(FSArchive *)];
    MBiCacheInfo list[MB_CACHE_INFO_MAX];
} MBiCacheList;

void MBi_InitCache(MBiCacheList * pl);
void MBi_AttachCacheBuffer(MBiCacheList * pl, u32 src, u32 len, void * ptr, u32 state);
BOOL MBi_ReadFromCache(MBiCacheList * pl, u32 src, void * dst, u32 len);
BOOL MBi_TryLoadCache(MBiCacheList * pl, u32 src, u32 len);

#if defined(__cplusplus)
}
#endif

#endif
