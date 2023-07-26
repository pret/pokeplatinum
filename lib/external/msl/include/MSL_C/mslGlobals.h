#ifndef _MSLGLOBALS_H
#define _MSLGLOBALS_H

#if defined(__MC68K__) || defined(__COLDFIRE__)
    #if defined(__PALMOS_TRAPS__)
        #include <ansi_prefix.Palm_OS.h>
    #elif defined(__embedded__)
        #include <ansi_prefix.E68k.h>
    #else

        #error mslGlobals.h could not include prefix file
    #endif
#elif (defined(__POWERPC__) && !defined(__PPC_EABI__)) && __MACH__
    #include <ansi_prefix.mach.h>
#elif (defined(__POWERPC__) && !defined(__PPC_EABI__))
    #include <ansi_prefix.mac.h>
#elif defined(__PPCGEKKO__)
    #include <ansi_prefix.PPCEABI.Gamecube.h>
#elif defined(__PPC_EABI__)
    #include <ansi_prefix.PPCEABI.bare.h>
#elif defined(__INTEL__)
    #if defined(__linux__)
        #include <ansi_prefix.Linux_x86.h>
    #elif !defined(UNDER_CE)
        #include <ansi_prefix.Win32.h>
    #else

        #error mslGlobals.h could not include prefix file
    #endif
#elif (defined(__MIPS__) && !defined(UNDER_CE))
    #if defined(__MIPS_PSX2__)
        #include <ansi_prefix.MIPS_PS2.h>
    #else
        #include <ansi_prefix.MIPS_bare.h>
    #endif
#elif defined(__m56800E__) || defined(__m56800__)
    #include <ansi_prefix_dsp.h>
#elif defined(__MCORE__)
    #include <ansi_prefix.MCORE_EABI_bare.h>
#elif defined(__SH__)
    #include <ansi_prefix.SH_bare.h>
#elif defined(__arm)
    #include <ansi_prefix.ARM.h>
#elif defined(_ENTERPRISE_C_)
    #include <ansi_prefix_StarCore.h>
#else

    #ifndef RC_INVOKED
        #error mslGlobals.h could not include prefix file
    #endif
#endif

#endif
