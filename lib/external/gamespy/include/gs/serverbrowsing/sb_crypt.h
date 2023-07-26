#ifndef _SB_CRYPT_H
#define _SB_CRYPT_H

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _GOACryptState {
    unsigned char cards[256];
    unsigned char rotor;
    unsigned char ratchet;
    unsigned char avalanche;
    unsigned char last_plain;
    unsigned char last_cipher;
} GOACryptState;

void GOACryptInit(GOACryptState * state, unsigned char * key, unsigned char keysize);
void GOAHashInit(GOACryptState * state);
unsigned char GOAEncryptByte(GOACryptState * state, unsigned char b);
void GOAEncrypt(GOACryptState * state, unsigned char * bp, int len);
unsigned char GOADecryptByte(GOACryptState * state, unsigned char b);
void GOADecrypt(GOACryptState * state, unsigned char * bp, int len);
void GOAHashFinal(GOACryptState * state, unsigned char * hash, unsigned char hashlength);

#ifdef __cplusplus
}
#endif

#endif
