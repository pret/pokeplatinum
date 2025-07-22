#include "overlay098/ov98_022499C8.h"

#include <dwc.h>
#include <nitro.h>
#include <string.h>

#include "constants/charcode.h"

#include "error_handling.h"
#include "heap.h"
#include "strbuf.h"

static const struct {
    u16 unk_00;
    char unk_02;
} Unk_ov98_02249D2C[] = {
    { 0x121, '0' },
    { 0x122, '1' },
    { 0x123, '2' },
    { 0x124, '3' },
    { 0x125, '4' },
    { 0x126, '5' },
    { 0x127, '6' },
    { 0x128, '7' },
    { 0x129, '8' },
    { 0x12a, '9' },
};

void ov98_022499C8(Strbuf *param0, char *param1, int heapID) {
    static const char Unk_ov98_02249D1C[] = "w";
    static const char Unk_ov98_02249D20[] = "@wii.com";
    int v0;
    charcode_t *v1;
    int v2 = 0, v3;

    for (v0 = 0; Unk_ov98_02249D1C[v0]; v2++) {
        param1[v2] = Unk_ov98_02249D1C[v0++];
    }

    v1 = Heap_AllocFromHeap(heapID, sizeof(charcode_t) * 100);
    Strbuf_ToChars(param0, v1, 100);

    v0 = 0;
    while (1) {
        if (v1[v0] == CHAR_EOS) {
            param1[v2] = '\0';
            break;
        }
        for (v3 = 0; v3 < NELEMS(Unk_ov98_02249D2C); v3++) {
            if (Unk_ov98_02249D2C[v3].unk_00 == v1[v0]) {
                param1[v2] = Unk_ov98_02249D2C[v3].unk_02;
                break;
            }
        }
        GF_ASSERT(v3 < NELEMS(Unk_ov98_02249D2C));
        v2++;
        v0++;
    }

    for (v0 = 0; Unk_ov98_02249D20[v0]; v2++) {
        param1[v2] = Unk_ov98_02249D20[v0++];
    }
    param1[v2] = '\0';
    Heap_Free(v1);
}

int ov98_02249A80(Strbuf *param0, int heapID) {
    charcode_t *v0;
    BOOL v1 = TRUE;
    int v2;

    v0 = Heap_AllocFromHeap(heapID, sizeof(charcode_t) * 100);
    Strbuf_ToChars(param0, v0, 100);

    for (v2 = 0; v0[v2] != CHAR_EOS; v2++) {
        if (v0[v2] != CHAR_0) {
            v1 = FALSE;
            break;
        }
    }

    Heap_Free(v0);
    return v1;
}

void ov98_02249ACC(const char *param0, u32 *param1, int param2) {
    int v0, v1;
    int v2 = 0;
    const char *v3;

    for (v0 = 0; v0 < 4; v0++) {
        param1[v0] = 0;
        for (v1 = 0; v1 < 4; v1++) {
            while (param0[v2] < '0' || param0[v2] > '9') {
                if (param0[v2] == '\0') {
                    GF_ASSERT(param0[v2] != '\0');
                    break;
                }
                v2++;
            }
            v3 = &param0[v2];
            param1[v0] *= 10;
            param1[v0] += *v3 - '0';
            v2++;
        }
    }
}
