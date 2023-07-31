#ifndef NITRO_CARD_PULLOUT_H_
#define NITRO_CARD_PULLOUT_H_

#if defined(__cplusplus)
extern "C"
{
#endif

typedef BOOL (* CARDPulledOutCallback) (void);

void CARD_InitPulledOutCallback(void);

#ifdef SDK_ARM9
void CARD_SetPulledOutCallback(CARDPulledOutCallback callback);
#endif

#ifdef SDK_ARM9
void CARD_TerminateForPulledOut(void);
#endif

#ifdef SDK_ARM9
void CARD_PulledOutCallbackProc(void);
#endif

#ifdef SDK_ARM9
void CARD_CheckPulledOut(void);
#endif

BOOL CARD_IsPulledOut(void);

#ifdef SDK_ARM7
void CARD_CheckPullOut_Polling(void);
#endif

#if defined(__cplusplus)
}
#endif

#endif
