#ifndef DWC_ENC_H
#define DWC_ENC_H

#include "nitro/types.h"

typedef BOOL (*UnkCallback)(char *, int);

void DWCi_EncSessionInitialize(int param0, char *param1);
u32 DWCi_EncSessionProcess(void);
void DWCi_EncSessionShutdown(void);
char *DWCi_EncSessionGetResponse(int *param0);
void DWCi_EncSessionGetAsync(char *param0, int param1, int param2, int param3, UnkCallback param4);
void DWCi_EncSessionGetReuseHashAsync(char *param0, int param1, int param2, int param3, UnkCallback param4);

#endif // DWC_ENC_H
