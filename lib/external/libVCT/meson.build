project('libVCT', ['c', 'nasm'])

asm_args = [
    '-proc', 'arm5TE',
    '-gccinc'
]

public_includes = include_directories('include')

libvct_srcs = files(
    'asm/adpcm.s',
    'asm/audio.s',
    'asm/decoder.s',
    'asm/g711.s',
    'asm/queue.s',
    'asm/stream_vct.s',
    'asm/ssp.s',
    'asm/udp_buffer.s',
    'asm/vad.s',
    'asm/fir.s',
    'asm/mixer.s',
    'asm/vct_main.s'
)

libvct = static_library('vct',
    sources: libvct_srcs,
    nasm_args: asm_args,
    pic: false
)

libvct_dep = declare_dependency(
    include_directories: public_includes,
    link_with: libvct
)