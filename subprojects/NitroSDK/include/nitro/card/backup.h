#if !defined(NITRO_CARD_BACKUP_H_)
#define NITRO_CARD_BACKUP_H_

#include <nitro/types.h>

#ifdef __cplusplus
extern "C"
{
#endif

void CARD_LockBackup(u16 lock_id);

void CARD_UnlockBackup(u16 lock_id);

BOOL CARD_TryWaitBackupAsync(void);

BOOL CARD_WaitBackupAsync(void);

void CARD_CancelBackupAsync(void);

BOOL CARDi_RequestStreamCommand(u32 src, u32 dst, u32 len,
                                MIDmaCallback callback, void * arg, BOOL is_async,
                                CARDRequest req_type, int req_retry, CARDRequestMode req_mode);

BOOL CARDi_RequestWriteSectorCommand(u32 src, u32 dst, u32 len, BOOL verify,
                                     MIDmaCallback callback, void * arg, BOOL is_async);

SDK_INLINE BOOL CARDi_ReadBackup (u32 src, void * dst, u32 len,
                                  MIDmaCallback callback, void * arg, BOOL is_async)
{
    return CARDi_RequestStreamCommand((u32)src, (u32)dst, len,
                                      callback, arg, is_async,
                                      CARD_REQ_READ_BACKUP, 1, CARD_REQUEST_MODE_RECV);
}

SDK_INLINE BOOL CARDi_ProgramBackup (u32 dst, const void * src, u32 len,
                                     MIDmaCallback callback, void * arg, BOOL is_async)
{
    return CARDi_RequestStreamCommand((u32)src, (u32)dst, len, callback, arg, is_async,
                                      CARD_REQ_PROGRAM_BACKUP, CARD_RETRY_COUNT_MAX,
                                      CARD_REQUEST_MODE_SEND);
}

SDK_INLINE BOOL CARDi_WriteBackup (u32 dst, const void * src, u32 len,
                                   MIDmaCallback callback, void * arg, BOOL is_async)
{
    return CARDi_RequestStreamCommand((u32)src, (u32)dst, len, callback, arg, is_async,
                                      CARD_REQ_WRITE_BACKUP, CARD_RETRY_COUNT_MAX,
                                      CARD_REQUEST_MODE_SEND);
}

SDK_INLINE BOOL CARDi_VerifyBackup (u32 dst, const void * src, u32 len,
                                    MIDmaCallback callback, void * arg, BOOL is_async)
{
    return CARDi_RequestStreamCommand((u32)src, (u32)dst, len, callback, arg, is_async,
                                      CARD_REQ_VERIFY_BACKUP, 1, CARD_REQUEST_MODE_SEND);
}

SDK_INLINE BOOL CARDi_ProgramAndVerifyBackup (u32 dst, const void * src, u32 len,
                                              MIDmaCallback callback, void * arg, BOOL is_async)
{
    return CARDi_RequestStreamCommand((u32)src, (u32)dst, len, callback, arg, is_async,
                                      CARD_REQ_PROGRAM_BACKUP, CARD_RETRY_COUNT_MAX,
                                      CARD_REQUEST_MODE_SEND_VERIFY);
}

SDK_INLINE BOOL CARDi_WriteAndVerifyBackup (u32 dst, const void * src, u32 len,
                                            MIDmaCallback callback, void * arg, BOOL is_async)
{
    return CARDi_RequestStreamCommand((u32)src, (u32)dst, len, callback, arg, is_async,
                                      CARD_REQ_WRITE_BACKUP, CARD_RETRY_COUNT_MAX,
                                      CARD_REQUEST_MODE_SEND_VERIFY);
}

SDK_INLINE BOOL CARDi_EraseBackupSector (u32 dst, u32 len,
                                         MIDmaCallback callback, void * arg, BOOL is_async)
{
    return CARDi_RequestStreamCommand(0, (u32)dst, len, callback, arg, is_async,
                                      CARD_REQ_ERASE_SECTOR_BACKUP, CARD_RETRY_COUNT_MAX,
                                      CARD_REQUEST_MODE_SPECIAL);
}

SDK_INLINE BOOL CARDi_EraseBackupSubSector (u32 dst, u32 len,
                                            MIDmaCallback callback, void * arg, BOOL is_async)
{
    return CARDi_RequestStreamCommand(0, (u32)dst, len, callback, arg, is_async,
                                      CARD_REQ_ERASE_SUBSECTOR_BACKUP, CARD_RETRY_COUNT_MAX,
                                      CARD_REQUEST_MODE_SPECIAL);
}

SDK_INLINE BOOL CARDi_EraseBackupChip (MIDmaCallback callback, void * arg, BOOL is_async)
{
    return CARDi_RequestStreamCommand(0, 0, 0, callback, arg, is_async,
                                      CARD_REQ_ERASE_CHIP_BACKUP, 1, CARD_REQUEST_MODE_SPECIAL);
}

SDK_INLINE void CARD_ReadBackupAsync (u32 src, void * dst, u32 len, MIDmaCallback callback, void * arg)
{
    (void)CARDi_ReadBackup(src, dst, len, callback, arg, TRUE);
}

SDK_INLINE BOOL CARD_ReadBackup (u32 src, void * dst, u32 len)
{
    return CARDi_ReadBackup(src, dst, len, NULL, NULL, FALSE);
}

SDK_INLINE void CARD_ProgramBackupAsync (u32 dst, const void * src, u32 len,
                                         MIDmaCallback callback, void * arg)
{
    (void)CARDi_ProgramBackup(dst, src, len, callback, arg, TRUE);
}

SDK_INLINE BOOL CARD_ProgramBackup (u32 dst, const void * src, u32 len)
{
    return CARDi_ProgramBackup(dst, src, len, NULL, NULL, FALSE);
}

SDK_INLINE void CARD_WriteBackupAsync (u32 dst, const void * src, u32 len,
                                       MIDmaCallback callback, void * arg)
{
    (void)CARDi_WriteBackup(dst, src, len, callback, arg, TRUE);
}

SDK_INLINE BOOL CARD_WriteBackup (u32 dst, const void * src, u32 len)
{
    return CARDi_WriteBackup(dst, src, len, NULL, NULL, FALSE);
}

SDK_INLINE void CARD_VerifyBackupAsync (u32 dst, const void * src, u32 len,
                                        MIDmaCallback callback, void * arg)
{
    (void)CARDi_VerifyBackup(dst, src, len, callback, arg, TRUE);
}

SDK_INLINE BOOL CARD_VerifyBackup (u32 dst, const void * src, u32 len)
{
    return CARDi_VerifyBackup(dst, src, len, NULL, NULL, FALSE);
}

SDK_INLINE void CARD_ProgramAndVerifyBackupAsync (u32 dst, const void * src, u32 len,
                                                  MIDmaCallback callback, void * arg)
{
    (void)CARDi_ProgramAndVerifyBackup(dst, src, len, callback, arg, TRUE);
}

SDK_INLINE BOOL CARD_ProgramAndVerifyBackup (u32 dst, const void * src, u32 len)
{
    return CARDi_ProgramAndVerifyBackup(dst, src, len, NULL, NULL, FALSE);
}

SDK_INLINE void CARD_WriteAndVerifyBackupAsync (u32 dst, const void * src, u32 len,
                                                MIDmaCallback callback, void * arg)
{
    (void)CARDi_WriteAndVerifyBackup(dst, src, len, callback, arg, TRUE);
}

SDK_INLINE BOOL CARD_WriteAndVerifyBackup (u32 dst, const void * src, u32 len)
{
    return CARDi_WriteAndVerifyBackup(dst, src, len, NULL, NULL, FALSE);
}

SDK_INLINE void CARD_EraseBackupSectorAsync (u32 dst, u32 len, MIDmaCallback callback, void * arg)
{
    (void)CARDi_EraseBackupSector(dst, len, callback, arg, TRUE);
}

SDK_INLINE BOOL CARD_EraseBackupSector (u32 dst, u32 len)
{
    return CARDi_EraseBackupSector(dst, len, NULL, NULL, FALSE);
}

SDK_INLINE void CARD_EraseBackupSubSectorAsync (u32 dst, u32 len, MIDmaCallback callback, void * arg)
{
    (void)CARDi_EraseBackupSubSector(dst, len, callback, arg, TRUE);
}

SDK_INLINE BOOL CARD_EraseBackupSubSector (u32 dst, u32 len)
{
    return CARDi_EraseBackupSubSector(dst, len, NULL, NULL, FALSE);
}

SDK_INLINE void CARD_EraseBackupChipAsync (MIDmaCallback callback, void * arg)
{
    (void)CARDi_EraseBackupChip(callback, arg, TRUE);
}

SDK_INLINE BOOL CARD_EraseBackupChip (void)
{
    return CARDi_EraseBackupChip(NULL, NULL, FALSE);
}

SDK_INLINE void CARD_WriteBackupSectorAsync (u32 dst, const void * src, u32 len,
                                             MIDmaCallback callback, void * arg)
{
    (void)CARDi_RequestWriteSectorCommand((u32)src, dst, len, FALSE, callback, arg, TRUE);
}

SDK_INLINE BOOL CARD_WriteBackupSector (u32 dst, const void * src, u32 len)
{
    return CARDi_RequestWriteSectorCommand((u32)src, dst, len, FALSE, NULL, NULL, FALSE);
}

SDK_INLINE void CARD_WriteAndVerifyBackupSectorAsync (u32 dst, const void * src, u32 len,
                                                      MIDmaCallback callback, void * arg)
{
    (void)CARDi_RequestWriteSectorCommand((u32)src, dst, len, TRUE, callback, arg, TRUE);
}

SDK_INLINE BOOL CARD_WriteAndVerifyBackupSector (u32 dst, const void * src, u32 len)
{
    return CARDi_RequestWriteSectorCommand((u32)src, dst, len, TRUE, NULL, NULL, FALSE);
}

int CARDi_AccessStatus(CARDRequest command, u8 value);

SDK_INLINE int CARDi_ReadStatus (void)
{
    return CARDi_AccessStatus(CARD_REQ_READ_STATUS, 0);
}

SDK_INLINE BOOL CARDi_WriteStatus (u8 value)
{
    return (CARDi_AccessStatus(CARD_REQ_WRITE_STATUS, value) >= 0);
}

#ifdef __cplusplus
}
#endif

#endif
