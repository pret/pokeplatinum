libos_srcs = files(
    'src/os_irqHandler.c',
    'src/os_irqTable.c',
    'src/os_interrupt.c',
    'src/os_spinLock.c',
    'src/os_printf.c',
    'src/os_thread.c',
    'src/os_context.c',
    'src/os_emulator.c',
    'src/os_message.c',
    'src/os_mutex.c',
    'src/os_cache.c',
    'src/os_init.c',
    'src/os_arena.c',
    'src/os_alloc.c',
    'src/os_tcm.c',
    'src/os_protectionUnit.c',
    'src/os_protectionRegion.c',
    'src/os_exception.c',
    'src/os_timer.c',
    'src/os_tick.c',
    'src/os_alarm.c',
    'src/os_valarm.c',
    'src/os_system.c',
    'src/os_reset.c',
    'src/os_ownerInfo.c',
    'src/os_vramExclusive.c',
    'src/os_entropy.c',
    'src/os_terminate_proc.c'
)

libos = static_library('os',
    sources: libos_srcs,
    c_args: [c_args, sdk_args],
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrosdk_libs += libos
