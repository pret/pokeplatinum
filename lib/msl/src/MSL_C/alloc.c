#include <pool_alloc.h>

void * malloc (size_t size)
{
    if (size == 0) {
        return 0;
    }

    return __sys_alloc(size);
}

void free (void * ptr)
{
    if (ptr != 0) {
        __sys_free(ptr);
    }
}

