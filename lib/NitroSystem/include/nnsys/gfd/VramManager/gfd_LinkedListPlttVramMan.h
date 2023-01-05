#ifndef NNS_GFD_LINKEDLISTPLTTVRAMMAN_H_
#define NNS_GFD_LINKEDLISTPLTTVRAMMAN_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>
#include <nnsys/gfd/VramManager/gfd_VramMan.h>
#include <nnsys/gfd/VramManager/gfd_PlttVramMan_Types.h>
#include <nnsys/gfd/VramManager/gfd_LinkedListVramMan.h>

void NNS_GfdDumpLnkPlttVramManager();
void NNS_GfdDumpLnkPlttVramManagerEx(
    NNSGfdLnkDumpCallBack pFunc,
    void * pUserData);

u32 NNS_GfdGetLnkPlttVramManagerWorkSize(u32 numMemBlk);

void NNS_GfdInitLnkPlttVramManager
(
    u32 szByte,
    void * pManagementWork,
    u32 szByteManagementWork,
    BOOL useAsDefault
);

NNSGfdPlttKey NNS_GfdAllocLnkPlttVram(u32 szByte, BOOL b4Pltt, u32 opt);
int NNS_GfdFreeLnkPlttVram(NNSGfdPlttKey plttKey);
void NNS_GfdResetLnkPlttVramState(void);

#ifdef __cplusplus
}
#endif

#endif
