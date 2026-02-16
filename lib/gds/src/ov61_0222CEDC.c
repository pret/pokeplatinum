#include <string.h>

#include "gds.h"
#include "gds_internal.h"

static void ov61_0222CFD4(void);

void ov61_0222CEDC(void)
{
    ov61_0222CFD4();
    memset(&Unk_ov61_0222E764.unk_00, 0, sizeof(UnkStruct_ov62_022349A8_sub1));
    Unk_ov61_0222E764.unk_138 = 0;
    Unk_ov61_0222E764.unk_140[0] = 0;
    Unk_ov61_0222E764.unk_240 = 0;
    ov61_0222D508();
    ov61_0222D53C();
}

BOOL ov61_0222CF40(char *url, int port, UnkStruct_ov62_022349A8_sub1 *param2)
{
    if (param2) {
        Unk_ov61_0222E764.unk_00 = *param2;
        Unk_ov61_0222E764.unk_138 = 0;
    }

    int v0 = ov61_0222D510();
    if (!v0) {
        return FALSE;
    }

    ov61_0222D4F0();
    strcpy(Unk_ov61_0222E764.unk_140, url);

    Unk_ov61_0222E764.unk_240 = port;
    Unk_ov61_0222E764.unk_258 = 0;
    Unk_ov61_0222E764.unk_26C = -1;
    ov61_0222CFD4();
    return TRUE;
}

static void ov61_0222CFD4(void)
{
    ov61_0222D770();

    if (Unk_ov61_0222E764.unk_258) {
        ov61_0222D4AC(Unk_ov61_0222E764.unk_258);
        Unk_ov61_0222E764.unk_258 = NULL;
    }

    Unk_ov61_0222E764.unk_244 = 15;
    Unk_ov61_0222E764.unk_248 = 30;
    Unk_ov61_0222E764.unk_24C = 30;

    Unk_ov61_0222E764.unk_254 = NULL;
    Unk_ov61_0222E764.unk_25C = 0;
    Unk_ov61_0222E764.unk_260 = NULL;
    Unk_ov61_0222E764.unk_264 = 0;
    Unk_ov61_0222E764.unk_268 = 0;

    Unk_ov61_0222E764.unk_13C = 1;
    Unk_ov61_0222E764.unk_250 = 0;
}

void ov61_0222D040(void)
{
    BOOL v0;
    int v1;

    while (TRUE) {
        v0 = FALSE;
        switch (Unk_ov61_0222E764.unk_13C) {
        case 0:
        case 1:
        case 7:
        case 8:
        case 9:
            v0 = TRUE;
            break;
        case 2:
            if (!ov61_0222DB98()) {
                if (Unk_ov61_0222E764.unk_250 == 13) {
                    v1 = 7;
                } else {
                    v1 = 9;
                }

                v0 = TRUE;
            } else {
                v1 = 3;
            }

            ov61_0222D4C8();
            Unk_ov61_0222E764.unk_13C = v1;
            break;
        case 3:
            if (!ov61_0222D6A0()) {
                if (Unk_ov61_0222E764.unk_250 == 13) {
                    v1 = 7;
                } else {
                    v1 = 9;
                }

                v0 = TRUE;
            } else {
                v1 = 4;
            }

            ov61_0222D4C8();
            Unk_ov61_0222E764.unk_13C = v1;
            break;
        case 4:
            if (!ov61_0222D7B0()) {
                if (Unk_ov61_0222E764.unk_250 == 13) {
                    v1 = 7;
                } else {
                    v1 = 9;
                }

                v0 = TRUE;
            } else {
                v1 = 5;
            }
            ov61_0222D4C8();
            Unk_ov61_0222E764.unk_13C = v1;
            break;
        case 5:
            if (!ov61_0222D8F8()) {
                if (Unk_ov61_0222E764.unk_250 == 13) {
                    v1 = 7;
                } else {
                    v1 = 9;
                }

                v0 = TRUE;
            } else {
                v1 = 6;
            }

            if (Unk_ov61_0222E764.unk_258 != 0) {
                ov61_0222D4AC(Unk_ov61_0222E764.unk_258);
                Unk_ov61_0222E764.unk_258 = 0;
            }

            ov61_0222D4C8();
            Unk_ov61_0222E764.unk_13C = v1;
            break;
        case 6:
            if (!ov61_0222DA0C()) {
                if (Unk_ov61_0222E764.unk_250 == 13) {
                    v1 = 7;
                } else {
                    v1 = 9;
                }
            } else {
                v1 = 8;
            }
            v0 = TRUE;
            ov61_0222D4C8();
            Unk_ov61_0222E764.unk_13C = v1;
            break;
        }

        if (v0) {
            break;
        }

        if (Unk_ov61_0222E764.unk_268 == 1) {
            Unk_ov61_0222E764.unk_13C = 7;
            Unk_ov61_0222E764.unk_250 = 13;
            break;
        }

        ov61_0222D4DC();
        ov61_0222DB8C(1);
    }

    ov61_0222D4DC();
}

