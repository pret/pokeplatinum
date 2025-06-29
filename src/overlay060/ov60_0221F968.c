#include "overlay060/ov60_0221F968.h"

#include <dwc.h>

#include "overlay060/ov60_0221F800.h"

struct {
    int readyState;
    int requestHandle;
    int errorCode;
    int responseLength;
    int unk_10;
    void *unk_14;
    int unk_18;
    void *unk_1C;
    int maxResponseLength;
    char *unk_24;
    char *unk_28;
    char *unk_2C;
    int unk_30;
} sHttpData = { 1, 0, 0, 0 };

static void HTTP_SetErrorCode(int param0)
{
    switch (param0) {
    case DWC_GHTTP_IN_ERROR:
        sHttpData.errorCode = 0;
        break;
    case DWC_GHTTP_INVALID_POST:
        sHttpData.errorCode = 1;
        break;
    case DWC_GHTTP_INSUFFICIENT_MEMORY:
        sHttpData.errorCode = 2;
        break;
    case DWC_GHTTP_INVALID_FILE_NAME:
        sHttpData.errorCode = 3;
        break;
    case DWC_GHTTP_INVALID_BUFFER_SIZE:
        sHttpData.errorCode = 4;
        break;
    case DWC_GHTTP_INVALID_URL:
        sHttpData.errorCode = 5;
        break;
    case DWC_GHTTP_UNSPECIFIED_ERROR:
        sHttpData.errorCode = 6;
        break;
    default:
        sHttpData.errorCode = 0;
    }
}

static void HTTP_RequestCompletedCallback(const char *responseText, int length, DWCGHTTPResult result, void *param3)
{
#pragma unused(param3)

    sHttpData.requestHandle = -1;

    if (sHttpData.readyState == 1) {
        return;
    }

    if (result == DWC_GHTTP_SUCCESS) {
        switch (sHttpData.readyState) {
        case 4:

            if (length == 32) {
                int v0;
                u8 *v1 = (u8 *)(sHttpData.unk_28 + 20);
                char v2[(32 + 20 + 1)];
                int v3;
                const char v4[] = "0123456789abcdef";

                strcpy(v2, "sAdeqWo3voLeC5r16DYv");
                strncat(v2, responseText, (u32)length);

                MATH_CalcSHA1((u8 *)v1, (const u8 *)v2, strlen(v2));

                strcat(sHttpData.unk_24, "&hash=");

                for (v0 = 0; v0 < 20; v0++) {
                    sHttpData.unk_28[v0 * 2] = v4[v1[v0] >> 4];
                    sHttpData.unk_28[v0 * 2 + 1] = v4[v1[v0] & 0xf];
                }

                sHttpData.unk_28[40] = '\0';
                strcat(sHttpData.unk_24, "&data=");
                v3 = ov60_0221F838((u32)sHttpData.unk_10, (u8 *)sHttpData.unk_14, sHttpData.unk_18, (u8 *)sHttpData.unk_2C, sHttpData.unk_30);

                switch (v3) {
                case 0:
                    break;
                case 1:
                case 2:
                    sHttpData.readyState = 1;
                    return;
                }

                sHttpData.readyState = 5;
            } else {
                sHttpData.readyState = 1;
            }
            break;
        case 6:
            if (length == 22) {
                if (strncmp(responseText, "error: check sum      ", 22) == 0) {
                    sHttpData.readyState = 1;
                    sHttpData.errorCode = 26;
                    break;
                } else if (strncmp(responseText, "error: pid            ", 22) == 0) {
                    sHttpData.readyState = 1;
                    sHttpData.errorCode = 27;
                    break;
                } else if (strncmp(responseText, "error: data length    ", 22) == 0) {
                    sHttpData.readyState = 1;
                    sHttpData.errorCode = 28;
                    break;
                } else if (strncmp(responseText, "error: token not found", 22) == 0) {
                    sHttpData.readyState = 1;
                    sHttpData.errorCode = 29;
                    break;
                } else if (strncmp(responseText, "error: token expired  ", 22) == 0) {
                    sHttpData.readyState = 1;
                    sHttpData.errorCode = 30;
                    break;
                } else if (strncmp(responseText, "error: incorrect hash ", 22) == 0) {
                    sHttpData.readyState = 1;
                    sHttpData.errorCode = 31;
                    break;
                }
            }

            if (length <= sHttpData.maxResponseLength) {
                memcpy(sHttpData.unk_1C, responseText, (u32)length);
                sHttpData.readyState = 7;
            } else {
                memcpy(sHttpData.unk_1C, responseText, (u32)sHttpData.maxResponseLength);

                sHttpData.readyState = 1;
                sHttpData.errorCode = 32;
            }

            sHttpData.responseLength = length;
            break;
        }
    } else {
        sHttpData.readyState = 1;

        switch (result) {
        case DWC_GHTTP_OUT_OF_MEMORY:
            sHttpData.errorCode = 8;
            break;
        case DWC_GHTTP_BUFFER_OVERFLOW:
            sHttpData.errorCode = 9;
            break;
        case DWC_GHTTP_PARSE_URL_FAILED:
            sHttpData.errorCode = 10;
            break;
        case DWC_GHTTP_HOST_LOOKUP_FAILED:
            sHttpData.errorCode = 11;
            break;
        case DWC_GHTTP_SOCKET_FAILED:
            sHttpData.errorCode = 12;
            break;
        case DWC_GHTTP_CONNECT_FAILED:
            sHttpData.errorCode = 13;
            break;
        case DWC_GHTTP_BAD_RESPONSE:
            sHttpData.errorCode = 14;
            break;
        case DWC_GHTTP_REQUEST_REJECTED:
            sHttpData.errorCode = 15;
            break;
        case DWC_GHTTP_UNAUTHORIZED:
            sHttpData.errorCode = 16;
            break;
        case DWC_GHTTP_FORBIDDEN:
            sHttpData.errorCode = 17;
            break;
        case DWC_GHTTP_FILE_NOT_FOUND:
            sHttpData.errorCode = 18;
            break;
        case DWC_GHTTP_SERVER_ERROR:
            sHttpData.errorCode = 19;
            break;
        case DWC_GHTTP_FILE_INCOMPLETE:
            sHttpData.errorCode = 22;
            break;
        case DWC_GHTTP_FILE_TOO_BIG:
            sHttpData.errorCode = 23;
            break;
        case DWC_GHTTP_MEMORY_ERROR:
            sHttpData.errorCode = 25;
            break;
        }
    }
}

