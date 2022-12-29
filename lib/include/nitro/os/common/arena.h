#ifndef NITRO_OS_ARENA_H_
#define NITRO_OS_ARENA_H_

#include <nitro/misc.h>
#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef enum {
    OS_ARENA_MAIN = 0,
    OS_ARENA_MAIN_SUBPRIV = 1,
    OS_ARENA_MAINEX = 2,
    OS_ARENA_ITCM = 3,
    OS_ARENA_DTCM = 4,
    OS_ARENA_SHARED = 5,
    OS_ARENA_WRAM_MAIN = 6,
    OS_ARENA_WRAM_SUB = 7,
    OS_ARENA_WRAM_SUBPRIV = 8,

    OS_ARENA_MAX = 9
} OSArenaId;

typedef struct {
    void * lo[OS_ARENA_MAX];
    void * hi[OS_ARENA_MAX];
    u16 initialized;
    u8 padding[2];
} OSArenaInfo;

void OS_InitArena(void);

#ifdef SDK_ARM9
void OS_InitArenaEx(void);
#endif

void * OS_GetArenaInfo(void);

void * OS_GetArenaHi(OSArenaId id);
void * OS_GetArenaLo(OSArenaId id);

void * OS_GetInitArenaHi(OSArenaId id);
void * OS_GetInitArenaLo(OSArenaId id);

void OS_SetArenaHi(OSArenaId id, void * newHi);
void OS_SetArenaLo(OSArenaId id, void * newLo);

void * OS_AllocFromArenaLo(OSArenaId id, u32 size, u32 align);

void * OS_AllocFromArenaHi(OSArenaId id, u32 size, u32 align);

static inline void OS_SetMainArenaHi (void * newHi)
{
    OS_SetArenaHi(OS_ARENA_MAIN, newHi);
}
static inline void OS_SetMainArenaLo (void * newLo)
{
    OS_SetArenaLo(OS_ARENA_MAIN, newLo);
}

static inline void * OS_GetMainArenaHi (void)
{
    return OS_GetArenaHi(OS_ARENA_MAIN);
}
static inline void * OS_GetMainArenaLo (void)
{
    return OS_GetArenaLo(OS_ARENA_MAIN);
}

static inline void * OS_AllocFromMainArenaLo (u32 size, u32 align)
{
    return OS_AllocFromArenaLo(OS_ARENA_MAIN, size, align);
}
static inline void * OS_AllocFromMainArenaHi (u32 size, u32 align)
{
    return OS_AllocFromArenaHi(OS_ARENA_MAIN, size, align);
}

static inline void OS_SetSubPrivArenaHi (void * newHi)
{
    OS_SetArenaHi(OS_ARENA_MAIN_SUBPRIV, newHi);
}
static inline void OS_SetSubPrivArenaLo (void * newLo)
{
    OS_SetArenaLo(OS_ARENA_MAIN_SUBPRIV, newLo);
}

static inline void * OS_GetSubPrivArenaHi (void)
{
    return OS_GetArenaHi(OS_ARENA_MAIN_SUBPRIV);
}
static inline void * OS_GetSubPrivArenaLo (void)
{
    return OS_GetArenaLo(OS_ARENA_MAIN_SUBPRIV);
}

static inline void * OS_AllocFromSubPrivArenaLo (u32 size, u32 align)
{
    return OS_AllocFromArenaLo(OS_ARENA_MAIN_SUBPRIV, size, align);
}
static inline void * OS_AllocFromSubPrivArenaHi (u32 size, u32 align)
{
    return OS_AllocFromArenaHi(OS_ARENA_MAIN_SUBPRIV, size, align);
}

static inline void OS_SetMainExArenaHi (void * newHi)
{
    OS_SetArenaHi(OS_ARENA_MAINEX, newHi);
}
static inline void OS_SetMainExArenaLo (void * newLo)
{
    OS_SetArenaLo(OS_ARENA_MAINEX, newLo);
}

static inline void * OS_GetMainExArenaHi (void)
{
    return OS_GetArenaHi(OS_ARENA_MAINEX);
}
static inline void * OS_GetMainExArenaLo (void)
{
    return OS_GetArenaLo(OS_ARENA_MAINEX);
}

static inline void * OS_AllocFromMainExArenaLo (u32 size, u32 align)
{
    return OS_AllocFromArenaLo(OS_ARENA_MAINEX, size, align);
}
static inline void * OS_AllocFromMainExArenaHi (u32 size, u32 align)
{
    return OS_AllocFromArenaHi(OS_ARENA_MAINEX, size, align);
}

static inline void OS_SetITCMArenaHi (void * newHi)
{
    OS_SetArenaHi(OS_ARENA_ITCM, newHi);
}
static inline void OS_SetITCMArenaLo (void * newLo)
{
    OS_SetArenaLo(OS_ARENA_ITCM, newLo);
}

static inline void * OS_GetITCMArenaHi (void)
{
    return OS_GetArenaHi(OS_ARENA_ITCM);
}
static inline void * OS_GetITCMArenaLo (void)
{
    return OS_GetArenaLo(OS_ARENA_ITCM);
}

static inline void * OS_AllocFromITCMArenaLo (u32 size, u32 align)
{
    return OS_AllocFromArenaLo(OS_ARENA_ITCM, size, align);
}
static inline void * OS_AllocFromITCMArenaHi (u32 size, u32 align)
{
    return OS_AllocFromArenaHi(OS_ARENA_ITCM, size, align);
}

