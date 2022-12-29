#ifndef NNS_GFD_FRAMEPLTTVRAMMAN_H_
#define NNS_GFD_FRAMEPLTTVRAMMAN_H_

#ifdef __cplusplus
extern "C" {
#endif

#include <nitro.h>
#include <nnsys/gfd/VramManager/gfd_PlttVramMan_Types.h>

typedef struct NNSGfdFrmPlttVramState {
    u32 address[2];
} NNSGfdFrmPlttVramState;

typedef void (* NNSGfdFrmPlttVramDebugDumpCallBack)(u32 loAddr, u32 hiAddr, u32 szFree, u32 szTotal);

void NNS_GfdDumpFrmPlttVramManager();
void NNS_GfdDumpFrmPlttVramManagerEx(NNSGfdFrmPlttVramDebugDumpCallBack pFunc);

void NNS_GfdInitFrmPlttVramManager(u32 szByte, BOOL useAsDefault);

NNSGfdPlttKey NNS_GfdAllocFrmPlttVram(u32 szByte, BOOL b4Pltt, u32 bAllocFromLo);
int NNS_GfdFreeFrmPlttVram(NNSGfdPlttKey plttKey);

void NNS_GfdGetFrmPlttVramState(NNSGfdFrmPlttVramState * pState);
void NNS_GfdSetFrmPlttVramState(const NNSGfdFrmPlttVramState * pState);
void NNS_GfdResetFrmPlttVramState();

#ifdef __cplusplus
}
#endif

#endif
