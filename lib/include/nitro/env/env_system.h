#ifndef NITRO_ENV_SYSTEM_H_
#define NITRO_ENV_SYSTEM_H_

#if !(defined(SDK_WIN32) || defined(SDK_FROM_TOOL))
#include <nitro.h>
#endif

#ifdef __cplusplus
extern "C" {
#endif

#define ENV_CLASS_NAME_MAX 64
#define ENV_MEMBER_NAME_MAX 64

#define ENV_RESTYPE_RES_MASK 0xff
#define ENV_RESTYPE_OFFSET_MASK 0x100

#define ENV_RESTYPE_NONE ((ENVType)0x0)
#define ENV_RESTYPE_STRING ((ENVType)0x1)
#define ENV_RESTYPE_BINARY ((ENVType)0x2)
#define ENV_RESTYPE_S8 ((ENVType)0x3)
#define ENV_RESTYPE_U8 ((ENVType)0x4)
#define ENV_RESTYPE_S16 ((ENVType)0x5)
#define ENV_RESTYPE_U16 ((ENVType)0x6)
#define ENV_RESTYPE_S32 ((ENVType)0x7)
#define ENV_RESTYPE_U32 ((ENVType)0x8)
#define ENV_RESTYPE_BOOL ((ENVType)0x9)
#define ENV_RESTYPE_S64 ((ENVType)0xa)
#define ENV_RESTYPE_U64 ((ENVType)0xb)
#define ENV_RESTYPE_OFFSET_STRING ((ENVType)(ENV_RESTYPE_OFFSET_MASK | ENV_RESTYPE_STRING))
#define ENV_RESTYPE_OFFSET_BINARY ((ENV_RESTYPE_OFFSET_MASK | ENV_RESTYPE_BINARY))
#define ENV_RESTYPE_OFFSET_S64 ((ENVType)(ENV_RESTYPE_OFFSET_MASK | ENV_RESTYPE_S64))
#define ENV_RESTYPE_OFFSET_U64 ((ENVType)(ENV_RESTYPE_OFFSET_MASK | ENV_RESTYPE_U64))

#define ENVi_RESTYPE_U64HALF 100
#define ENVi_RESTYPE_LINK 255

#define ENVi_DUMMY_FOR_U64 "@DUMMY@"

#define ENV_STRING(X) sizeof(X), ENV_RESTYPE_STRING, (void *)(X)
#define ENV_BINARY(X) sizeof(X) - 1, ENV_RESTYPE_BINARY, (void *)(X)
#define ENV_S8(X) sizeof(s8), ENV_RESTYPE_S8, (void *)(X)
#define ENV_U8(X) sizeof(u8), ENV_RESTYPE_U8, (void *)(X)
#define ENV_S16(X) sizeof(s16), ENV_RESTYPE_S16, (void *)(X)
#define ENV_U16(X) sizeof(u16), ENV_RESTYPE_U16, (void *)(X)
#define ENV_S32(X) sizeof(s32), ENV_RESTYPE_S32, (void *)(X)
#define ENV_U32(X) sizeof(u32), ENV_RESTYPE_U32, (void *)(X)
#define ENV_BOOL(X) sizeof(BOOL), ENV_RESTYPE_BOOL, (void *)(X)

#define ENV_S64(X) sizeof(u32), ENV_RESTYPE_S64, (void *)((X) & 0xffffffff), \
    ENVi_DUMMY_FOR_U64, sizeof(u32), ENVi_RESTYPE_U64HALF, (void *)((X) >> 32)

#define ENV_U64(X) sizeof(u32), ENV_RESTYPE_U64, (void *)((X) & 0xffffffff), \
    ENVi_DUMMY_FOR_U64, sizeof(u32), ENVi_RESTYPE_U64HALF, (void *)((X) >> 32)

#define ENV_RESOURCE_START {NULL, 0, ENVi_RESTYPE_LINK, NULL}
#define ENV_RESOURCE_END {NULL, 0, ENV_RESTYPE_NONE, NULL}

#define ENV_RESOURCE_SET_MAX 8

typedef u16 ENVType;

typedef struct ENVResource ENVResource;
struct ENVResource {
    char * name;
    u16 len;
    ENVType type;
    void * ptr;
};

typedef struct ENVResourceSetLink ENVResourceSetLink;
struct ENVResourceSetLink {
    ENVResourceSetLink * next;
    ENVResource * array;
};

typedef struct ENVResourceIter ENVResourceIter;
struct ENVResourceIter {
    ENVResourceSetLink * link;
    ENVResource * ptr;
    int count;

    void * supData;
};

static inline char * ENV_GetResourceName (ENVResource * res)
{
    return res->name;
}
static inline u16 ENV_GetResourceLen (ENVResource * res)
{
    return res->len;
}
static inline ENVType ENV_GetResourceType (ENVResource * res)
{
    return res->type;
}
static inline void * ENV_GetResourcePtr (ENVResource * res)
{
    return res->ptr;
}

extern void ENV_Init(void);

extern void ENV_AppendResourceSet(ENVResource * resSet);

extern void ENV_PrependResourceSet(ENVResource * resSet);

extern void ENV_InsertResourceSet(ENVResource * standardResSet, ENVResource * resSet);

extern void ENV_SetResourceSet(ENVResource * resSet);

extern ENVResourceSetLink * ENV_GetResourceSetLinkHead(void);

extern ENVResourceSetLink * ENV_GetNextResourceSet(ENVResourceSetLink * link);

extern void ENV_SetClass(const char * className);

extern char * ENV_GetClass(void);

extern ENVResource * ENVi_SearchByMemberName(const char * memberName, ENVResource ** resSetPtr);

static inline ENVResource * ENV_SearchByMemberName (const char * memberName)
{
    return ENVi_SearchByMemberName(memberName, NULL);
}

extern ENVResource * ENVi_SearchByFullName(const char * fullName, ENVResource ** resSetPtr);

static inline ENVResource * ENV_SearchByFullName (const char * fullName)
{
    return ENVi_SearchByFullName(fullName, NULL);
}

extern ENVResource * ENVi_Search(const char * name, ENVResource ** resSetPtr);

static inline ENVResource * ENV_Search (const char * name)
{
    return ENVi_Search(name, NULL);
}

extern void * ENVi_GetPtrAndLength(const char * name, int * len);

static inline void * ENV_GetPtr (const char * name)
{
    return ENVi_GetPtrAndLength(name, NULL);
}

extern ENVType ENV_GetType(const char * name);

extern int ENV_GetSize(const char * name);

extern ENVResource * ENV_GetBelongingResourceSet(ENVResource * res);

static inline BOOL ENV_GetString (const char * name, char ** retPtr)
{
    char * strPtr = (char *)ENV_GetPtr(name);
    *retPtr = strPtr;
    return (strPtr != NULL);
}

static inline BOOL ENV_GetStringAndLength (const char * name, char ** retPtr, int * len)
{
    char * strPtr = (char *)ENVi_GetPtrAndLength(name, len);
    *retPtr = strPtr;
    return (strPtr != NULL);
}

static inline BOOL ENV_GetBinary (const char * name, void ** retPtr)
{
    void * binPtr = (void *)ENV_GetPtr(name);
    *retPtr = binPtr;
    return (binPtr != NULL);
}

static inline BOOL ENV_GetBinaryAndSize (const char * name, void ** retPtr, int * size)
{
    void * binPtr = (void *)ENVi_GetPtrAndLength(name, size);
    *retPtr = binPtr;
    return (binPtr != NULL);
}

static inline BOOL ENV_GetU8 (const char * name, u8 * retVal)
{
    int len;
    u32 val = (u32)ENVi_GetPtrAndLength(name, &len);
    if (!len) {
        return FALSE;
    } else {
        *retVal = (u8)val;
        return TRUE;
    }
}

static inline BOOL ENV_GetS8 (const char * name, s8 * retVal)
{
    int len;
    u32 val = (u32)ENVi_GetPtrAndLength(name, &len);
    if (!len) {
        return FALSE;
    } else {
        *retVal = (s8)val;
        return TRUE;
    }
}

static inline BOOL ENV_GetU16 (const char * name, u16 * retVal)
{
    int len;
    u32 val = (u32)ENVi_GetPtrAndLength(name, &len);
    if (!len) {
        return FALSE;
    } else {
        *retVal = (u16)val;
        return TRUE;
    }
}

static inline BOOL ENV_GetS16 (const char * name, s16 * retVal)
{
    int len;
    u32 val = (u32)ENVi_GetPtrAndLength(name, &len);
    if (!len) {
        return FALSE;
    } else {
        *retVal = (s16)val;
        return TRUE;
    }
}

static inline BOOL ENV_GetU32 (const char * name, u32 * retVal)
{
    int len;
    u32 val = (u32)ENVi_GetPtrAndLength(name, &len);
    if (!len) {
        return FALSE;
    } else {
        *retVal = (u32)val;
        return TRUE;
    }
}

static inline BOOL ENV_GetS32 (const char * name, s32 * retVal)
{
    int len;
    u32 val = (u32)ENVi_GetPtrAndLength(name, &len);
    if (!len) {
        return FALSE;
    } else {
        *retVal = (s32)val;
        return TRUE;
    }
}

static inline BOOL ENV_GetBOOL (const char * name, BOOL * retVal)
{
    int len;
    u32 val = (u32)ENVi_GetPtrAndLength(name, &len);
    if (!len) {
        return FALSE;
    } else {
        *retVal = (BOOL)(val ? TRUE : FALSE);
        return TRUE;
    }
}

extern BOOL ENV_GetU64(const char * name, u64 * retVal);

static inline BOOL ENV_GetS64 (const char * name, s64 * retVal)
{
    return ENV_GetU64(name, (u64 *)retVal);
}

extern void ENV_InitIter(ENVResourceIter * iter);

extern ENVResource * ENV_SearchByClass(ENVResourceIter * iter, const char * className);

extern ENVResource * ENV_SearchByMember(ENVResourceIter * iter, const char * memberName);

extern ENVResource * ENV_SearchByType(ENVResourceIter * iter, ENVType type);

extern ENVResource * ENV_SearchByPartialName(ENVResourceIter * iter, const char * partialName);

extern void ENV_SetResoruceSetArray(ENVResource * array[]);

static inline ENVResource * ENV_GetLastResourceSetFromIter (ENVResourceIter * iter)
{
    SDK_ASSERT(iter);
    return (iter->link) ? iter->link->array : NULL;
}

#ifdef __cplusplus
}
#endif

#endif
