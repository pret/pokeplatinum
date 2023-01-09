
#include <nnsys/gfd/VramManager/gfd_VramMan.h>
#include <nnsys/gfd/VramManager/gfd_PlttVramMan_Types.h>

static NNSGfdPlttKey AllocPlttVram_(u32 szByte, BOOL b4Pltt, u32 bAllocFromLo);
static int FreePlttVram_(NNSGfdPlttKey key);

NNSGfdFuncAllocPlttVram NNS_GfdDefaultFuncAllocPlttVram = AllocPlttVram_;
NNSGfdFuncFreePlttVram NNS_GfdDefaultFuncFreePlttVram = FreePlttVram_;

static NNSGfdPlttKey AllocPlttVram_ (u32, BOOL, u32) {
    NNS_GFD_WARNING("no default AllocPlttVram function.");
    return NNS_GFD_ALLOC_ERROR_PLTTKEY;
}

static int FreePlttVram_ (NNSGfdPlttKey) {
    NNS_GFD_WARNING("no default FreePlttVram function.");
    return -1;
}
