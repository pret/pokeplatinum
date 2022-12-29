#ifndef NNS_FND_LIST_H_
#define NNS_FND_LIST_H_

#include <stddef.h>
#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    void * prevObject;
    void * nextObject;
} NNSFndLink;

typedef struct {
    void * headObject;
    void * tailObject;
    u16 numObjects;
    u16 offset;
} NNSFndList;

#define NNS_FND_INIT_LIST(list, structName, linkName) \
    NNS_FndInitList(list, offsetof(structName, linkName))

void NNS_FndInitList(
    NNSFndList * list,
    u16 offset);

void NNS_FndAppendListObject(
    NNSFndList * list,
    void * object);

void NNS_FndPrependListObject(
    NNSFndList * list,
    void * object);

void NNS_FndInsertListObject(
    NNSFndList * list,
    void * target,
    void * object);

void NNS_FndRemoveListObject(
    NNSFndList * list,
    void * object);

void * NNS_FndGetNextListObject(
    NNSFndList * list,
    void * object);

void * NNS_FndGetPrevListObject(
    NNSFndList * list,
    void * object);

void * NNS_FndGetNthListObject(
    NNSFndList * list,
    u16 index);

#ifdef __cplusplus
}
#endif

#endif
