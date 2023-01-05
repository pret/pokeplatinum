#ifndef NINET_NWBASE_MD5_H_
#define NINET_NWBASE_MD5_H_

#ifdef __cplusplus

extern "C" {
#endif

#include <nitro/math.h>

typedef struct {
    unsigned long state[4];
    unsigned long count[2];
    unsigned char buffer[64];
} MD5_CTX;

void MD5Init(MD5_CTX * context);
void MD5Update(MD5_CTX * context, unsigned char * buf, unsigned int len);
void MD5Final(unsigned char digest[16], MD5_CTX * context);

#ifdef __cplusplus
}
#endif

#endif
