#ifndef NITROSDK_VERSION_H_
#define NITROSDK_VERSION_H_
#define SDK_VERSION_DATE 20080118
#define SDK_VERSION_TIME 1051
#define SDK_VERSION_MAJOR 4
#define SDK_VERSION_MINOR 2
#define SDK_VERSION_RELSTEP 30001
#define SDK_BUILDVER_CW_CC 3.0
#define SDK_BUILDVER_CW_LD 2.0
#define SDK_BUILDNUM_CW_CC 127
#define SDK_BUILDNUM_CW_LD 85
#if 0
NITRO_VERSION_DATE_AND_TIME = 08011 8 1051
                              NITRO_VERSION_DATE = 20080118
                                                   NITRO_VERSION_TIME = 1051
                                                                        NITRO_VERSION_MAJOR = 4
                                                                                              NITRO_VERSION_MINOR = 2
                                                                                                                    NITRO_VERSION_RELSTEP = 30001
                                                                                                                                            NITRO_VERSION_BUILDVER_CW_CC = 3.0
                                                                                                                                                                           NITRO_VERSION_BUILDVER_CW_LD = 2.0
                                                                                                                                                                                                          NITRO_VERSION_BUILDNUM_CW_CC = 127
                                                                                                                                                                                                                                         NITRO_VERSION_BUILDNUM_CW_LD = 85
#
#  RELSTEP PR1=10100 PR2=10200 ...
#          RC1 =20100 RC2=20200 ...
#          RELEASE =30000
#
#endif

#ifndef SDK_VERSION_NUMBER
#define SDK_VERSION_NUMBER(major, minor, relstep) \
    (((major) << 24) | ((minor) << 16) | ((relstep) << 0))
#define SDK_CURRENT_VERSION_NUMBER \
    SDK_VERSION_NUMBER(SDK_VERSION_MAJOR, SDK_VERSION_MINOR, SDK_VERSION_RELSTEP)
#endif

#endif
