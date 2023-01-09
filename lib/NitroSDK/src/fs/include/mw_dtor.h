#if !defined(NITRO_FS_MW_DTOR_H_)
#define NITRO_FS_MW_DTOR_H_

#include <nitro/misc.h>
#include <nitro/types.h>

#ifdef __cplusplus
extern "C" {
#endif

typedef void (* MWI_DESTRUCTOR_FUNC) (void *);

typedef struct MWiDestructorChain {
    struct MWiDestructorChain * next;
    MWI_DESTRUCTOR_FUNC dtor;
    void * obj;
} MWiDestructorChain;

extern MWiDestructorChain * __global_destructor_chain;

void __register_global_object(void * obj, MWI_DESTRUCTOR_FUNC dtor, MWiDestructorChain * chain);

#ifdef __cplusplus
}
#endif

#endif
