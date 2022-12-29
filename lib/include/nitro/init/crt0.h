#ifndef NITRO_INIT_CRT0_H_
#define NITRO_INIT_CRT0_H_

#ifdef __cplusplus
extern "C" {
#endif

#ifdef SDK_ARM9
void NitroMain(void);
void NitroStartUp(void);
#else
void NitroSpMain(void);
void NitroSpStartUp(void);
#define NitroMain(x) NitroSpMain(x)
#define NitroStartUp(x) NitroSpStartUp(x)
#endif

#ifdef __cplusplus
}
#endif

#endif