static inline void OS_SetDTCMArenaHi (void * newHi)
{
    OS_SetArenaHi(OS_ARENA_DTCM, newHi);
}
static inline void OS_SetDTCMArenaLo (void * newLo)
{
    OS_SetArenaLo(OS_ARENA_DTCM, newLo);
}

static inline void * OS_GetDTCMArenaHi (void)
{
    return OS_GetArenaHi(OS_ARENA_DTCM);
}
static inline void * OS_GetDTCMArenaLo (void)
{
    return OS_GetArenaLo(OS_ARENA_DTCM);
}

static inline void * OS_AllocFromDTCMArenaLo (u32 size, u32 align)
{
    return OS_AllocFromArenaLo(OS_ARENA_DTCM, size, align);
}
static inline void * OS_AllocFromDTCMArenaHi (u32 size, u32 align)
{
    return OS_AllocFromArenaHi(OS_ARENA_DTCM, size, align);
}

static inline void OS_SetSharedArenaHi (void * newHi)
{
    OS_SetArenaHi(OS_ARENA_SHARED, newHi);
}
static inline void OS_SetSharedArenaLo (void * newLo)
{
    OS_SetArenaLo(OS_ARENA_SHARED, newLo);
}

static inline void * OS_GetSharedArenaHi (void)
{
    return OS_GetArenaHi(OS_ARENA_SHARED);
}
static inline void * OS_GetSharedArenaLo (void)
{
    return OS_GetArenaLo(OS_ARENA_SHARED);
}

static inline void * OS_AllocFromSharedArenaLo (u32 size, u32 align)
{
    return OS_AllocFromArenaLo(OS_ARENA_SHARED, size, align);
}
static inline void * OS_AllocFromSharedArenaHi (u32 size, u32 align)
{
    return OS_AllocFromArenaHi(OS_ARENA_SHARED, size, align);
}

static inline void OS_SetWramMainArenaHi (void * newHi)
{
    OS_SetArenaHi(OS_ARENA_WRAM_MAIN, newHi);
}
static inline void OS_SetWramMainArenaLo (void * newLo)
{
    OS_SetArenaLo(OS_ARENA_WRAM_MAIN, newLo);
}

static inline void * OS_GetWramMainArenaHi (void)
{
    return OS_GetArenaHi(OS_ARENA_WRAM_MAIN);
}
static inline void * OS_GetWramMainArenaLo (void)
{
    return OS_GetArenaLo(OS_ARENA_WRAM_MAIN);
}

static inline void * OS_AllocFromWramMainArenaLo (u32 size, u32 align)
{
    return OS_AllocFromArenaLo(OS_ARENA_WRAM_MAIN, size, align);
}
static inline void * OS_AllocFromWramMainArenaHi (u32 size, u32 align)
{
    return OS_AllocFromArenaHi(OS_ARENA_WRAM_MAIN, size, align);
}

static inline void OS_SetWramSubArenaHi (void * newHi)
{
    OS_SetArenaHi(OS_ARENA_WRAM_SUB, newHi);
}
static inline void OS_SetWramSubArenaLo (void * newLo)
{
    OS_SetArenaLo(OS_ARENA_WRAM_SUB, newLo);
}

static inline void * OS_GetWramSubArenaHi (void)
{
    return OS_GetArenaHi(OS_ARENA_WRAM_SUB);
}
static inline void * OS_GetWramSubArenaLo (void)
{
    return OS_GetArenaLo(OS_ARENA_WRAM_SUB);
}

static inline void * OS_AllocFromWramSubArenaLo (u32 size, u32 align)
{
    return OS_AllocFromArenaLo(OS_ARENA_WRAM_SUB, size, align);
}
static inline void * OS_AllocFromWramSubArenaHi (u32 size, u32 align)
{
    return OS_AllocFromArenaHi(OS_ARENA_WRAM_SUB, size, align);
}

static inline void OS_SetWramSubPrivArenaHi (void * newHi)
{
    OS_SetArenaHi(OS_ARENA_WRAM_SUBPRIV, newHi);
}
static inline void OS_SetWramSubPrivArenaLo (void * newLo)
{
    OS_SetArenaLo(OS_ARENA_WRAM_SUBPRIV, newLo);
}

static inline void * OS_GetWramSubPrivArenaHi (void)
{
    return OS_GetArenaHi(OS_ARENA_WRAM_SUBPRIV);
}
static inline void * OS_GetWramSubPrivArenaLo (void)
{
    return OS_GetArenaLo(OS_ARENA_WRAM_SUBPRIV);
}

static inline void * OS_AllocFromWramSubPrivArenaLo (u32 size, u32 align)
{
    return OS_AllocFromArenaLo(OS_ARENA_WRAM_SUBPRIV, size, align);
}
static inline void * OS_AllocFromWramSubPrivArenaHi (u32 size, u32 align)
{
    return OS_AllocFromArenaHi(OS_ARENA_WRAM_SUBPRIV, size, align);
}

static inline void OS_InitArenaHi (OSArenaId id)
{
    OS_SetArenaHi((id), OS_GetInitArenaHi((OSArenaId)id));
}

static inline void OS_InitArenaLo (OSArenaId id)
{
    OS_SetArenaLo((id), OS_GetInitArenaLo(id));
}

static inline void OS_InitArenaHiAndLo (OSArenaId id)
{
    OS_InitArenaHi(id);
    OS_InitArenaLo(id);
}

#ifdef SDK_ARM9

void OS_EnableMainExArena(void);

void OS_DisableMainExArena(void);
#endif

#ifdef __cplusplus
}
#endif

#endif
