#ifndef NITRO_MATH_RAND_H_
#define NITRO_MATH_RAND_H_

#ifdef __cplusplus
extern "C" {
#endif

typedef struct {
    u64 x;
    u64 mul;
    u64 add;
} MATHRandContext32;

typedef struct {
    u32 x;
    u32 mul;
    u32 add;
} MATHRandContext16;

#ifdef __cplusplus
}
#endif

#endif
