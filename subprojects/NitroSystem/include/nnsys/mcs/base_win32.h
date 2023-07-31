#ifndef NNS_MCS_BASE_WIN32_H_
#define NNS_MCS_BASE_WIN32_H_

#ifdef __cplusplus
extern "C" {
#endif

#ifdef NNS_MCS_EXPORTS
    #define NNS_MCS_IMPORT __declspec(dllexport)
#else
    #define NNS_MCS_IMPORT __declspec(dllimport)
#endif

#define NNS_MCS_MODULE_NAME _T("nnsmcs.dll")

#define NNS_MCS_API_OPENSTREAM "NNS_McsOpenStream"
#define NNS_MCS_API_OPENSTREAMEX "NNS_McsOpenStreamEx"

enum {
    NNS_MCS_DEVICE_TYPE_UNKNOWN,

    NNS_MCS_DEVICE_TYPE_NITRO_DEBUGGER,
    NNS_MCS_DEVICE_TYPE_NITRO_UIC,
    NNS_MCS_DEVICE_TYPE_ENSATA
};

struct NNSMcsStreamInfo {
    DWORD structBytes;
    DWORD deviceType;
};

typedef HANDLE (WINAPI * NNSMcsPFOpenStream)(
    USHORT channel,
    DWORD flags);

typedef HANDLE (WINAPI * NNSMcsPFOpenStreamEx)(
    USHORT channel,
    DWORD flags,
    NNSMcsStreamInfo * pStreamInfo);

NNS_MCS_IMPORT HANDLE WINAPI NNS_McsOpenStream(
    USHORT channel,
    DWORD flags);

NNS_MCS_IMPORT HANDLE WINAPI NNS_McsOpenStreamEx(
    USHORT channel,
    DWORD flags,
    NNSMcsStreamInfo * pStreamInfo);

#ifdef __cplusplus
}
#endif

#endif
