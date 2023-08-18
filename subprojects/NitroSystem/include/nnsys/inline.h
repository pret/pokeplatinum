#ifndef NNS_INLINE_H_
#define NNS_INLINE_H_

#if defined(_MSC_VER) || defined(NNS_FROM_TOOL)
#define NNS_INLINE __inline
#else
#define NNS_INLINE inline
#endif

#endif
