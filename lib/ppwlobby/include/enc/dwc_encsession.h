#ifndef DWC_ENC_H
#define DWC_ENC_H

#ifdef __cplusplus
extern "C" {
#endif

#include "nitro/types.h"

typedef BOOL (*UnkCallback)(char *, int);

enum UnkEnum_ov66_02258338 {
    UnkEnum_ov66_02258338_0 = 0,
    UnkEnum_ov66_02258338_1
};

void DWCi_EncSessionInitialize(enum UnkEnum_ov66_02258338 param0, const char *param1);
int DWCi_EncSessionProcess(void);
void DWCi_EncSessionShutdown(void);
char *DWCi_EncSessionGetResponse(u32 *param0);
int DWCi_EncSessionGetAsync(const char *param0, int param1, void *param2, u32 param3, UnkCallback param4);
int DWCi_EncSessionGetReuseHashAsync(const char *param0, int param1, void *param2, u32 param3, UnkCallback param4);

#ifdef __cplusplus
}
#endif

#endif // DWC_ENC_H
