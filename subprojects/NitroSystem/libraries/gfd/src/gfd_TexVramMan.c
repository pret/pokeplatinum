
#include <nnsys/gfd/VramManager/gfd_VramMan.h>
#include <nnsys/gfd/VramManager/gfd_TexVramMan_Types.h>

static NNSGfdTexKey AllocTexVram_(u32 szByte, BOOL is4x4comp, u32 opt);
static int FreeTexVram_(NNSGfdTexKey memKey);

NNSGfdFuncAllocTexVram NNS_GfdDefaultFuncAllocTexVram = AllocTexVram_;
NNSGfdFuncFreeTexVram NNS_GfdDefaultFuncFreeTexVram = FreeTexVram_;

static NNSGfdTexKey AllocTexVram_ (u32, BOOL, u32) {
    NNS_GFD_WARNING("no default AllocTexVram function.");
    return NNS_GFD_ALLOC_ERROR_TEXKEY;
}

static int FreeTexVram_ (NNSGfdTexKey) {
    NNS_GFD_WARNING("no default FreeTexVram function.");
    return -1;
}
