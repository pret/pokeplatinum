#include "overlay060/ov60_0221F968.h"

#include <dwc.h>

#include "overlay060/ov60_0221F800.h"

struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
    void *unk_14;
    int unk_18;
    void *unk_1C;
    int unk_20;
    char *unk_24;
    char *unk_28;
    char *unk_2C;
    int unk_30;
} Unk_ov60_02228E40 = { 1, 0, 0, 0 };

static void ov60_0221F968(int param0) {
    switch (param0) {
    case DWC_GHTTP_IN_ERROR:
        Unk_ov60_02228E40.unk_08 = 0;
        break;
    case DWC_GHTTP_INVALID_POST:
        Unk_ov60_02228E40.unk_08 = 1;
        break;
    case DWC_GHTTP_INSUFFICIENT_MEMORY:
        Unk_ov60_02228E40.unk_08 = 2;
        break;
    case DWC_GHTTP_INVALID_FILE_NAME:
        Unk_ov60_02228E40.unk_08 = 3;
        break;
    case DWC_GHTTP_INVALID_BUFFER_SIZE:
        Unk_ov60_02228E40.unk_08 = 4;
        break;
    case DWC_GHTTP_INVALID_URL:
        Unk_ov60_02228E40.unk_08 = 5;
        break;
    case DWC_GHTTP_UNSPECIFIED_ERROR:
        Unk_ov60_02228E40.unk_08 = 6;
        break;
    default:
        Unk_ov60_02228E40.unk_08 = 0;
    }
}

static void ov60_0221F9D0(const char *param0, int param1, DWCGHTTPResult param2, void *param3) {
#pragma unused(param3)

    Unk_ov60_02228E40.unk_04 = -1;

    if (Unk_ov60_02228E40.unk_00 == 1) {
        return;
    }

    if (param2 == DWC_GHTTP_SUCCESS) {
        switch (Unk_ov60_02228E40.unk_00) {
        case 4:

            if (param1 == 32) {
                int v0;
                u8 *v1 = (u8 *)(Unk_ov60_02228E40.unk_28 + 20);
                char v2[(32 + 20 + 1)];
                int v3;
                const char v4[] = "0123456789abcdef";

                strcpy(v2, "sAdeqWo3voLeC5r16DYv");
                strncat(v2, param0, (u32)param1);

                MATH_CalcSHA1((u8 *)v1, (const u8 *)v2, strlen(v2));

                strcat(Unk_ov60_02228E40.unk_24, "&hash=");

                for (v0 = 0; v0 < 20; v0++) {
                    Unk_ov60_02228E40.unk_28[v0 * 2] = v4[v1[v0] >> 4];
                    Unk_ov60_02228E40.unk_28[v0 * 2 + 1] = v4[v1[v0] & 0xf];
                }

                Unk_ov60_02228E40.unk_28[40] = '\0';
                strcat(Unk_ov60_02228E40.unk_24, "&data=");
                v3 = ov60_0221F838((u32)Unk_ov60_02228E40.unk_10, (u8 *)Unk_ov60_02228E40.unk_14, Unk_ov60_02228E40.unk_18, (u8 *)Unk_ov60_02228E40.unk_2C, Unk_ov60_02228E40.unk_30);

                switch (v3) {
                case 0:
                    break;
                case 1:
                case 2:
                    Unk_ov60_02228E40.unk_00 = 1;
                    return;
                }

                Unk_ov60_02228E40.unk_00 = 5;
            } else {
                Unk_ov60_02228E40.unk_00 = 1;
            }
            break;
        case 6:
            if (param1 == 22) {
                if (strncmp(param0, "error: check sum      ", 22) == 0) {
                    Unk_ov60_02228E40.unk_00 = 1;
                    Unk_ov60_02228E40.unk_08 = 26;
                    break;
                } else if (strncmp(param0, "error: pid            ", 22) == 0) {
                    Unk_ov60_02228E40.unk_00 = 1;
                    Unk_ov60_02228E40.unk_08 = 27;
                    break;
                } else if (strncmp(param0, "error: data length    ", 22) == 0) {
                    Unk_ov60_02228E40.unk_00 = 1;
                    Unk_ov60_02228E40.unk_08 = 28;
                    break;
                } else if (strncmp(param0, "error: token not found", 22) == 0) {
                    Unk_ov60_02228E40.unk_00 = 1;
                    Unk_ov60_02228E40.unk_08 = 29;
                    break;
                } else if (strncmp(param0, "error: token expired  ", 22) == 0) {
                    Unk_ov60_02228E40.unk_00 = 1;
                    Unk_ov60_02228E40.unk_08 = 30;
                    break;
                } else if (strncmp(param0, "error: incorrect hash ", 22) == 0) {
                    Unk_ov60_02228E40.unk_00 = 1;
                    Unk_ov60_02228E40.unk_08 = 31;
                    break;
                }
            }

            if (param1 <= Unk_ov60_02228E40.unk_20) {
                memcpy(Unk_ov60_02228E40.unk_1C, param0, (u32)param1);
                Unk_ov60_02228E40.unk_00 = 7;
            } else {
                memcpy(Unk_ov60_02228E40.unk_1C, param0, (u32)Unk_ov60_02228E40.unk_20);

                Unk_ov60_02228E40.unk_00 = 1;
                Unk_ov60_02228E40.unk_08 = 32;
            }

            Unk_ov60_02228E40.unk_0C = param1;
            break;
        }
    } else {
        Unk_ov60_02228E40.unk_00 = 1;

        switch (param2) {
        case DWC_GHTTP_OUT_OF_MEMORY:
            Unk_ov60_02228E40.unk_08 = 8;
            break;
        case DWC_GHTTP_BUFFER_OVERFLOW:
            Unk_ov60_02228E40.unk_08 = 9;
            break;
        case DWC_GHTTP_PARSE_URL_FAILED:
            Unk_ov60_02228E40.unk_08 = 10;
            break;
        case DWC_GHTTP_HOST_LOOKUP_FAILED:
            Unk_ov60_02228E40.unk_08 = 11;
            break;
        case DWC_GHTTP_SOCKET_FAILED:
            Unk_ov60_02228E40.unk_08 = 12;
            break;
        case DWC_GHTTP_CONNECT_FAILED:
            Unk_ov60_02228E40.unk_08 = 13;
            break;
        case DWC_GHTTP_BAD_RESPONSE:
            Unk_ov60_02228E40.unk_08 = 14;
            break;
        case DWC_GHTTP_REQUEST_REJECTED:
            Unk_ov60_02228E40.unk_08 = 15;
            break;
        case DWC_GHTTP_UNAUTHORIZED:
            Unk_ov60_02228E40.unk_08 = 16;
            break;
        case DWC_GHTTP_FORBIDDEN:
            Unk_ov60_02228E40.unk_08 = 17;
            break;
        case DWC_GHTTP_FILE_NOT_FOUND:
            Unk_ov60_02228E40.unk_08 = 18;
            break;
        case DWC_GHTTP_SERVER_ERROR:
            Unk_ov60_02228E40.unk_08 = 19;
            break;
        case DWC_GHTTP_FILE_INCOMPLETE:
            Unk_ov60_02228E40.unk_08 = 22;
            break;
        case DWC_GHTTP_FILE_TOO_BIG:
            Unk_ov60_02228E40.unk_08 = 23;
            break;
        case DWC_GHTTP_MEMORY_ERROR:
            Unk_ov60_02228E40.unk_08 = 25;
            break;
        }
    }
}

