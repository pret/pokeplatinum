#if !defined(NITRO_CARD_FLASH_H_)
#define NITRO_CARD_FLASH_H_

#include <nitro/types.h>
#include <nitro/card/common.h>
#include <nitro/card/backup.h>

#ifdef __cplusplus
extern "C"
{
#endif

SDK_INLINE BOOL CARD_IsBackupFlash (void)
{
    const CARDBackupType t = CARD_GetCurrentBackupType();

    return (((t >> CARD_BACKUP_TYPE_DEVICE_SHIFT) &
             CARD_BACKUP_TYPE_DEVICE_MASK) == CARD_BACKUP_TYPE_DEVICE_FLASH);
}

SDK_INLINE BOOL CARD_ReadFlash (u32 src, void * dst, u32 len)
{
    return CARD_ReadBackup(src, dst, len);
}

SDK_INLINE void CARD_ReadFlashAsync (u32 src, void * dst, u32 len,
                                     MIDmaCallback callback, void * arg)
{
    CARD_ReadBackupAsync(src, dst, len, callback, arg);
}

SDK_INLINE BOOL CARD_WriteFlash (u32 dst, const void * src, u32 len)
{
    return CARD_WriteBackup(dst, src, len);
}

SDK_INLINE void CARD_WriteFlashAsync (u32 dst, const void * src, u32 len,
                                      MIDmaCallback callback, void * arg)
{
    CARD_WriteBackupAsync(dst, src, len, callback, arg);
}

SDK_INLINE BOOL CARD_VerifyFlash (u32 dst, const void * src, u32 len)
{
    return CARD_VerifyBackup(dst, src, len);
}

SDK_INLINE void CARD_VerifyFlashAsync (u32 dst, const void * src, u32 len,
                                       MIDmaCallback callback, void * arg)
{
    CARD_VerifyBackupAsync(dst, src, len, callback, arg);
}

SDK_INLINE BOOL CARD_WriteAndVerifyFlash (u32 dst, const void * src, u32 len)
{
    return CARD_WriteAndVerifyBackup(dst, src, len);
}

SDK_INLINE void CARD_WriteAndVerifyFlashAsync (u32 dst, const void * src, u32 len,
                                               MIDmaCallback callback, void * arg)
{
    CARD_WriteAndVerifyBackupAsync(dst, src, len, callback, arg);
}

SDK_INLINE BOOL CARD_EraseFlashSector (u32 dst, u32 len)
{
    return CARD_EraseBackupSector(dst, len);
}

SDK_INLINE void CARD_EraseFlashSectorAsync (u32 dst, u32 len,
                                            MIDmaCallback callback, void * arg)
{
    CARD_EraseBackupSectorAsync(dst, len, callback, arg);
}

SDK_INLINE BOOL CARD_ProgramFlash (u32 dst, const void * src, u32 len)
{
    return CARD_ProgramBackup(dst, src, len);
}

SDK_INLINE void CARD_ProgramFlashAsync (u32 dst, const void * src, u32 len,
                                        MIDmaCallback callback, void * arg)
{
    CARD_ProgramBackupAsync(dst, src, len, callback, arg);
}

SDK_INLINE BOOL CARD_ProgramAndVerifyFlash (u32 dst, const void * src, u32 len)
{
    return CARD_ProgramAndVerifyBackup(dst, src, len);
}

SDK_INLINE void CARD_ProgramAndVerifyFlashAsync (u32 dst, const void * src, u32 len,
                                                 MIDmaCallback callback, void * arg)
{
    CARD_ProgramAndVerifyBackupAsync(dst, src, len, callback, arg);
}

SDK_INLINE BOOL CARD_WriteFlashSector (u32 dst, const void * src, u32 len)
{
    return CARD_WriteBackupSector(dst, src, len);
}

SDK_INLINE void CARD_WriteFlashSectorAsync (u32 dst, const void * src, u32 len,
                                            MIDmaCallback callback, void * arg)
{
    CARD_WriteBackupSectorAsync(dst, src, len, callback, arg);
}

SDK_INLINE BOOL CARD_WriteAndVerifyFlashSector (u32 dst, const void * src, u32 len)
{
    return CARD_WriteAndVerifyBackupSector(dst, src, len);
}

SDK_INLINE void CARD_WriteAndVerifyFlashSectorAsync (u32 dst, const void * src, u32 len,
                                                     MIDmaCallback callback, void * arg)
{
    CARD_WriteAndVerifyBackupSectorAsync(dst, src, len, callback, arg);
}

#ifdef __cplusplus
}
#endif

#endif