BOOL ov61_0222D1FC(int param0, void *param1, void *param2, int param3)
{
    ov61_0222D4C8();
    switch (Unk_ov61_0222E764.unk_13C) {
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
        ov61_0222D4DC();
        Unk_ov61_0222E764.unk_13C = 9;
        Unk_ov61_0222E764.unk_250 = 1;
        return FALSE;
    case 7:
    case 8:
    case 9:
        ov61_0222CFD4();
    case 1:
    default:
        ov61_0222D4DC();
    }

    int v0 = ov61_0222E2A8(param0);
    Unk_ov61_0222E764.unk_25C = v0;
    if (v0 == -1) {
        Unk_ov61_0222E764.unk_13C = 9;
        Unk_ov61_0222E764.unk_250 = 2;
        return FALSE;
    }

    Unk_ov61_0222E764.unk_260 = param2;

    int v2;
    if (param3 != -1) {
        v2 = param3 + 0x140;
    } else {
        v2 = ov61_0222E168(param0);
        if (v2 == -1) {
            Unk_ov61_0222E764.unk_13C = 9;
            Unk_ov61_0222E764.unk_250 = 2;
            return FALSE;
        }
    }

    void *v1 = ov61_0222D498(v2);
    Unk_ov61_0222E764.unk_258 = v1;
    if (v1 == NULL) {
        return FALSE;
    }
    Unk_ov61_0222E764.unk_254 = v2;
    memcpy(v1, &v2, 4);

    UnkStruct_ov61_0222D1FC *v3 = Unk_ov61_0222E764.unk_258 + 4;
    v3->unk_00 = param0;
    v3->unk_04 = Unk_ov61_0222E764.unk_00;
    v3->unk_02 = 0;
    memcpy(&v3->unk_136, param1, v2 - 0x140);

    ov61_0222E0B8(Unk_ov61_0222E764.unk_258 + 4, Unk_ov61_0222E764.unk_254 - 4, Unk_ov61_0222E764.unk_258 + 4);
    Unk_ov61_0222E764.unk_13C = 2;
    ov61_0222D4C8();

    int result = ov61_0222D54C();
    if (!result) {
        Unk_ov61_0222E764.unk_13C = 9;
        Unk_ov61_0222E764.unk_250 = 6;
        ov61_0222D4DC();
        return FALSE;
    } else {
        ov61_0222D4DC();
        return TRUE;
    }
}

int ov61_0222D3E8(void)
{
    return Unk_ov61_0222E764.unk_13C;
}

void *ov61_0222D3F8(void)
{
    ov61_0222D4C8();

    int v0 = ov61_0222D3E8();
    if (v0 != 8) {
        ov61_0222D4DC();
        return NULL;
    }

    ov61_0222D4DC();
    return Unk_ov61_0222E764.unk_260 + 4;
}

int ov61_0222D430(void)
{
    ov61_0222D4C8();

    int v0 = ov61_0222D3E8();
    if (v0 != 8) {
        ov61_0222D4DC();
        return -1;
    }

    ov61_0222D4DC();
    return Unk_ov61_0222E764.unk_25C;
}

int ov61_0222D464(void)
{
    ov61_0222D4C8();

    int v0 = ov61_0222D3E8();
    if (v0 != 9) {
        ov61_0222D4DC();
        return 0;
    }

    ov61_0222D4DC();
    return Unk_ov61_0222E764.unk_250;
}