void ov60_0221FC84(void) {
    Unk_ov60_02228E40.unk_00 = 2;
    Unk_ov60_02228E40.unk_04 = -1;

    if (!DWC_InitGHTTP(NULL)) {
        Unk_ov60_02228E40.unk_00 = 1;
    }

    return;
}

int ov60_0221FCA8(const u8 *param0, int param1, const void *param2, int param3, u8 *param4, int param5) {
    if (Unk_ov60_02228E40.unk_00 != 2) {
        return 1;
    }

    Unk_ov60_02228E40.unk_10 = param1;
    Unk_ov60_02228E40.unk_14 = (void *)param2;
    Unk_ov60_02228E40.unk_18 = param3;
    Unk_ov60_02228E40.unk_1C = param4;
    Unk_ov60_02228E40.unk_20 = param5;
    Unk_ov60_02228E40.unk_24 = (char *)DWC_Alloc((DWCAllocType)10, strlen((const char *)param0) + 68 + ov60_0221F944(8 + (u32)param3) + 1);

    if (Unk_ov60_02228E40.unk_24 == NULL) {
        return 2;
    }

    sprintf(Unk_ov60_02228E40.unk_24, "%s?pid=%d", param0, param1);

    Unk_ov60_02228E40.unk_28 = Unk_ov60_02228E40.unk_24 + strlen(Unk_ov60_02228E40.unk_24) + strlen("&hash=");
    Unk_ov60_02228E40.unk_2C = Unk_ov60_02228E40.unk_28 + 40 + strlen("&data=");
    Unk_ov60_02228E40.unk_30 = (int)(ov60_0221F944(8 + (u32)param3) + 1);
    Unk_ov60_02228E40.unk_00 = 3;

    return 0;
}

int ov60_0221FD48(void) {
    BOOL v0;

    switch (Unk_ov60_02228E40.unk_00) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        Unk_ov60_02228E40.unk_04 = DWC_GetGHTTPData(Unk_ov60_02228E40.unk_24, ov60_0221F9D0, &Unk_ov60_02228E40);
        ov60_0221F968(Unk_ov60_02228E40.unk_04);

        if (Unk_ov60_02228E40.unk_04 >= 0) {
            Unk_ov60_02228E40.unk_00 = 4;
        } else {
            Unk_ov60_02228E40.unk_00 = 1;
        }
        break;
    case 4:
        v0 = DWC_ProcessGHTTP();

        if (!v0) {
            Unk_ov60_02228E40.unk_00 = 1;
            break;
        }
        break;
    case 5:
        Unk_ov60_02228E40.unk_04 = DWC_GetGHTTPData(Unk_ov60_02228E40.unk_24, ov60_0221F9D0, &Unk_ov60_02228E40);
        ov60_0221F968(Unk_ov60_02228E40.unk_04);

        if (Unk_ov60_02228E40.unk_04 >= 0) {
            Unk_ov60_02228E40.unk_00 = 6;
        } else {
            Unk_ov60_02228E40.unk_00 = 1;
        }
        break;
    case 6:
        v0 = DWC_ProcessGHTTP();

        if (!v0) {
            Unk_ov60_02228E40.unk_00 = 1;
            break;
        }
        break;
    case 7:
        break;
    }

    return Unk_ov60_02228E40.unk_00;
}

void ov60_0221FDEC(void) {
    if (Unk_ov60_02228E40.unk_24 != NULL) {
        DWC_Free((DWCAllocType)10, Unk_ov60_02228E40.unk_24, (u32)0);
        Unk_ov60_02228E40.unk_24 = NULL;
    }

    DWC_ShutdownGHTTP();

    Unk_ov60_02228E40.unk_00 = 1;
    return;
}

int ov60_0221FE14(void) {
    return (int)Unk_ov60_02228E40.unk_08;
}

int ov60_0221FE20(void) {
    return Unk_ov60_02228E40.unk_0C;
}
