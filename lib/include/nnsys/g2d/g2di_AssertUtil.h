#ifndef ASSERT_UTIL_H_
#define ASSERT_UTIL_H_

#ifdef __cplusplus
extern "C" {
#endif

#define NNS_G2D_IS_ALIGNED(addr, align) (((u32)(addr) & ((align) - 1)) == 0)

#define NNS_G2D_ALIGN_ASSERT(addr, align)                   \
    NNS_G2D_ASSERTMSG(                                      \
        NNS_G2D_IS_ALIGNED((addr), (align)),                \
        "'%s'=%p must be %d byte aligned.", #addr, (addr))

#define NNS_G2D_IS_VALID_POINTER(p) ((HW_ITCM_IMAGE <= ((u32)(p))) && (((u32)(p)) <= HW_CTRDG_RAM_END))

#define NNS_G2D_POINTER_ASSERT(p)                                           \
    NNS_G2D_ASSERTMSG(                                                      \
        NNS_G2D_IS_VALID_POINTER(p),                                        \
        "'%s'=%p is invalid memory address.", #p, (p));

#ifdef __cplusplus
}
#endif

#endif
