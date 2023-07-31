#ifndef NITRO_DGT_COMMON_H_
#define NITRO_DGT_COMMON_H_

#ifdef __cplusplus
extern "C" {
#endif

#define DGT_HASH1_DIGEST_SIZE (128 / 8)
#define DGT_HASH2_DIGEST_SIZE (160 / 8)

#define DGT_HASH_DIGEST_SIZE_MAX DGT_HASH2_DIGEST_SIZE

#define DGT_HASH_BLOCK_SIZE (512 / 8)

#ifdef __cplusplus
}
#endif
#endif
