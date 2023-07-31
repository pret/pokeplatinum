#if defined(SDK_CW) || defined(__MWERKS__)

static void NitroStaticInit(void);
#pragma define_section SINIT ".sinit" abs32 RWX
#pragma section        SINIT begin
SDK_FORCE_EXPORT static void * NitroStaticInit_[] = {NitroStaticInit};
#pragma section        SINIT end

#elif defined(SDK_ADS)

TO BE DEFINED
#elif defined(SDK_GCC)

TO BE DEFINED
#endif
