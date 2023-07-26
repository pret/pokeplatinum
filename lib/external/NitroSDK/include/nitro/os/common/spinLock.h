#ifndef NITRO_OS_SPINLOCK_H_
#define NITRO_OS_SPINLOCK_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>

#define OS_UNLOCK_ID 0
#define OS_MAINP_LOCKED_FLAG 0x40
#define OS_MAINP_LOCK_ID_START 0x40
#define OS_MAINP_LOCK_ID_END 0x6f
#define OS_MAINP_DBG_LOCK_ID 0x70
#define OS_MAINP_SYSTEM_LOCK_ID 0x7f
#define OS_SUBP_LOCKED_FLAG 0x80
#define OS_SUBP_LOCK_ID_START 0x80
#define OS_SUBP_LOCK_ID_END 0xaf
#define OS_SUBP_DBG_LOCK_ID 0xb0
#define OS_SUBP_SYSTEM_LOCK_ID 0xbf

#define OS_LOCK_SUCCESS 0
#define OS_LOCK_ERROR (-1)

#define OS_UNLOCK_SUCCESS 0
#define OS_UNLOCK_ERROR (-2)

#define OS_LOCK_FREE 0

#define OS_LOCK_ID_ERROR (-3)

typedef volatile struct OSLockWord {
    u32 lockFlag;
    u16 ownerID;
    u16 extension;
} OSLockWord;

void OS_InitLock(void);

s32 OS_LockByWord(u16 lockID, OSLockWord * lockp, void (* ctrlFuncp)(void));
s32 OS_LockCartridge(u16 lockID);
s32 OS_LockCard(u16 lockID);

s32 OS_UnlockByWord(u16 lockID, OSLockWord * lockp, void (* ctrlFuncp)(void));
s32 OS_UnlockCartridge(u16 lockID);
s32 OS_UnlockCard(u16 lockID);

s32 OS_UnLockByWord(u16 lockID, OSLockWord * lockp, void (* ctrlFuncp)(void));
s32 OS_UnLockCartridge(u16 lockID);
s32 OS_UnLockCard(u16 lockID);

s32 OS_TryLockByWord(u16 lockID, OSLockWord * lockp, void (* crtlFuncp)(void));
s32 OS_TryLockCartridge(u16 lockID);
s32 OS_TryLockCard(u16 lockID);

u16 OS_ReadOwnerOfLockWord(OSLockWord * lockp);
#define OS_ReadOwnerOfLockCartridge() OS_ReadOwnerOfLockWord((OSLockWord *)HW_CTRDG_LOCK_BUF)
#define OS_ReadOwnerOfLockCard() OS_ReadOwnerOfLockWord((OSLockWord *)HW_CARD_LOCK_BUF)

s32 OS_GetLockID(void);

void OS_ReleaseLockID(u16 lockID);

#ifdef __cplusplus
}
#endif

#endif
