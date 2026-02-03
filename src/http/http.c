#include "http/http.h"

#include <dwc.h>

#include "http/http_b64.h"

#define HASH_SIZE 20

struct {
    int readyState;
    int requestHandle;
    int errorCode;
    int responseLength;
    int dwcProfileID;
    void *data;
    int dataSize;
    void *response;
    int maxResponseLength;
    char *url;
    char *hashStr;
    char *b64DataStr;
    int encodedDataSize;
} sHttpData = { 1, 0, 0, 0 };

static void HTTP_SetErrorCode(int requestHandle)
{
    switch (requestHandle) {
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

static void HTTP_RequestCompletedCallback(const char *responseText, int length, DWCGHTTPResult result, void *unused)
{
    sHttpData.requestHandle = -1;

    if (sHttpData.readyState == 1) {
        return;
    }

    if (result == DWC_GHTTP_SUCCESS) {
        switch (sHttpData.readyState) {
        case 4:

            if (length == 32) {
                // Temporarily store the hash is the second half of the hash string
                // to be overwritten when turning it into hexadecimal for sending
                u8 *responseHash = (u8 *)(sHttpData.hashStr + HASH_SIZE);
                char saltedResponseText[(20 + 32 + 1)];
                const char hexDigits[] = "0123456789abcdef";

                strcpy(saltedResponseText, "sAdeqWo3voLeC5r16DYv");
                strncat(saltedResponseText, responseText, (u32)length);

                MATH_CalcSHA1((u8 *)responseHash, (const u8 *)saltedResponseText, strlen(saltedResponseText));

                strcat(sHttpData.url, "&hash=");

                for (int i = 0; i < HASH_SIZE; i++) {
                    sHttpData.hashStr[i * 2] = hexDigits[responseHash[i] >> 4];
                    sHttpData.hashStr[i * 2 + 1] = hexDigits[responseHash[i] & 0xf];
                }

                sHttpData.hashStr[HASH_SIZE * 2] = '\0';
                strcat(sHttpData.url, "&data=");
                enum HTTPB64EncodeResult b64EncodeResult = HTTPB64_EncryptAndEncodeB64((u32)sHttpData.dwcProfileID, (u8 *)sHttpData.data, sHttpData.dataSize, (u8 *)sHttpData.b64DataStr, sHttpData.encodedDataSize);

                switch (b64EncodeResult) {
                case HTTP_B64_ENCODE_SUCCESS:
                    break;
                case HTTP_B64_ENCODE_ERROR_ALLOC_FAIL:
                case HTTP_B64_ENCORE_ERROR_INSUFFICIENT_BUFFER_SIZE:
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
                memcpy(sHttpData.response, responseText, (u32)length);
                sHttpData.readyState = 7;
            } else {
                memcpy(sHttpData.response, responseText, (u32)sHttpData.maxResponseLength);

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

int HTTP_PrepareRequest(const u8 *url, int dwcProfileID, const void *data, int dataSize, u8 *response, int maxResponseLength)
{
    if (sHttpData.readyState != 2) {
        return 1;
    }

    sHttpData.dwcProfileID = dwcProfileID;
    sHttpData.data = (void *)data;
    sHttpData.dataSize = dataSize;
    sHttpData.response = response;
    sHttpData.maxResponseLength = maxResponseLength;
    sHttpData.url = (char *)DWC_Alloc((DWCAllocType)10, strlen((const char *)url) + (2 * HASH_SIZE) + 28 + HTTPB64_CalcEncodedSize(8 + (u32)dataSize) + 1);

    if (sHttpData.url == NULL) {
        return 2;
    }

    sprintf(sHttpData.url, "%s?pid=%d", url, dwcProfileID);

    sHttpData.hashStr = sHttpData.url + strlen(sHttpData.url) + strlen("&hash=");
    sHttpData.b64DataStr = sHttpData.hashStr + (2 * HASH_SIZE) + strlen("&data=");
    sHttpData.encodedDataSize = (int)(HTTPB64_CalcEncodedSize(8 + (u32)dataSize) + 1);
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
        sHttpData.requestHandle = DWC_GetGHTTPData(sHttpData.url, HTTP_RequestCompletedCallback, &sHttpData);
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
        sHttpData.requestHandle = DWC_GetGHTTPData(sHttpData.url, HTTP_RequestCompletedCallback, &sHttpData);
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
    if (sHttpData.url != NULL) {
        DWC_Free((DWCAllocType)10, sHttpData.url, (u32)0);
        sHttpData.url = NULL;
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
