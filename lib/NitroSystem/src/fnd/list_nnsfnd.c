#include <nnsys/misc.h>
#include <nnsys/fnd/list.h>

#define OBJ_TO_LINK(list, obj) ((NNSFndLink *)(((u32)(obj)) + (list)->offset))

void NNS_FndInitList (NNSFndList * list, u16 offset) {
    NNS_NULL_ASSERT(list);

    list->headObject = NULL;
    list->tailObject = NULL;
    list->numObjects = 0;
    list->offset = offset;
}

static void SetFirstObject (NNSFndList * list, void * object) {
    NNSFndLink * link;

    NNS_NULL_ASSERT(list);
    NNS_NULL_ASSERT(object);

    link = OBJ_TO_LINK(list, object);

    link->nextObject = NULL;
    link->prevObject = NULL;
    list->headObject = object;
    list->tailObject = object;
    list->numObjects++;
}

void NNS_FndAppendListObject (NNSFndList * list, void * object) {
    NNS_NULL_ASSERT(list);
    NNS_NULL_ASSERT(object);

    if (list->headObject == NULL) {
        SetFirstObject(list, object);
    } else {
        NNSFndLink * link = OBJ_TO_LINK(list, object);

        link->prevObject = list->tailObject;
        link->nextObject = NULL;

        OBJ_TO_LINK(list, list->tailObject)->nextObject = object;
        list->tailObject = object;
        list->numObjects++;
    }
}

void NNS_FndPrependListObject (NNSFndList * list, void * object) {
    NNS_NULL_ASSERT(list);
    NNS_NULL_ASSERT(object);

    if (list->headObject == NULL) {
        SetFirstObject(list, object);
    } else {
        NNSFndLink * link = OBJ_TO_LINK(list, object);

        link->prevObject = NULL;
        link->nextObject = list->headObject;

        OBJ_TO_LINK(list, list->headObject)->prevObject = object;
        list->headObject = object;
        list->numObjects++;
    }
}

void NNS_FndInsertListObject (NNSFndList * list, void * target, void * object) {
    NNS_NULL_ASSERT(list);
    NNS_NULL_ASSERT(object);

    if (target == NULL) {
        NNS_FndAppendListObject(list, object);
    } else if (target == list->headObject) {
        NNS_FndPrependListObject(list, object);
    } else {
        NNSFndLink * link = OBJ_TO_LINK(list, object);
        void * prevObj = OBJ_TO_LINK(list, target)->prevObject;
        NNSFndLink * prevLnk = OBJ_TO_LINK(list, prevObj);

        link->prevObject = prevObj;
        link->nextObject = target;
        prevLnk->nextObject = object;
        OBJ_TO_LINK(list, target)->prevObject = object;
        list->numObjects++;
    }
}

void NNS_FndRemoveListObject (NNSFndList * list, void * object) {
    NNSFndLink * link;

    NNS_NULL_ASSERT(list);
    NNS_NULL_ASSERT(object);

    link = OBJ_TO_LINK(list, object);

    if (link->prevObject == NULL) {
        list->headObject = link->nextObject;
    } else {
        OBJ_TO_LINK(list, link->prevObject)->nextObject = link->nextObject;
    }
    if (link->nextObject == NULL) {
        list->tailObject = link->prevObject;
    } else {
        OBJ_TO_LINK(list, link->nextObject)->prevObject = link->prevObject;
    }
    link->prevObject = NULL;
    link->nextObject = NULL;
    list->numObjects--;
}

void * NNS_FndGetNextListObject (NNSFndList * list, void * object) {
    NNS_NULL_ASSERT(list);

    if (object == NULL) {
        return list->headObject;
    }
    return OBJ_TO_LINK(list, object)->nextObject;
}

void * NNS_FndGetPrevListObject (NNSFndList * list, void * object) {
    NNS_NULL_ASSERT(list);

    if (object == NULL) {
        return list->tailObject;
    }
    return OBJ_TO_LINK(list, object)->prevObject;
}

void * NNS_FndGetNthListObject (NNSFndList * list, u16 index) {
    int count = 0;
    NNSFndLink * object = NULL;

    NNS_NULL_ASSERT(list);

    while ((object = NNS_FndGetNextListObject(list, object)) != NULL) {
        if (index == count) {
            return object;
        }
        count++;
    }
    return NULL;
}
