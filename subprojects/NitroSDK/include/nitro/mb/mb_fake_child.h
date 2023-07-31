#ifndef NITRO_MB_MB_FAKE_CHILD_H_
#define NITRO_MB_MB_FAKE_CHILD_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro/types.h>
#include <nitro/mb/mb.h>

#define MB_FAKE_WORK_SIZE (0x5f20)

enum {
    MB_FAKESCAN_PARENT_FOUND,
    MB_FAKESCAN_PARENT_LOST,
    MB_FAKESCAN_API_ERROR,
    MB_FAKESCAN_END_SCAN,
    MB_FAKESCAN_PARENT_BEACON
};

typedef struct {
    u16 index;
    u16 padding;
    MBGameInfo * gameInfo;
    WMBssDesc * bssDesc;
} MBFakeScanCallback;

typedef struct {
    u16 apiid;
    u16 errcode;
} MBFakeScanErrorCallback;

typedef void (* MBFakeScanCallbackFunc) (u16 type, void * arg);
typedef BOOL (* MBFakeCompareGGIDCallbackFunc) (WMStartScanCallback * arg, u32 defaultGGID);

void MB_FakeInit(void * buf, const MBUserInfo * user);
void MB_FakeEnd(void);
u32 MB_FakeGetWorkSize(void);
void MB_FakeSetCStateCallback(MBCommCStateCallbackFunc callback);
void MB_FakeStartScanParent(MBFakeScanCallbackFunc callback, u32 ggid);
void MB_FakeEndScan(void);
BOOL MB_FakeEntryToParent(u16 index);
BOOL MB_FakeGetParentGameInfo(u16 index, MBGameInfo * pGameInfo);
BOOL MB_FakeGetParentBssDesc(u16 index, WMBssDesc * pBssDesc);
BOOL MB_FakeReadParentBssDesc(u16 index, WMBssDesc * pBssDesc, u16 parent_max_size,
                              u16 child_max_size, BOOL ks_flag, BOOL cs_flag);
void MB_FakeSetVerboseScanCallback(WMCallbackFunc callback);
void MB_FakeSetCompareGGIDCallback(MBFakeCompareGGIDCallbackFunc callback);

#ifdef __cplusplus
}
#endif

#endif
