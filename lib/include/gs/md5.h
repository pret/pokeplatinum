#ifndef _MD5_H_
#define _MD5_H_

#ifdef __cplusplus
extern "C" {
#endif

#ifndef PROTOTYPES
#define PROTOTYPES 1
#endif

typedef unsigned char * POINTER;
typedef unsigned short int UINT2;
typedef unsigned int UINT4;

#if PROTOTYPES
#define PROTO_LIST(list) list
#else
#define PROTO_LIST(list) ()
#endif

typedef struct {
    UINT4 state[4];
    UINT4 count[2];
    unsigned char buffer[64];
} MD5_CTX;

void MD5Init PROTO_LIST((MD5_CTX *));
void MD5Update PROTO_LIST((MD5_CTX *, unsigned char *, unsigned int));
void MD5Final PROTO_LIST((unsigned char [16], MD5_CTX *));
void MD5Print PROTO_LIST((unsigned char [16], char[33]));
void MD5Digest PROTO_LIST((unsigned char *, unsigned int, char[33]));

#ifdef __cplusplus
}
#endif

#endif
