#include "http/http_b64.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#define ENC_SEED_ENC_MAGIC 0x4A3B2C1D

static int sEncryptStreamState;

static void SeedKeyStream(u32 seed)
{
    sEncryptStreamState = seed | (seed << 16);
}

static u8 KeyStreamNext(void)
{
    sEncryptStreamState = (69 * sEncryptStreamState + 4369) % 0x80000000;
    return (sEncryptStreamState >> 16) & 0xff;
}

enum HTTPB64EncodeResult HTTPB64_EncryptAndEncodeB64(u32 dwcProfileID, const u8 *in, int length, u8 *out, int outSize)
{
    u8 *buffer;
    u32 encryptionSeed = 0;
    int i;

    if (outSize < (int)HTTPB64_CalcEncodedSize(length + 8) + 1) {
        return HTTP_B64_ENCORE_ERROR_INSUFFICIENT_BUFFER_SIZE;
    }

    buffer = DWC_Alloc(10, length + 8);

    if (buffer == NULL) {
        return HTTP_B64_ENCODE_ERROR_ALLOC_FAIL;
    }

    encryptionSeed += (u8)((dwcProfileID >> 24) & 0xff);
    encryptionSeed += (u8)((dwcProfileID >> 16) & 0xff);
    encryptionSeed += (u8)((dwcProfileID >> 8) & 0xff);
    encryptionSeed += (u8)((dwcProfileID >> 0) & 0xff);

    for (i = 0; i < length; i++) {
        encryptionSeed += in[i];
    }

    SeedKeyStream(encryptionSeed);

    buffer[4] = ((dwcProfileID >> 0) & 0xff) ^ KeyStreamNext();
    buffer[5] = ((dwcProfileID >> 8) & 0xff) ^ KeyStreamNext();
    buffer[6] = ((dwcProfileID >> 16) & 0xff) ^ KeyStreamNext();
    buffer[7] = ((dwcProfileID >> 24) & 0xff) ^ KeyStreamNext();

    for (i = 0; i < length; i++) {
        buffer[8 + i] = in[i] ^ KeyStreamNext();
    }

    encryptionSeed ^= ENC_SEED_ENC_MAGIC;

    buffer[0] = (encryptionSeed >> 24) & 0xff;
    buffer[1] = (encryptionSeed >> 16) & 0xff;
    buffer[2] = (encryptionSeed >> 8) & 0xff;
    buffer[3] = (encryptionSeed >> 0) & 0xff;

    B64Encode(buffer, out, length + 8, 2);

    out[HTTPB64_CalcEncodedSize(length + 8)] = '\0';

    DWC_Free(10, buffer, 0);

    return HTTP_B64_ENCODE_SUCCESS;
}

u32 HTTPB64_CalcEncodedSize(u32 decodedSize)
{
    u32 padding = (decodedSize % 3 != 0) ? 1 : 0;
    return (decodedSize / 3 + padding) * 4;
}
