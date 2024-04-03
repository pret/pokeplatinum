#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "core_sys.h"

#include "struct_decls/struct_020067E8_decl.h"

#include "overlay097/struct_ov97_0222D04C.h"

#include "unk_020067E8.h"
#include "heap.h"
#include "unk_02033200.h"
#include "unk_020366A0.h"
#include "unk_020393C8.h"
#include "unk_02099550.h"
#include "overlay004/ov4_021D0D80.h"
#include "overlay097/ov97_0222D30C.h"

static BOOL Unk_ov97_02240400;
static int Unk_ov97_0224040C;
static BOOL Unk_ov97_02240404;
static Unk_ov97_02240408;
static DWCNdFileInfo Unk_ov97_02240414[10];

static void ov97_02238E88(void);
int ov97_02238EAC(OverlayManager * param0, int * param1);

static void * ov97_02238D74 (DWCAllocType param0, u32 param1, int param2)
{
#pragma unused(param0, param2)
    void * v0;
    u32 * v1;

    param1 = (((param1 + sizeof(void *)) + 32) & ~31) + 32;

    v0 = Heap_AllocFromHeap(86, param1);
    v1 = (u32 *)(((u32)v0 + 32) & ~31);

    v1--;
    *v1 = (u32)v0;
    v1++;

    return v1;
}

static void ov97_02238D94 (DWCAllocType param0, void * param1, u32 param2)
{
#pragma unused( param0, param2 )
    u32 * v0;

    if (!param1) {
        return;
    }

    v0 = (u32 *)((u32)param1 - 4);
    Heap_FreeToHeap((void *)*v0);
}

static volatile BOOL Unk_ov97_02240410;

static int ov97_02238DA4 (UnkStruct_ov97_0222D04C * param0)
{
    DWCError v0;
    DWCErrorType v1;
    int v2;

    v0 = DWC_GetLastErrorEx(&v2, &v1);

    param0->unk_26CC = ov4_021D1F3C(-v2, v1);
    param0->unk_26D0 = -v2;
    param0->unk_26D4 = v1;
    param0->unk_26C8 = 1;

    Unk_ov97_02240410 = 1;
    param0->unk_26DC = NULL;

    ov97_0222D344(param0, 0);
    return 4111;
}

static BOOL ov97_02238DF8 (UnkStruct_ov97_0222D04C * param0)
{
    DWCApInfo v0;
    DWCError v1;
    int v2, v3;

    switch (DWC_GetInetStatus()) {
    case DWC_CONNECTINET_STATE_ERROR:
        break;
    case DWC_CONNECTINET_STATE_FATAL_ERROR:
        break;
    case DWC_CONNECTINET_STATE_CONNECTED:

        if (DWC_GetApInfo(&v0) == 1) {
            (void)0;
        } else {
            (void)0;
        }

        return 1;
        break;
    }

    return 0;
}

static void ov97_02238E20 (UnkStruct_ov97_0222D04C * param0, int * param1, int param2)
{
    Unk_ov97_02240400 = 0;
    Unk_ov97_0224040C = DWC_ND_ERROR_NONE;
    param0->unk_16B0 = param2;
    *param1 = 4114;
}

static void ov97_02238E44 (UnkStruct_ov97_0222D04C * param0, int param1, int * param2, int param3, int param4)
{
    Unk_ov97_02240404 = 0;
    Unk_ov97_02240408 = param1;
    param0->unk_16B0 = param3;
    *param2 = 4115;

    if (!DWC_NdCleanupAsync(ov97_02238E88)) {
        *param2 = param4;
    }
}

