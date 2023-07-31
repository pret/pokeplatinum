#include <nitro.h>

#include "mb_cache.h"

void MBi_InitCache (MBiCacheList * pl) {
    MI_CpuClear8(pl, sizeof(*pl));
}

void MBi_AttachCacheBuffer (MBiCacheList * pl, u32 src, u32 len, void * ptr, u32 state) {
    OSIntrMode bak_cpsr = OS_DisableInterrupts();
    {
        MBiCacheInfo * pi = pl->list;
        for (;; ++pi) {
            if (pi >= &pl->list[MB_CACHE_INFO_MAX]) {
                OS_TPanic("MBi_AttachCacheBuffer() failed! (over maximum count)");
            }
            if (pi->state == MB_CACHE_STATE_EMPTY) {
                pi->src = src;
                pi->len = len;
                pi->ptr = (u8 *)ptr;
                pi->state = state;
                break;
            }
        }
    }
    (void)OS_RestoreInterrupts(bak_cpsr);
}

BOOL MBi_ReadFromCache (MBiCacheList * pl, u32 src, void * dst, u32 len) {
    BOOL ret = FALSE;
    OSIntrMode bak_cpsr = OS_DisableInterrupts();
    {
        const MBiCacheInfo * pi = pl->list;
        for (; pi < &pl->list[MB_CACHE_INFO_MAX]; ++pi) {
            if (pi->state >= MB_CACHE_STATE_READY) {
                const int ofs = (int)(src - pi->src);
                if ((ofs >= 0) && (ofs + len <= pi->len)) {
                    MI_CpuCopy8(pi->ptr + ofs, dst, len);
                    pl->lifetime = 0;
                    ret = TRUE;
                    break;
                }
            }
        }
    }
    (void)OS_RestoreInterrupts(bak_cpsr);
    return ret;
}

BOOL MBi_TryLoadCache (MBiCacheList * pl, u32 src, u32 len) {
    BOOL ret = FALSE;
    OSIntrMode bak_cpsr = OS_DisableInterrupts();
    {
        MBiCacheInfo * trg = NULL;
        MBiCacheInfo * pi = pl->list;
        for (; pi < &pl->list[MB_CACHE_INFO_MAX]; ++pi) {
            if (pi->state == MB_CACHE_STATE_READY) {
                if (!trg || (trg->src > pi->src)) {
                    trg = pi;
                }
            }
        }

        if (trg) {
            (void)src;
            (void)len;
        }
        OS_TPanic("reload-system is not yet!");
    }
    (void)OS_RestoreInterrupts(bak_cpsr);
    return ret;
}
