#ifndef POKEPLATINUM_HTTP_HTTP_B64_H
#define POKEPLATINUM_HTTP_HTTP_B64_H

enum HTTPB64EncodeResult {
    HTTP_B64_ENCODE_SUCCESS = 0,
    HTTP_B64_ENCODE_ERROR_ALLOC_FAIL,
    HTTP_B64_ENCORE_ERROR_INSUFFICIENT_BUFFER_SIZE,
};

enum HTTPB64EncodeResult HTTPB64_EncryptAndEncodeB64(u32 dwcProfileID, const u8 *in, int length, u8 *out, int outSize);
u32 HTTPB64_CalcEncodedSize(u32 decodedSize);

#endif // POKEPLATINUM_HTTP_HTTP_B64_H