static void ov97_02238E78 (DWCNdCallbackReason param0, DWCNdError param1, int param2)
{
    switch (param0) {
    case DWC_ND_CBREASON_GETFILELISTNUM:
        break;
    case DWC_ND_CBREASON_GETFILELIST:
        break;
    case DWC_ND_CBREASON_GETFILE:
        break;
    case DWC_ND_CBREASON_INITIALIZE:
        break;
    }

    switch (param1) {
    case DWC_ND_ERROR_NONE:
        break;
    case DWC_ND_ERROR_ALLOC:
        break;
    case DWC_ND_ERROR_BUSY:
        break;
    case DWC_ND_ERROR_HTTP:
        if (param0 == DWC_ND_CBREASON_GETFILELISTNUM) {
            (void)0;
        }
        break;
    case DWC_ND_ERROR_BUFFULL:
        break;
    case DWC_ND_ERROR_DLSERVER:
        break;
    case DWC_ND_ERROR_CANCELED:
        break;
    }

    Unk_ov97_02240400 = 1;
    Unk_ov97_0224040C = param1;
}

static void ov97_02238E88 (void)
{
    switch (Unk_ov97_02240408) {
    case 1:
        break;
    case 2:
        break;
    case 3:
        break;
    }

    Unk_ov97_02240404 = 1;
}

static void ov97_02238E94 (void)
{
    sub_02039794();
    sub_02038514();
    sub_020995C4();
    sub_02099560();
    sub_020334CC();
}

