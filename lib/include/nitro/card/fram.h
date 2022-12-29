#if !defined(NITRO_CARD_FRAM_H_)
#define NITRO_CARD_FRAM_H_

#include <nitro/types.h>
#include <nitro/card/common.h>
#include <nitro/card/backup.h>

#if defined(__cplusplus)
extern "C"
{
#endif

static inline BOOL CARD_IsBackupFram (void)
{
    const CARDBackupType t = CARD_GetCurrentBackupType();

    return (((t >> CARD_BACKUP_TYPE_DEVICE_SHIFT) &
             CARD_BACKUP_TYPE_DEVICE_MASK) == CARD_BACKUP_TYPE_DEVICE_FRAM);
}

static inline BOOL CARD_ReadFram (u32 src, void * dst, u32 len)
{
    return CARD_ReadBackup(src, dst, len);
}

static inline void CARD_ReadFramAsync (u32 src, void * dst, u32 len, MIDmaCallback callback,
                                       void * arg)
{
    CARD_ReadBackupAsync(src, dst, len, callback, arg);
}

static inline BOOL CARD_WriteFram (u32 dst, const void * src, u32 len)
{
    return CARD_ProgramBackup(dst, src, len);
}

static inline void CARD_WriteFramAsync (u32 dst, const void * src, u32 len,
                                        MIDmaCallback callback, void * arg)
{
    CARD_ProgramBackupAsync(dst, src, len, callback, arg);
}

static inline BOOL CARD_VerifyFram (u32 dst, const void * src, u32 len)
{
    return CARD_VerifyBackup(dst, src, len);
}

static inline void CARD_VerifyFramAsync (u32 dst, const void * src, u32 len,
                                         MIDmaCallback callback, void * arg)
{
    CARD_VerifyBackupAsync(dst, src, len, callback, arg);
}

static inline BOOL CARD_WriteAndVerifyFram (u32 dst, const void * src, u32 len)
{
    return CARD_ProgramAndVerifyBackup(dst, src, len);
}

static inline void CARD_WriteAndVerifyFramAsync (u32 dst, const void * src, u32 len,
                                                 MIDmaCallback callback, void * arg)
{
    CARD_ProgramAndVerifyBackupAsync(dst, src, len, callback, arg);
}

#if defined(__cplusplus)
}
#endif

#endif