void HTTP_Init(void)
{
    sHttpData.readyState = 2;
    sHttpData.requestHandle = -1;

    if (!DWC_InitGHTTP(NULL)) {
        sHttpData.readyState = 1;
    }

    return;
}

int HTTP_PrepareRequest(const u8 *param0, int param1, const void *param2, int param3, u8 *param4, int maxResponseLength)
{
    if (sHttpData.readyState != 2) {
        return 1;
    }

    sHttpData.unk_10 = param1;
    sHttpData.unk_14 = (void *)param2;
    sHttpData.unk_18 = param3;
    sHttpData.unk_1C = param4;
    sHttpData.maxResponseLength = maxResponseLength;
    sHttpData.unk_24 = (char *)DWC_Alloc((DWCAllocType)10, strlen((const char *)param0) + 68 + ov60_0221F944(8 + (u32)param3) + 1);

    if (sHttpData.unk_24 == NULL) {
        return 2;
    }

    sprintf(sHttpData.unk_24, "%s?pid=%d", param0, param1);

    sHttpData.unk_28 = sHttpData.unk_24 + strlen(sHttpData.unk_24) + strlen("&hash=");
    sHttpData.unk_2C = sHttpData.unk_28 + 40 + strlen("&data=");
    sHttpData.unk_30 = (int)(ov60_0221F944(8 + (u32)param3) + 1);
    sHttpData.readyState = 3;

    return 0;
}

int HTTP_GetRequestStatus(void)
{
    BOOL v0;

    switch (sHttpData.readyState) {
    case 0:
        break;
    case 1:
        break;
    case 2:
        break;
    case 3:
        sHttpData.requestHandle = DWC_GetGHTTPData(sHttpData.unk_24, HTTP_RequestCompletedCallback, &sHttpData);
        HTTP_SetErrorCode(sHttpData.requestHandle);

        if (sHttpData.requestHandle >= 0) {
            sHttpData.readyState = 4;
        } else {
            sHttpData.readyState = 1;
        }
        break;
    case 4:
        v0 = DWC_ProcessGHTTP();

        if (!v0) {
            sHttpData.readyState = 1;
            break;
        }
        break;
    case 5:
        sHttpData.requestHandle = DWC_GetGHTTPData(sHttpData.unk_24, HTTP_RequestCompletedCallback, &sHttpData);
        HTTP_SetErrorCode(sHttpData.requestHandle);

        if (sHttpData.requestHandle >= 0) {
            sHttpData.readyState = 6;
        } else {
            sHttpData.readyState = 1;
        }
        break;
    case 6:
        v0 = DWC_ProcessGHTTP();

        if (!v0) {
            sHttpData.readyState = 1;
            break;
        }
        break;
    case 7:
        break;
    }

    return sHttpData.readyState;
}

void HTTP_Shutdown(void)
{
    if (sHttpData.unk_24 != NULL) {
        DWC_Free((DWCAllocType)10, sHttpData.unk_24, (u32)0);
        sHttpData.unk_24 = NULL;
    }

    DWC_ShutdownGHTTP();

    sHttpData.readyState = 1;
    return;
}

int HTTP_GetErrorCode(void)
{
    return (int)sHttpData.errorCode;
}

int HTTP_GetResponseLength(void)
{
    return sHttpData.responseLength;
}
