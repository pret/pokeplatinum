#include <dwc.h>
#include <gs/nonport.h>
#include <nitro/wm/common/wm.h>
#include <nitroWiFi/soc.h>
#include <string.h>

#include "gds.h"
#include "gds_internal.h"

u8 Unk_ov61_0222EAB0[0x800];

void *ov61_0222D498(u32 size)
{
    return DWC_Alloc(DWC_ALLOCTYPE_AUTH, size);
}

void ov61_0222D4AC(void *ptr)
{
    if (ptr == NULL) {
        return;
    }

    DWC_Free(DWC_ALLOCTYPE_AUTH, ptr, 0);
}

void ov61_0222D4C8(void)
{
    OS_LockMutex(&Unk_ov61_0222E764.unk_334);
}

void ov61_0222D4DC(void)
{
    OS_UnlockMutex(&Unk_ov61_0222E764.unk_334);
}

int ov61_0222D4F0(void)
{
    OS_InitMutex(&Unk_ov61_0222E764.unk_334);
    return 1;
}

int ov61_0222D508(void)
{
    return 1;
}

int ov61_0222D510(void)
{
    if (!OS_IsTickAvailable()) {
        OS_InitTick();
    }

    Unk_ov61_0222E764.unk_270 = 16;
    return 1;
}

void ov61_0222D53C(void)
{
    return;
}

static void ov61_0222D540(void *param0)
{
    ov61_0222D040();
}

int ov61_0222D54C(void)
{
    OS_CreateThread(&Unk_ov61_0222E764.unk_274, ov61_0222D540, 0, &Unk_ov61_0222EAB0[0x800], 0x800, Unk_ov61_0222E764.unk_270);
    OS_WakeupThreadDirect(&Unk_ov61_0222E764.unk_274);
    return 1;
}

static BOOL ov61_0222D5A0(char *param0)
{
    int v0 = 0;
    int v1 = 0;

    while (*param0 != 0) {
        if ('0' <= *param0 && *param0 <= '9') {
            v0++;
            if (v0 >= 4) {
                return FALSE;
            }
        } else if (*param0 == '.') {
            if (v0 == 0) {
                return FALSE;
            }
            v1++;
            v0 = 0;
            if (v1 >= 4) {
                return FALSE;
            }
        } else {
            return FALSE;
        }

        param0++;
    }

    return v1 == 3 && v0 != 0;
}

static BOOL ov61_0222D638(char *param0, char *param1)
{
    int v0 = ov61_0222D5A0(param0);

    if (!v0) {
        SOCHostEnt *v1 = SOC_GetHostByName(param0);
        if (v1) {
            SOCInAddr v2 = { ((u32 *)v1->addrList[0])[0] };
            char *v3 = SOC_InetNtoA(v2);
            strcpy(param1, v3);
        } else {
            return FALSE;
        }
    } else {
        strcpy(param1, param0);
    }

    return TRUE;
}

BOOL ov61_0222D6A0(void)
{
    int v0 = SOC_Socket(SOC_PF_INET, SOC_SOCK_STREAM, 0);
    Unk_ov61_0222E764.unk_26C = v0;

    if (v0 == -1) {
        Unk_ov61_0222E764.unk_250 = 3;
        return FALSE;
    }

    int v1 = SOC_Fcntl(v0, SOC_F_GETFL, 0);
    int v2 = SOC_Fcntl(Unk_ov61_0222E764.unk_26C, SOC_F_SETFL, v1 | SOC_O_NONBLOCK);

    if (v2 < 0) {
        Unk_ov61_0222E764.unk_250 = 4;
        return FALSE;
    }

    char v3[14];
    BOOL v4 = ov61_0222D638(Unk_ov61_0222E764.unk_140, v3);

    if (!v4) {
        Unk_ov61_0222E764.unk_250 = 5;
        return FALSE;
    }

    int v5 = inet_addr(v3);
    Unk_ov61_0222E764.unk_264 = v5;
    return TRUE;
}

void ov61_0222D770(void)
{
    if (Unk_ov61_0222E764.unk_26C == -1) {
        return;
    }

    SOC_Shutdown(Unk_ov61_0222E764.unk_26C, 2);
    SOC_Close(Unk_ov61_0222E764.unk_26C);
    Unk_ov61_0222E764.unk_26C = -1;
}

BOOL ov61_0222D7B0(void)
{
    SOCSockAddrIn v0;
    v0.len = sizeof(SOCSockAddrIn);
    v0.family = SOC_PF_INET;
    v0.port = ((Unk_ov61_0222E764.unk_240 >> 8) & 0xFF) | ((Unk_ov61_0222E764.unk_240 << 8) & 0xFF00);
    v0.addr.addr = Unk_ov61_0222E764.unk_264;

    u64 v1 = OS_GetTick() / 0x7FD88;

    while (TRUE) {
        int v2 = SOC_Connect(Unk_ov61_0222E764.unk_26C, &v0);

        if (v2 < 0) {
            if (v2 == SOC_EINPROGRESS) {
                if (Unk_ov61_0222E764.unk_244 != 0) {
                    int v3 = OS_GetTick() / 0x7FD88 - v1;

                    if (v3 >= Unk_ov61_0222E764.unk_244) {
                        Unk_ov61_0222E764.unk_250 = 10;
                        return FALSE;
                    }
                }
            } else if (v2 != SOC_EISCONN) {
                Unk_ov61_0222E764.unk_250 = 7;
                return FALSE;
            } else {
                break;
            }

            ov61_0222D4C8();

            if (Unk_ov61_0222E764.unk_268 == 1) {
                Unk_ov61_0222E764.unk_250 = 13;
                ov61_0222D4DC();
                return FALSE;
            }
        } else {
            break;
        }

        ov61_0222D4DC();
        ov61_0222DB8C(1);
    }

    return 1;
}

