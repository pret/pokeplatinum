#ifndef NNSYS_PREFIX_H_
#define NNSYS_PREFIX_H_

#ifdef SDK_DEBUG
#define NNS_DEBUG 1

#elif SDK_RELEASE
#define NNS_RELEASE 1

#elif SDK_FINALROM
#define NNS_FINALROM 1
#endif

#ifdef SDK_CODE_ARM
#define NNS_CODE_ARM 1

#elif SDK_CODE_THUMB
#define NNS_CODE_THUMB 1
#endif

#define NNS_TS 1
#define NNS_CW 1
#define NNS_ARM9 1

#endif
