#include <nitro/math/crc.h>

void MATHi_CRC8InitTable (MATHCRC8Table * table, u8 poly) {
    u32 r;
    u32 i, j;
    u8 * t = table->table;

    for (i = 0; i < 256; i++) {
        r = i;
        for (j = 0; j < 8; j++) {
            if (r & 0x80) {
                r = (r << 1) ^ poly;
            } else {
                r <<= 1;
            }
        }
        t[i] = (u8)r;
    }
}

void MATHi_CRC8InitTableRev (MATHCRC8Table * table, u8 poly) {
    u32 r;
    u32 i, j;
    u8 * t = table->table;

    for (i = 0; i < 256; i++) {
        r = i;
        for (j = 0; j < 8; j++) {
            if (r & 1) {
                r = (r >> 1) ^ poly;
            } else {
                r >>= 1;
            }
        }
        t[i] = (u8)r;
    }
}

void MATHi_CRC8Update (const MATHCRC8Table * table, MATHCRC8Context * context, const void * input, u32 length) {
    u32 r;
    u32 i;
    const u8 * t = table->table;
    u8 * data = (u8 *)input;

    r = (u32) * context;
    for (i = 0; i < length; i++) {
        r = t[(r ^ *data) & 0xff];
        data++;
    }
    *context = (MATHCRC8Context)r;
}

void MATHi_CRC16InitTable (MATHCRC16Table * table, u16 poly) {
    u32 r;
    u32 i, j;
    u16 * t = table->table;

    for (i = 0; i < 256; i++) {
        r = i << 8;
        for (j = 0; j < 8; j++) {
            if (r & 0x8000) {
                r = (r << 1) ^ poly;
            } else {
                r <<= 1;
            }
        }
        t[i] = (u16)r;
    }
}

void MATHi_CRC16InitTableRev (MATHCRC16Table * table, u16 poly) {
    u32 r;
    u32 i, j;
    u16 * t = table->table;

    for (i = 0; i < 256; i++) {
        r = i;
        for (j = 0; j < 8; j++) {
            if (r & 1) {
                r = (r >> 1) ^ poly;
            } else {
                r >>= 1;
            }
        }
        t[i] = (u16)r;
    }
}

void MATHi_CRC16Update (const MATHCRC16Table * table, MATHCRC16Context * context, const void * input, u32 length) {
    u32 r;
    u32 i;
    const u16 * t = table->table;
    u8 * data = (u8 *)input;

    r = (u32) * context;
    for (i = 0; i < length; i++) {
        r = (r << 8) ^ t[((r >> 8) ^ *data) & 0xff];
        data++;
    }
    *context = (MATHCRC16Context)r;
}

void MATHi_CRC16UpdateRev (const MATHCRC16Table * table, MATHCRC16Context * context, const void * input, u32 length) {
    u32 r;
    u32 i;
    const u16 * t = table->table;
    u8 * data = (u8 *)input;

    r = (u32) * context;
    for (i = 0; i < length; i++) {
        r = (r >> 8) ^ t[(r ^ *data) & 0xff];
        data++;
    }
    *context = (MATHCRC16Context)r;
}

void MATHi_CRC32InitTable (MATHCRC32Table * table, u32 poly) {
    u32 r;
    u32 i, j;
    u32 * t = table->table;

    for (i = 0; i < 256; i++) {
        r = i << 24;
        for (j = 0; j < 8; j++) {
            if (r & 0x80000000U) {
                r = (r << 1) ^ poly;
            } else {
                r <<= 1;
            }
        }
        t[i] = r;
    }
}

void MATHi_CRC32InitTableRev (MATHCRC32Table * table, u32 poly) {
    u32 r;
    u32 i, j;
    u32 * t = table->table;

    for (i = 0; i < 256; i++) {
        r = i;
        for (j = 0; j < 8; j++) {
            if (r & 1) {
                r = (r >> 1) ^ poly;
            } else {
                r >>= 1;
            }
        }
        t[i] = r;
    }
}

void MATHi_CRC32Update (const MATHCRC32Table * table, MATHCRC32Context * context, const void * input, u32 length) {
    u32 r;
    u32 i;
    const u32 * t = table->table;
    u8 * data = (u8 *)input;

    r = (u32) * context;
    for (i = 0; i < length; i++) {
        r = (r << 8) ^ t[((r >> 24) ^ *data) & 0xff];
        data++;
    }
    *context = (MATHCRC32Context)r;
}

void MATHi_CRC32UpdateRev (const MATHCRC32Table * table, MATHCRC32Context * context, const void * input, u32 length) {
    u32 r;
    u32 i;
    const u32 * t = table->table;
    u8 * data = (u8 *)input;

    r = (u32) * context;
    for (i = 0; i < length; i++) {
        r = (r >> 8) ^ t[(r ^ *data) & 0xff];
        data++;
    }
    *context = (MATHCRC32Context)r;
}

u8 MATH_CalcCRC8 (const MATHCRC8Table * table, const void * data, u32 dataLength) {
    MATHCRC8Context context;
    MATH_CRC8Init(&context);
    MATH_CRC8Update(table, &context, data, dataLength);
    return MATH_CRC8GetHash(&context);
}

u16 MATH_CalcCRC16 (const MATHCRC16Table * table, const void * data, u32 dataLength) {
    MATHCRC16Context context;
    MATH_CRC16Init(&context);
    MATH_CRC16Update(table, &context, data, dataLength);
    return MATH_CRC16GetHash(&context);
}

u16 MATH_CalcCRC16CCITT (const MATHCRC16Table * table, const void * data, u32 dataLength) {
    MATHCRC16Context context;
    MATH_CRC16CCITTInit(&context);
    MATH_CRC16CCITTUpdate(table, &context, data, dataLength);
    return MATH_CRC16CCITTGetHash(&context);
}

u32 MATH_CalcCRC32 (const MATHCRC32Table * table, const void * data, u32 dataLength) {
    MATHCRC32Context context;
    MATH_CRC32Init(&context);
    MATH_CRC32Update(table, &context, data, dataLength);
    return MATH_CRC32GetHash(&context);
}

u32 MATH_CalcCRC32POSIX (const MATHCRC32Table * table, const void * data, u32 dataLength) {
    MATHCRC32Context context;
    MATH_CRC32POSIXInit(&context);
    MATH_CRC32POSIXUpdate(table, &context, data, dataLength);
    return MATH_CRC32POSIXGetHash(&context);
}
