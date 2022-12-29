#ifndef NNS_MCS_RINGBUFFER_H_
#define NNS_MCS_RINGBUFFER_H_

#if defined(_MSC_VER)
    #include "mcsStdInt.h"
#else
    #include <stdint.h>
#endif

#if defined(_WIN32)
    #include <windef.h>
#else
    #include <nitro/types.h>
#endif

#if !defined(_WIN32) && defined(__cplusplus)
extern "C" {
#endif

#define NNS_MCS_RINGBUF_SIGNATURE 'MCRB'

#define NNS_MCS_RINGBUF_OVERFLOW (1 << 0)

enum {
    NNS_MCS_RINGBUF_DTYPE_START,
    NNS_MCS_RINGBUF_DTYPE_MIDDLE,
    NNS_MCS_RINGBUF_DTYPE_END
};

#if defined(_WIN32)
typedef uint32_t NNSiMcsBufPtr;
typedef uint32_t NNSiMcsUIntPtr;
#else
typedef void * NNSiMcsBufPtr;
typedef uintptr_t NNSiMcsUIntPtr;
#endif

typedef struct NNSiMcsBufRgn NNSiMcsBufRgn;
struct NNSiMcsBufRgn {
    NNSiMcsUIntPtr buf;
    uint32_t bufSize;
};

typedef struct NNSiMcsMsgRange NNSiMcsMsgRange;
struct NNSiMcsMsgRange {
    NNSiMcsUIntPtr start;
    NNSiMcsUIntPtr end;
};

typedef struct NNSiMcsRingBufferHeader NNSiMcsRingBufferHeader;
struct NNSiMcsRingBufferHeader {
    uint32_t signature;
    uint32_t state;
    NNSiMcsMsgRange mrng;
    NNSiMcsBufRgn brgn;
};

typedef NNSiMcsUIntPtr NNSMcsRingBuffer;

#if defined(_WIN32)
void NNSi_McsReadFromRingBufferMem(
    void * appAddr,
    uint32_t rbAddr,
    uint32_t size);

void NNSi_McsWriteToRingBufferMem(
    uint32_t rbAddr,
    const void * appAddr,
    uint32_t size);
#endif

NNSMcsRingBuffer NNS_McsInitRingBuffer(
    NNSiMcsBufPtr buf,
    uint32_t bufSize);

uint32_t NNS_McsGetRingBufferReadableBytes(
    NNSMcsRingBuffer rb);

uint32_t NNS_McsGetRingBufferTotalReadableBytes(
    NNSMcsRingBuffer rb);

uint32_t NNS_McsGetRingBufferWritableBytes(
    NNSMcsRingBuffer rb);

BOOL NNS_McsReadRingBuffer(
    NNSMcsRingBuffer rb,
    void * buf,
    uint32_t size,
    uint32_t * pReadBytes);

BOOL NNS_McsWriteRingBuffer(
    NNSMcsRingBuffer rb,
    const void * buf,
    uint32_t size);

BOOL NNS_McsWriteRingBufferEx(
    NNSMcsRingBuffer rb,
    const void * buf,
    uint32_t offset,
    uint32_t size,
    uint32_t totalSize);

void NNS_McsClearRingBuffer(
    NNSMcsRingBuffer rb);

BOOL NNS_McsCheckRingBuffer(
    NNSMcsRingBuffer rb);

uint32_t NNS_McsGetRingBufferState(
    NNSMcsRingBuffer rb);

void NNS_McsClearRingBufferState(
    NNSMcsRingBuffer rb);

#if !defined(_WIN32) && defined(__cplusplus)
}
#endif

#endif
