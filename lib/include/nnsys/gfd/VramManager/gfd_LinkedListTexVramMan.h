#ifndef NNS_GFD_LINKEDLISTTEXVRAMMAN_H_
#define NNS_GFD_LINKEDLISTTEXVRAMMAN_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>
#include <nnsys/gfd/VramManager/gfd_VramMan.h>
#include <nnsys/gfd/VramManager/gfd_TexVramMan_Types.h>
#include <nnsys/gfd/VramManager/gfd_LinkedListVramMan.h>

void NNS_GfdDumpLnkTexVramManager();
void NNS_GfdDumpLnkTexVramManagerEx(
    NNSGfdLnkDumpCallBack pFuncForNrm,
    NNSGfdLnkDumpCallBack pFuncFor4x4,
    void * pUserData);

u32 NNS_GfdGetLnkTexVramManagerWorkSize(u32 numMemBlk);

void NNS_GfdInitLnkTexVramManager
(
    u32 szByte,
    u32 szByteFor4x4,
    void * pManagementWork,
    u32 szByteManagementWork,
    BOOL useAsDefault
);

NNSGfdTexKey NNS_GfdAllocLnkTexVram(u32 szByte, BOOL is4x4comp, u32 opt);
int NNS_GfdFreeLnkTexVram(NNSGfdTexKey memKey);
void NNS_GfdResetLnkTexVramState(void);

#ifdef __cplusplus
}
#endif

#endif
