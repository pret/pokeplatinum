#include <ansi_params.h>

#ifndef _MSL_POOL_ALLOC_H
#define _MSL_POOL_ALLOC_H

#include <size_t.h>

#pragma options align=native

#define __heap_version 2

_MSL_BEGIN_EXTERN_C

void * __sys_alloc(__std(size_t));
void __sys_free(void *);

__std(size_t) __sys_pointer_size(void * ptr);

typedef struct __mem_pool {
    void * reserved[14];
} __mem_pool;

void __init_pool_obj(__mem_pool * pool_obj);
void * __pool_alloc(__mem_pool * pool_obj, __std(size_t)size);
void __pool_free(__mem_pool * pool_obj, void * ptr);
void * __pool_realloc(__mem_pool * pool_obj, void * ptr, __std(size_t)size);
void * __pool_alloc_clear(__mem_pool * pool_obj, __std(size_t)size);
void __pool_free_all(__mem_pool * pool);
void __malloc_free_all(void);

_MSL_END_EXTERN_C

#pragma options align=reset

#endif

