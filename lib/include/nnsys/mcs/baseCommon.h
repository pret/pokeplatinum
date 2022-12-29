#ifndef NNS_MCS_BASECOMMON_H_
#define NNS_MCS_BASECOMMON_H_

#if defined(_MSC_VER)

    #include "mcsStdInt.h"

typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;

#endif

#ifdef __cplusplus
extern "C" {
#endif

#define NNSi_MCS_MESSAGE_SIZE_MAX (1024 * 32)

#define NNSi_MCS_MSG_HEAD_SIZE sizeof(NNSiMcsMsgHead)

#define NNSi_MCS_MSG_DATA_SIZE_MAX (NNSi_MCS_MESSAGE_SIZE_MAX - NNSi_MCS_MSG_HEAD_SIZE)
#define NNSi_MCS_MSG_DATA_SIZE_MIN (1024 * 8 - NNSi_MCS_MSG_HEAD_SIZE)

typedef struct NNSiMcsMsgHead NNSiMcsMsgHead;
struct NNSiMcsMsgHead {
    u16 version;
    u16 reserved;
    u32 offset;
    u32 totalLen;
};

typedef struct NNSiMcsMsg NNSiMcsMsg;
struct NNSiMcsMsg {
    NNSiMcsMsgHead head;
    u8 data[NNSi_MCS_MSG_DATA_SIZE_MAX];
};

#ifdef __cplusplus
}
#endif

#endif
