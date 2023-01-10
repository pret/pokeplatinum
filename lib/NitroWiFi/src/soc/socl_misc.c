#include <nitroWiFi/soc.h>

struct errortable {
    int code;
    const char * name;
};

static struct errortable errtable[] = {
#include "include/errtable.h"
};

const char * SOCL_GetErrName (int errcode) {
    int i;

    for (i = 0; i < sizeof(errtable) / sizeof(errtable[0]); i++) {
        if (errtable[i].code == errcode) {
            return errtable[i].name;
        }
    }

    return "";
}

u32 SOCLi_RoundUp4 (u32 size) {
    return SOCLi_ROUNDUP4(size);
}
