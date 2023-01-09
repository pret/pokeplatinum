#include <nitro/gx/g3.h>

void G3_BeginMakeDL (GXDLInfo * info, void * ptr, u32 length) {
    SDK_ALIGN4_ASSERT(ptr);
    SDK_ALIGN4_ASSERT(length);

    info->length = length;
    info->bottom = (u32 *)ptr;
    info->curr_cmd = (u8 *)ptr;
    info->curr_param = (u32 *)ptr + 1;
    info->param0_cmd_flg = FALSE;
}

#include <nitro/code32.h>

u32 G3_EndMakeDL (GXDLInfo * info) {
    u32 sz;
    if ((u8 *)info->bottom == info->curr_cmd) {
        return 0;
    }

    switch ((u32)info->curr_cmd & 3) {
    case 0:
        SDK_ASSERT((u32)info->bottom < (u32)info->curr_cmd);
        return (u32)((u32)info->curr_cmd - (u32)info->bottom);
    case 1:
        *info->curr_cmd++ = 0;
    case 2:
        *info->curr_cmd++ = 0;
    case 3:
        *info->curr_cmd++ = 0;
    }
    ;

    if (info->param0_cmd_flg) {
        *(u32 *)(info->curr_param++) = 0;
        info->param0_cmd_flg = FALSE;
    }

    info->curr_cmd = (u8 *)info->curr_param;

    SDK_ASSERT((u32)info->bottom < (u32)info->curr_cmd);
    SDK_ASSERTMSG(
        ((u32)info->curr_cmd - (u32)info->bottom <= info->length),
        "Buffer overflow ! : Current DL buffer doesn't have enough capacity for new commands\n"
    );

    sz = (u32)((u32)info->curr_cmd - (u32)info->bottom);

    return sz;
}

#include <nitro/codereset.h>
