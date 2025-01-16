import json
import pathlib

homedir = pathlib.Path(__file__).resolve().parent
builddir = homedir / 'build'

arm7_c_flags = [
    'arm-none-eabi-gcc',
    '-c',
    '-O3',
    '-std=c99',
    '-mcpu=arm7tdmi',
    '-mfloat-abi=soft',
    '-nostdinc',
    '-D_NITRO',
    '-DSDK_4M',
    '-DSDK_ARM7',
    '-DSDK_CODE_ARM',
    '-DSDK_CW',
    '-DSDK_CW_FORCE_EXPORT_SUPPORT',
    '-DSDK_FINALROM',
    '-DSDK_TS',
]

arm9_c_flags = [
    'arm-none-eabi-gcc',
    '-c',
    '-O3',
    '-std=c99',
    '-mcpu=arm946e-s',
    '-mfloat-abi=soft',
    '-nostdinc',
    '-D_NITRO',
    '-DLINK_PPWLOBBY',
    '-DNNS_FINALROM',
    '-DSDK_4M',
    '-DSDK_ARM9',
    '-DSDK_CODE_ARM',
    '-DSDK_CW',
    '-DSDK_CW_FORCE_EXPORT_SUPPORT',
    '-DSDK_FINALROM',
    '-DSDK_TS',
    '-DPOKEPLATINUM_GENERATED_ENUM',
    '-DPM_KEEP_ASSERTS',
    '-DGAME_VERSION=PLATINUM',
    '-DGAME_LANGUAGE=ENGLISH'
]

asm_commands = [
    {
        'directory': builddir,
        'arguments': [
            'arm-none-eabi-as',
            '-mcpu=arm946e-s',
            '-o',
            file.with_suffix('.o'),
            file.resolve()
        ],
        'file': file.resolve()
    } for file in (homedir / 'asm').rglob('*.s')
]

nitrosdk_c_commands = [
    {
        'directory': builddir,
        'arguments': arm9_c_flags + [
            f'-I{homedir}/tools/cw/include/MSL_C',
            f'-I{homedir}/tools/cw/include/MSL_Extras',
            f'-I{homedir}/subprojects/NitroSDK-4.2.30001/include',
            f'-I{builddir}/subprojects/NitroSDK-4.2.30001/gen',
            '-o',
            file.with_suffix('.o'),
            file.resolve()
        ],
        'file': file.resolve()
    } for file in (homedir / 'subprojects/NitroSDK-4.2.30001').rglob('*.c')
]

nitrosystem_c_commands = [
    {
        'directory': builddir,
        'arguments': arm9_c_flags + [
            f'-I{homedir}/tools/cw/include/MSL_C',
            f'-I{homedir}/tools/cw/include/MSL_Extras',
            f'-I{homedir}/subprojects/NitroSDK-4.2.30001/include',
            f'-I{builddir}/subprojects/NitroSDK-4.2.30001/gen',
            f'-I{homedir}/subprojects/NitroSystem-071126.1/include',
            '-o',
            file.with_suffix('.o'),
            file.resolve()
        ],
        'file': file.resolve()
    } for file in (homedir / 'subprojects/NitroSystem-071126.1').rglob('*.c')
]

nitrowifi_c_commands = [
    {
        'directory': builddir,
        'arguments': arm9_c_flags + [
            f'-I{homedir}/tools/cw/include/MSL_C',
            f'-I{homedir}/tools/cw/include/MSL_Extras',
            f'-I{homedir}/subprojects/NitroSDK-4.2.30001/include',
            f'-I{builddir}/subprojects/NitroSDK-4.2.30001/gen',
            f'-I{homedir}/subprojects/NitroSystem-071126.1/include',
            f'-I{homedir}/subprojects/NitroWiFi-2.1.30003/include',
            '-o',
            file.with_suffix('.o'),
            file.resolve()
        ],
        'file': file.resolve()
    } for file in (homedir / 'subprojects/NitroWiFi-2.1.30003').rglob('*.c')
]

nitrodwc_c_commands = [
    {
        'directory': builddir,
        'arguments': arm9_c_flags + [
            f'-I{homedir}/tools/cw/include/MSL_C',
            f'-I{homedir}/tools/cw/include/MSL_Extras',
            f'-I{homedir}/subprojects/NitroSDK-4.2.30001/include',
            f'-I{builddir}/subprojects/NitroSDK-4.2.30001/gen',
            f'-I{homedir}/subprojects/NitroSystem-071126.1/include',
            f'-I{homedir}/subprojects/NitroWiFi-2.1.30003/include',
            f'-I{homedir}/subprojects/NitroDWC-2.2.30008/include',
            '-o',
            file.with_suffix('.o'),
            file.resolve()
        ],
        'file': file.resolve()
    } for file in (homedir / 'subprojects/NitroDWC-2.2.30008').rglob('*.c')
]

