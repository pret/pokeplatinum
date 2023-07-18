#include <ninet/nwbase/md5.h>

void MD5Init (MD5_CTX * context) {
    MATH_MD5Init((MATHMD5Context *)context);
}

void MD5Update (MD5_CTX * context, unsigned char * buf, unsigned int len) {
    MATH_MD5Update((MATHMD5Context *)context, (const void *)buf, len);
}

void MD5Final (unsigned char digest[16], MD5_CTX * context) {
    MATH_MD5GetHash((MATHMD5Context *)context, (void *)digest);
}
