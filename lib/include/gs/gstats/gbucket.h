#ifndef _GBUCKET_H_
#define _GBUCKET_H_

#ifdef __cplusplus
extern "C" {
#endif

#define bstring(a) ((void *)a)

typedef struct bucketset_s * bucketset_t;

typedef enum {
    bt_int, bt_float, bt_string
} BucketType;

bucketset_t NewBucketSet(void);
void FreeBucketSet(bucketset_t set);
char * DumpBucketSet(bucketset_t set);
void * BucketNew(bucketset_t set, char * name, BucketType type, void * initialvalue);
void * BucketSet(bucketset_t set, char * name, void * value);
void * BucketAdd(bucketset_t set, char * name, void * value);
void * BucketSub(bucketset_t set, char * name, void * value);
void * BucketMult(bucketset_t set, char * name, void * value);
void * BucketDiv(bucketset_t set, char * name, void * value);
void * BucketConcat(bucketset_t set, char * name, void * value);
void * BucketAvg(bucketset_t set, char * name, void * value);
void * BucketGet(bucketset_t set, char * name);
void * bint(int i);
void * bfloat(double f);

#ifdef __cplusplus
}
#endif

#endif