libvct_c_commands = [
    {
        'directory': builddir,
        'arguments': arm9_c_flags + [
            f'-I{homedir}/tools/cw/include/MSL_C',
            f'-I{homedir}/tools/cw/include/MSL_Extras',
            f'-I{homedir}/subprojects/NitroSDK-4.2.30001/include',
            f'-I{builddir}/subprojects/NitroSDK-4.2.30001/gen',
            f'-I{homedir}/subprojects/NitroSystem-071126.1/include',
            f'-I{homedir}/subprojects/NitroWiFi-2.1.30003/include',
            f'-I{homedir}/subprojects/NitroDWC-2.2.30008/include',
            f'-I{homedir}/subprojects/libvct-1.3.1/include',
            '-o',
            file.with_suffix('.o'),
            file.resolve()
        ],
        'file': file.resolve()
    } for file in (homedir / 'subprojects/libvct-1.3.1').rglob('*.c')
]

libcrypto_c_commands = [
    {
        'directory': builddir,
        'arguments': arm9_c_flags + [
            f'-I{homedir}/tools/cw/include/MSL_C',
            f'-I{homedir}/tools/cw/include/MSL_Extras',
            f'-I{homedir}/subprojects/NitroSDK-4.2.30001/include',
            f'-I{builddir}/subprojects/NitroSDK-4.2.30001/gen',
            f'-I{homedir}/subprojects/NitroSystem-071126.1/include',
            f'-I{homedir}/subprojects/NitroWiFi-2.1.30003/include',
            f'-I{homedir}/subprojects/NitroDWC-2.2.30008/include',
            f'-I{homedir}/subprojects/libvct-1.3.1/include',
            f'-I{homedir}/subprojects/libcrypto/include',
            '-o',
            file.with_suffix('.o'),
            file.resolve()
        ],
        'file': file.resolve()
    } for file in (homedir / 'subprojects/libcrypto').rglob('*.c')
]

ppwlobby_c_commands = [
    {
        'directory': builddir,
        'arguments': arm9_c_flags + [
            f'-I{homedir}/tools/cw/include/MSL_C',
            f'-I{homedir}/tools/cw/include/MSL_Extras',
            f'-I{homedir}/subprojects/NitroSDK-4.2.30001/include',
            f'-I{builddir}/subprojects/NitroSDK-4.2.30001/gen',
            f'-I{homedir}/subprojects/NitroSystem-071126.1/include',
            f'-I{homedir}/subprojects/NitroWiFi-2.1.30003/include',
            f'-I{homedir}/subprojects/NitroDWC-2.2.30008/include',
            f'-I{homedir}/subprojects/libvct-1.3.1/include',
            f'-I{homedir}/subprojects/libcrypto/include',
            f'-I{homedir}/subprojects/ppwlobby/include',
            '-o',
            file.with_suffix('.o'),
            file.resolve()
        ],
        'file': file.resolve()
    } for file in (homedir / 'subprojects/ppwlobby').rglob('*.c')
]

c_commands = [
    {
        'directory': builddir,
        'arguments': arm9_c_flags + [
            f'-I{homedir}/tools/cw/include/MSL_C',
            f'-I{homedir}/tools/cw/include/MSL_Extras',
            f'-I{homedir}/subprojects/NitroSDK-4.2.30001/include',
            f'-I{builddir}/subprojects/NitroSDK-4.2.30001/gen',
            f'-I{homedir}/subprojects/NitroSystem-071126.1/include',
            f'-I{homedir}/subprojects/NitroWiFi-2.1.30003/include',
            f'-I{homedir}/subprojects/NitroDWC-2.2.30008/include',
            f'-I{homedir}/subprojects/libvct-1.3.1/include',
            f'-I{homedir}/subprojects/libcrypto/include',
            f'-I{homedir}/subprojects/ppwlobby/include',
            f'-I{homedir}/lib/gds/include',
            f'-I{homedir}/lib/spl/include',
            f'-iquote{homedir}',
            f'-iquote{homedir}/include',
            f'-iquote{homedir}/build', # Meson includes this implicitly
            f'-iquote{homedir}/build/res', # knarc-generated NAIX headers
            f'-iquote{homedir}/build/res/text', # GMM-generated headers
            f'-include{homedir}/include/pch/global_pch.h',
            '-mthumb',
            '-o',
            file.with_suffix('.o'),
            file.resolve()
        ],
        'file': file.resolve()
    } for file in (homedir / 'src').rglob('*.c')
]

with open('compile_commands.json', 'w') as ofp:
    json.dump(
        asm_commands + nitrosdk_c_commands + nitrosystem_c_commands
        + nitrowifi_c_commands + nitrodwc_c_commands + libvct_c_commands
        + libcrypto_c_commands + ppwlobby_c_commands + c_commands,
        ofp,
        default=str,
        indent=4
    )
