#ifndef NITRO_SECTION_H_
#define NITRO_SECTION_H_

#ifdef __cplusplus
extern "C" {
#endif

#if defined(SDK_CW) || defined(__MWERKS__)
#ifdef SDK_ARM9
#pragma define_section ITCM ".itcm" ".itcm.bss" abs32 RWX
#pragma define_section DTCM ".dtcm" ".dtcm.bss" abs32 RWX
#else
#pragma define_section WRAM ".wram" ".wram.bss" abs32 RWX
#endif
#pragma define_section PARENT ".parent" abs32 RWX
#pragma define_section VERSION ".version" abs32 RWX
#elif defined(SDK_PRODG)

#elif defined(SDK_ADS)
TO BE DEFINED
#elif defined(SDK_GCC)
TO BE DEFINED
#endif
#ifdef __cplusplus
}
#endif

#endif
