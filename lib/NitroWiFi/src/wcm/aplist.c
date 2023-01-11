#include "include/wcm_private.h"

#if WCM_DEBUG
static const char aplistWarningText_NotInit[] = {"WCM library is not initialized yet.\n"};
static const char aplistWarningText_NoIndexData[] = {"Could not found AP information that have index %d."};
#endif

static WCMApList * WcmAllocApList(void);
static void WcmFreeApList(WCMApList * aplist);
static WCMApList * WcmGetOldestApList(void);
static WCMApList * WcmGetLastApList(void);
static WCMApList * WcmSearchApList(u8 * bssid);
static WCMApList * WcmSearchIndexedApList(u32 index);
static void WcmAppendApList(WCMApList * aplist);

void WCM_ClearApList (void) {
    OSIntrMode e = OS_DisableInterrupts();
    WCMWork * w = WCMi_GetSystemWork();

    if (w == NULL) {
        WCMi_Warning(aplistWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return;
    }

    if ((w->config.pbdbuffer != NULL) && (w->config.nbdbuffer > 0)) {
        MI_CpuClear8(w->config.pbdbuffer, (u32)(w->config.nbdbuffer));
    }

    (void)OS_RestoreInterrupts(e);
}

s32 WCM_CountApList (void) {
    OSIntrMode e = OS_DisableInterrupts();
    WCMWork * w = WCMi_GetSystemWork();
    s32 count = 0;
    WCMApListHeader * pHeader;

    if (w == NULL) {
        WCMi_Warning(aplistWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return 0;
    }

    pHeader = (WCMApListHeader *)(w->config.pbdbuffer);
    if ((pHeader != NULL) && (w->config.nbdbuffer > sizeof(WCMApListHeader))) {
        count = (s32)(pHeader->count);
    }

    (void)OS_RestoreInterrupts(e);
    return count;
}

s32 WCM_LockApList (s32 lock) {
    OSIntrMode e = OS_DisableInterrupts();
    WCMWork * w = WCMi_GetSystemWork();

    if (w == NULL) {
        WCMi_Warning(aplistWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return 0;
    }

    if (lock != WCM_APLIST_UNLOCK) {
        lock = (w->apListLock ? WCM_APLIST_LOCK : WCM_APLIST_UNLOCK);
        w->apListLock = WCM_APLIST_LOCK;
    } else {
        lock = (w->apListLock ? WCM_APLIST_LOCK : WCM_APLIST_UNLOCK);
        w->apListLock = WCM_APLIST_UNLOCK;
    }

    (void)OS_RestoreInterrupts(e);
    return lock;
}

WMBssDesc * WCM_PointApList (s32 index) {
    OSIntrMode e = OS_DisableInterrupts();
    WCMWork * w = WCMi_GetSystemWork();
    WMBssDesc * bd = NULL;
    WCMApList * p;

    if (w == NULL) {
        WCMi_Warning(aplistWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return NULL;
    }

    p = WcmSearchIndexedApList((u32)index);

    if (p == NULL) {
        WCMi_Warning(aplistWarningText_NoIndexData, index);
        (void)OS_RestoreInterrupts(e);
        return NULL;
    }

    bd = (WMBssDesc *)(p->data);
    (void)OS_RestoreInterrupts(e);
    return bd;
}

WMLinkLevel WCM_PointApListLinkLevel (s32 index) {
    OSIntrMode e = OS_DisableInterrupts();
    WCMWork * w = WCMi_GetSystemWork();
    WMLinkLevel ll = WM_LINK_LEVEL_0;
    WCMApList * p;

    if (w == NULL) {
        WCMi_Warning(aplistWarningText_NotInit);
        (void)OS_RestoreInterrupts(e);
        return WM_LINK_LEVEL_0;
    }

    p = WcmSearchIndexedApList((u32)index);

    if (p == NULL) {
        WCMi_Warning(aplistWarningText_NoIndexData, index);
        (void)OS_RestoreInterrupts(e);
        return WM_LINK_LEVEL_0;
    }

    ll = (WMLinkLevel)(p->linkLevel);
    (void)OS_RestoreInterrupts(e);
    return ll;
}

void WCMi_EntryApList (WMBssDesc * bssDesc, u16 linkLevel) {
    WCMWork * w = WCMi_GetSystemWork();
    WCMApList * aplist;

    if (w == NULL) {
        return;
    }

    if (w->apListLock != WCM_APLIST_UNLOCK) {
        return;
    }

    if (bssDesc->gameInfoLength != 0) {
        return;
    }

    {
        aplist = WcmSearchApList(bssDesc->bssid);

        if (aplist == NULL) {
            aplist = WcmAllocApList();
        }

        if ((aplist == NULL) && (w->config.nbdmode == WCM_APLIST_MODE_EXCHANGE)) {
            aplist = WcmGetOldestApList();
        }
    }

    if (aplist != NULL) {
        aplist->linkLevel = linkLevel;

        MI_CpuCopyFast(bssDesc, aplist->data, WCM_APLIST_SIZE);

        WcmAppendApList(aplist);
    }
}

static WCMApList * WcmAllocApList (void) {
    WCMWork * w = WCMi_GetSystemWork();
    WCMApListHeader * pHeader = (WCMApListHeader *)(w->config.pbdbuffer);
    WCMApList * p = NULL;

    if ((pHeader != NULL) && (w->config.nbdbuffer > sizeof(WCMApListHeader))) {
        u32 maxBlock = (w->config.nbdbuffer - sizeof(WCMApListHeader)) / sizeof(WCMApList);

        if (maxBlock > 0) {
            s32 i;

            if (maxBlock > pHeader->count) {
                for (i = 0; i < maxBlock; i++) {
                    p = (WCMApList *)((u32)pHeader + sizeof(WCMApListHeader) + (i * sizeof(WCMApList)));
                    if (p->state == WCM_APLIST_BLOCK_EMPTY) {
                        break;
                    }
                }

                if (i < maxBlock) {
                    p->state = WCM_APLIST_BLOCK_OCCUPY;
                    p->index = pHeader->count;

                    p->next = NULL;
                    p->previous = pHeader->tail;
                    pHeader->tail = p;
                    if (p->previous) {
                        ((WCMApList *)(p->previous))->next = p;
                    } else {
                        pHeader->head = p;
                    }

                    pHeader->count++;
                }
            }
        }
    }

    return p;
}

static void WcmFreeApList (WCMApList * aplist) {
    WCMWork * w = WCMi_GetSystemWork();
    WCMApListHeader * pHeader = (WCMApListHeader *)(w->config.pbdbuffer);
    WCMApList * p;

    if (aplist == NULL) {
        return;
    }

    if ((pHeader != NULL) && (w->config.nbdbuffer > sizeof(WCMApListHeader))) {
        p = pHeader->head;
        while (p) {
            if (p == aplist) {
                if (aplist->previous) {
                    ((WCMApList *)(aplist->previous))->next = aplist->next;
                } else {
                    pHeader->head = aplist->next;
                }

                if (aplist->next) {
                    ((WCMApList *)(aplist->next))->previous = aplist->previous;
                } else {
                    pHeader->tail = aplist->previous;
                }

                if (pHeader->count > 0) {
                    u32 index = aplist->index;

                    aplist = WcmSearchIndexedApList((u32)(pHeader->count - 1));
                    if (aplist != NULL) {
                        aplist->index = index;
                    }

                    pHeader->count--;
                }

                MI_CpuClear8(aplist, sizeof(WCMApList));
            }

            p = p->next;
        }
    }
}

static WCMApList * WcmGetOldestApList (void) {
    WCMWork * w = WCMi_GetSystemWork();
    WCMApListHeader * pHeader = (WCMApListHeader *)(w->config.pbdbuffer);

    if ((pHeader != NULL) && (w->config.nbdbuffer > sizeof(WCMApListHeader))) {
        return pHeader->head;
    }

    return NULL;
}

static WCMApList * WcmGetLastApList (void) {
    WCMWork * w = WCMi_GetSystemWork();
    WCMApListHeader * pHeader = (WCMApListHeader *)(w->config.pbdbuffer);

    if ((pHeader != NULL) && (w->config.nbdbuffer > sizeof(WCMApListHeader))) {
        return pHeader->tail;
    }

    return NULL;
}

static WCMApList * WcmSearchApList (u8 * bssid) {
    WCMWork * w = WCMi_GetSystemWork();
    WCMApListHeader * pHeader = (WCMApListHeader *)(w->config.pbdbuffer);
    WCMApList * p = NULL;

    if (bssid == NULL) {
        return NULL;
    }

    if ((pHeader != NULL) && (w->config.nbdbuffer > sizeof(WCMApListHeader))) {
        p = pHeader->head;
        while (p) {
            if (WCM_CompareBssID(((WMBssDesc *)(p->data))->bssid, bssid)) {
                break;
            }

            p = p->next;
        }
    }

    return p;
}

static WCMApList * WcmSearchIndexedApList (u32 index) {
    WCMWork * w = WCMi_GetSystemWork();
    WCMApListHeader * pHeader = (WCMApListHeader *)(w->config.pbdbuffer);
    WCMApList * p = NULL;

    if ((pHeader != NULL) && (w->config.nbdbuffer > sizeof(WCMApListHeader))) {
        p = pHeader->head;
        while (p) {
            if (p->index == index) {
                break;
            }

            p = p->next;
        }
    }

    return p;
}

static void WcmAppendApList (WCMApList * aplist) {
    WCMWork * w = WCMi_GetSystemWork();
    WCMApListHeader * pHeader = (WCMApListHeader *)(w->config.pbdbuffer);
    WCMApList * p = NULL;

    if (aplist == NULL) {
        return;
    }

    if ((pHeader != NULL) && (w->config.nbdbuffer > sizeof(WCMApListHeader))) {
        p = pHeader->head;
        while (p) {
            if (p == aplist) {
                if (p->previous) {
                    ((WCMApList *)(p->previous))->next = p->next;
                } else {
                    pHeader->head = p->next;
                }

                if (p->next) {
                    ((WCMApList *)(p->next))->previous = p->previous;
                } else {
                    pHeader->tail = p->previous;
                }
                break;
            }

            p = p->next;
        }

        aplist->next = NULL;
        aplist->previous = pHeader->tail;
        pHeader->tail = aplist;
        if (aplist->previous) {
            ((WCMApList *)(aplist->previous))->next = aplist;
        } else {
            pHeader->head = aplist;
        }

        if (p == NULL) {
            aplist->index = pHeader->count;
            pHeader->count++;
        }
    }
}
