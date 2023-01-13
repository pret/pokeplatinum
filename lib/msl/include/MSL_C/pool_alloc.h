#include <ansi_params.h>

#if !(defined(_MSL_CLASSIC_MALLOC) || defined(_MSL_PRO4_MALLOC))

    #ifndef _MSL_POOL_ALLOC_H
    #define _MSL_POOL_ALLOC_H

    #include <ansi_params.h>
    #include <size_t.h>

    #pragma options align=native

    #define __heap_version 2

_MSL_BEGIN_EXTERN_C

void * _MSL_CDECL __sys_alloc(__std(size_t));
void _MSL_CDECL __sys_free(void *);

__std(size_t) _MSL_CDECL __sys_pointer_size(void * ptr);

typedef struct __mem_pool {
    void * reserved[14];
} __mem_pool;

_MSL_IMP_EXP_C void _MSL_CDECL __init_pool_obj(__mem_pool * pool_obj) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void * _MSL_CDECL __pool_alloc(__mem_pool * pool_obj, __std(size_t) size) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void _MSL_CDECL __pool_free(__mem_pool * pool_obj, void * ptr) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void * _MSL_CDECL __pool_realloc(__mem_pool * pool_obj, void * ptr, __std(size_t) size) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void * _MSL_CDECL __pool_alloc_clear(__mem_pool * pool_obj, __std(size_t) size) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void _MSL_CDECL __pool_free_all(__mem_pool * pool) _MSL_CANT_THROW;
_MSL_IMP_EXP_C void _MSL_CDECL __malloc_free_all(void) _MSL_CANT_THROW;

    #if !_MSL_OS_ALLOC_SUPPORT
_MSL_IMP_EXP_C int _MSL_CDECL init_alloc(void *, __std(size_t) heap_size) _MSL_CANT_THROW;
    #endif

_MSL_END_EXTERN_C

    #pragma options align=reset

    #endif

#else

    #ifndef _MSL_POOL_ALLOC_H
    #define _MSL_POOL_ALLOC_H

    #include <ansi_params.h>

    #pragma options align=native

typedef signed long tag_word;

typedef struct block_header {
    tag_word tag;
    struct block_header * prev;
    struct block_header * next;
} block_header;

typedef struct list_header {
    block_header * rover;
    block_header header;
} list_header;

typedef struct heap_header {
    struct heap_header * prev;
    struct heap_header * next;
} heap_header;

    #ifdef __MIPS__
typedef unsigned int mem_size;
    #else
typedef unsigned long mem_size;
    #endif

struct mem_pool_obj;
typedef void *  (* sys_alloc_ptr)(mem_size, struct mem_pool_obj *);
typedef void (* sys_free_ptr)(void *, struct mem_pool_obj *);

typedef struct pool_options {
    sys_alloc_ptr sys_alloc_func;
    sys_free_ptr sys_free_func;
    mem_size min_heap_size;
    #ifndef __ALTIVEC__
    int always_search_first;
    #else
    char always_search_first;
    char block_alignment;
    char reserved1;
    char reserved2;
    #endif
} pool_options;

typedef struct mem_pool_obj {
    list_header free_list;
    #if _MSL_OS_ALLOC_SUPPORT
    pool_options options;
    heap_header * heap_list;
    void * userData;
    #endif
} mem_pool_obj;

    #define __heap_version 1

_MSL_BEGIN_EXTERN_C

_MSL_IMP_EXP_C extern mem_pool_obj __malloc_pool;

    #ifdef __ALTIVEC__
void _MSL_CDECL __init_align_pool_obj(mem_pool_obj * pool_obj, char align) _MSL_CANT_THROW;
    #endif

void _MSL_CDECL __init_pool_obj(mem_pool_obj * pool_obj) _MSL_CANT_THROW;
int _MSL_CDECL __pool_preallocate(mem_pool_obj * pool_obj, mem_size) _MSL_CANT_THROW;
void _MSL_CDECL __pool_preassign(mem_pool_obj * pool_obj, void *, mem_size) _MSL_CANT_THROW;
void * _MSL_CDECL __pool_alloc(mem_pool_obj * pool_obj, mem_size) _MSL_CANT_THROW;
void * _MSL_CDECL __pool_alloc_clear(mem_pool_obj * pool_obj, mem_size) _MSL_CANT_THROW;
void * _MSL_CDECL __pool_realloc(mem_pool_obj * pool_obj, void *, mem_size) _MSL_CANT_THROW;
void _MSL_CDECL __pool_free(mem_pool_obj * pool_obj, void *) _MSL_CANT_THROW;

_MSL_IMP_EXP_C void _MSL_CDECL __pool_free_all(mem_pool_obj * pool_obj) _MSL_CANT_THROW;

void * _MSL_CDECL __sys_alloc(mem_size, mem_pool_obj *) _MSL_CANT_THROW;
void _MSL_CDECL __sys_free(void *, mem_pool_obj *) _MSL_CANT_THROW;

    #if !_MSL_OS_ALLOC_SUPPORT
_MSL_IMP_EXP_C int _MSL_CDECL init_alloc(void *, mem_size) _MSL_CANT_THROW;
    #endif

_MSL_END_EXTERN_C

    #pragma options align=reset

    #endif

#endif
