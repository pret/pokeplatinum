#ifndef NITRO_OS_MESSAGE_H_
#define NITRO_OS_MESSAGE_H_

#ifdef __cplusplus
extern "C" {
#endif

typedef struct OSMessageQueue OSMessageQueue;
typedef void * OSMessage;

#pragma warn_padding off
struct OSMessageQueue {
    OSThreadQueue queueSend;
    OSThreadQueue queueReceive;
    OSMessage * msgArray;
    s32 msgCount;
    s32 firstIndex;
    s32 usedCount;
};
#pragma warn_padding reset

#define OS_MESSAGE_NOBLOCK 0
#define OS_MESSAGE_BLOCK 1

void OS_InitMessageQueue(OSMessageQueue * mq, OSMessage * msgArray, s32 msgCount);

BOOL OS_SendMessage(OSMessageQueue * mq, OSMessage msg, s32 flags);

BOOL OS_ReceiveMessage(OSMessageQueue * mq, OSMessage * msg, s32 flags);

BOOL OS_JamMessage(OSMessageQueue * mq, OSMessage msg, s32 flags);

BOOL OS_ReadMessage(OSMessageQueue * mq, OSMessage * msg, s32 flags);

static inline s32 OS_GetMessageCount (OSMessageQueue * mq)
{
    SDK_ASSERT(mq);
    return mq->msgCount;
}

static inline BOOL OS_IsMessageQueueFull (OSMessageQueue * mq)
{
    SDK_ASSERT(mq);
    return (mq->usedCount >= mq->msgCount);
}

#ifdef __cplusplus
}
#endif

#endif