BOOL ov61_0222D8F8(void)
{
    int v0 = 0;
    u64 v1 = OS_GetTick() / 0x7FD88;

    while (TRUE) {
        int v2 = Unk_ov61_0222E764.unk_254 - v0;
        if (v2 > Unk_ov61_0222E764.unk_254) {
            v2 = Unk_ov61_0222E764.unk_254;
        }

        int v3 = SOC_Send(Unk_ov61_0222E764.unk_26C, Unk_ov61_0222E764.unk_258 + v0, v2, 0);
        if (v3 != -6) {
            if (v3 < 0) {
                Unk_ov61_0222E764.unk_250 = 11;
                return FALSE;
            }

            v0 += v3;
            if (v0 == Unk_ov61_0222E764.unk_254) {
                break;
            }
        }

        if (Unk_ov61_0222E764.unk_248 != 0) {
            int v4 = OS_GetTick() / 0x7FD88 - v1;
            if (v4 >= Unk_ov61_0222E764.unk_248) {
                Unk_ov61_0222E764.unk_250 = 11;
                return FALSE;
            }
        }

        ov61_0222D4C8();

        if (Unk_ov61_0222E764.unk_268 == 1) {
            Unk_ov61_0222E764.unk_250 = 13;
            ov61_0222D4DC();
            return FALSE;
        }

        ov61_0222D4DC();
        ov61_0222DB8C(1);
    }

    return TRUE;
}

BOOL ov61_0222DA0C(void)
{
    u64 v1;
    u32 v0 = 0;
    int v6 = -1;

    v1 = OS_GetTick() / 0x7FD88;
    while (TRUE) {
        int v3 = SOC_Recv(Unk_ov61_0222E764.unk_26C, Unk_ov61_0222E764.unk_260 + v0, Unk_ov61_0222E764.unk_25C - v0, 0);
        if (v3 != SOC_EWOULDBLOCK) {
            if (v3 <= 0) {
                Unk_ov61_0222E764.unk_250 = 9;
                return FALSE;
            }

            v0 += v3;

            if (v0 >= 4 && v6 == -1) {
                memcpy(&v6, Unk_ov61_0222E764.unk_260, sizeof(int));
            }

            if (v0 == v6 && v6 != -1) {
                ov61_0222E110(Unk_ov61_0222E764.unk_260 + 4, v0 - 4, Unk_ov61_0222E764.unk_260 + 4);
                Unk_ov61_0222E764.unk_25C = v6 - 4;
                break;
            }
        }

        if (Unk_ov61_0222E764.unk_24C != 0) {
            int v4 = OS_GetTick() / 0x7FD88 - v1;
            if (v4 >= Unk_ov61_0222E764.unk_24C) {
                Unk_ov61_0222E764.unk_250 = 12;
                return FALSE;
            }
        }

        ov61_0222D4C8();

        if (Unk_ov61_0222E764.unk_268 == 1) {
            Unk_ov61_0222E764.unk_250 = 13;
            ov61_0222D4DC();
            return FALSE;
        }

        ov61_0222D4DC();
        ov61_0222DB8C(1);
    }

    return TRUE;
}

void ov61_0222DB8C(u32 param0)
{
    OS_Sleep(param0);
}

BOOL ov61_0222DB98(void)
{
    if (Unk_ov61_0222E764.unk_138 == 1) {
        return TRUE;
    }

    DWCSvlResult v0;
    if (!DWC_SVLGetTokenAsync("", &v0)) {
        Unk_ov61_0222E764.unk_250 = 14;
        return FALSE;
    }

    while (TRUE) {
        DWCSvlState v1 = DWC_SVLProcess();

        if (v1 == DWC_ETYPE_SHUTDOWN_FM) {
            memcpy(&Unk_ov61_0222E764.unk_00.unk_06, &v0.svltoken, DWC_SVL_TOKEN_LENGTH + 1);
            Unk_ov61_0222E764.unk_138 = 1;
            return TRUE;
        } else if (v1 == DWC_ETYPE_SHUTDOWN_GHTTP) {
            DWCErrorType v3;
            int v2;
            DWC_GetLastErrorEx(&v2, &v3);
            Unk_ov61_0222E764.unk_250 = 14;
            return FALSE;
        } else if (v1 == DWC_ETYPE_SHUTDOWN_ND) {
            Unk_ov61_0222E764.unk_250 = 14;
            return FALSE;
        } else {
            ov61_0222D4C8();
            if (Unk_ov61_0222E764.unk_268 == 1) {
                Unk_ov61_0222E764.unk_250 = 13;
                ov61_0222D4DC();
                return FALSE;
            }
        }

        ov61_0222D4DC();
        ov61_0222DB8C(1);
    }
}