int ov97_02238EAC (OverlayManager * param0, int * param1)
{
    int v0;
    DWCNasLoginState v1;
    UnkStruct_ov97_0222D04C * v2 = sub_0200682C(param0);

    if (v2->unk_26DC) {
        if (v2->unk_26DC() == 1) {
            *param1 = ov97_02238DA4(v2);
        }
    }

    switch (*param1) {
    case 4096:
        sub_02033478();
        sub_02099550();
        sub_020995B4();
        *param1 = 4097;
        break;
    case 4097:
        if (sub_020334A4()) {
            DWC_SetMemFunc(ov97_02238D74, ov97_02238D94);
            sub_020384C0(v2->unk_04);
            *param1 = 4098;
        }
        break;
    case 4098:
        DWC_InitInetEx(&v2->unk_164C, 2, 1, 20);
        DWC_SetAuthServer((DWC_CONNECTINET_AUTH_RELEASE));
        DWC_ConnectInetAsync();
        sub_02039734();
        *param1 = 4099;
        v2->unk_26D8 = 0;
        break;
    case 4099:
        DWC_ProcessInet();

        if (DWC_CheckInet() == 0) {
            (void)0;
        } else {
            if (ov97_02238DF8(v2) == 1) {
                if (v2->unk_26D8 == 1) {
                    Unk_ov97_02240408 = 3;
                    *param1 = 4109;
                } else {
                    *param1 = 4100;
                }
            } else {
                *param1 = ov97_02238DA4(v2);
            }
        }

        if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            v2->unk_26D8 = 1;
        }
        break;
    case 4100:
        if (DWC_NASLoginAsync() == 0) {
            *param1 = ov97_02238DA4(v2);
        } else {
            *param1 = 4101;
        }
        break;
    case 4101:
        v1 = DWC_NASLoginProcess();

        if (v1 == DWC_NASLOGIN_STATE_SUCCESS) {
            *param1 = 4102;
            v2->unk_26DC = DWC_UpdateConnection;
        } else if (v1 == DWC_NASLOGIN_STATE_ERROR) {
            *param1 = ov97_02238DA4(v2);
            DWC_CleanupInet();
        } else if (v1 == DWC_NASLOGIN_STATE_CANCELED) {
            Unk_ov97_02240408 = 3;
            *param1 = 4109;
        }

        if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            DWC_NASLoginAbort();
        }
        break;
    case 4102:
        if (DWC_NdInitAsync(ov97_02238E78, "CPUE", "DwuCXmdJfPVLBnKA") == 0) {
            *param1 = ov97_02238DA4(v2);
            break;
        }

        ov97_02238E20(v2, param1, 4103);
        break;
    case 4103:
        if (v2->unk_26D8 == 1) {
            ov97_02238E44(v2, 3, param1, 4108, 4108);
            break;
        }

        if (DWC_NdSetAttr("", "", "") == 0) {
            *param1 = ov97_02238DA4(v2);
            break;
        }

        *param1 = 4104;
        break;
    case 4104:
        if (DWC_NdGetFileListNumAsync(&v2->unk_16B4) == 0) {
            *param1 = ov97_02238DA4(v2);
            break;
        }

        ov97_02238E20(v2, param1, 4105);
        break;
    case 4105:
        if (v2->unk_16B4 != 1) {
            ov97_02238E44(v2, 2, param1, 4109, 4109);
        } else {
            if (DWC_NdGetFileListAsync(Unk_ov97_02240414, 0, 10) == 0) {
                *param1 = ov97_02238DA4(v2);
                break;
            }

            ov97_02238E20(v2, param1, 4106);
        }
        break;
    case 4106:
        if (DWC_NdGetFileAsync(&Unk_ov97_02240414[0], v2->unk_16B8, 4096) == 0) {
            *param1 = ov97_02238DA4(v2);
            break;
        }

        *param1 = 4107;
        v2->unk_26C4 = 0;
        break;
    case 4107:
        if (Unk_ov97_02240400 == 0) {
            if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
                ov97_02238E44(v2, 3, param1, 4108, 4108);
            } else {
                if (DWC_NdGetProgress(&v2->unk_26BC, &v2->unk_26C0) == 1) {
                    if (v2->unk_26C4 != (v2->unk_26BC * 100) / v2->unk_26C0) {
                        v2->unk_26C4 = (v2->unk_26BC * 100) / v2->unk_26C0;
                    }
                }
            }
        } else {
            if (v2->unk_26D8 == 0) {
                ov97_02238E44(v2, 1, param1, 4109, 4109);
            } else {
                ov97_02238E44(v2, 3, param1, 4109, 4109);
            }
        }
        break;
    case 4108:
        if (DWC_NdCancelAsync() == 0) {
            *param1 = 4109;
        } else {
            v2->unk_26DC = NULL;
            ov97_02238E94();
            return Unk_ov97_02240408;
        }
        break;
    case 4109:
        if (DWC_CleanupInetAsync() == 1) {
            v2->unk_26DC = NULL;
            ov97_02238E94();
            return Unk_ov97_02240408;
        }
        break;
    case 4110:
        break;
    case 4111:
        if (Unk_ov97_02240410 == 1) {
            ov97_0222E13C(v2);

            if ((v2->unk_26D4 == DWC_ETYPE_SHUTDOWN_ND) || (v2->unk_26D4 == DWC_ETYPE_DISCONNECT)) {
                ov97_02238E44(v2, 3, param1, 4113, 4112);
            } else {
                *param1 = 4113;
            }
        }
        break;
    case 4113:
        DWC_CleanupInet();
        *param1 = 4112;
        break;
    case 4112:
        if (gCoreSys.pressedKeys & PAD_BUTTON_A) {
            v2->unk_26DC = NULL;
            DWC_ClearError();
            ov97_02238E94();

            return 4;
        }
        break;
    case 4114:
        if (Unk_ov97_02240400 == 1) {
            Unk_ov97_02240400 = 0;

            if (Unk_ov97_0224040C != DWC_ND_ERROR_NONE) {
                *param1 = ov97_02238DA4(v2);
            } else {
                *param1 = v2->unk_16B0;
            }
        } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            v2->unk_26D8 = 1;
        }
        break;
    case 4115:
        if (Unk_ov97_02240404 == 1) {
            Unk_ov97_02240404 = 0;
            *param1 = v2->unk_16B0;
        } else if (gCoreSys.pressedKeys & PAD_BUTTON_B) {
            v2->unk_26D8 = 1;
        }

        break;
    }

    return 0;
}
