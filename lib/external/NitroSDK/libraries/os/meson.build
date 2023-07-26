libos_srcs = files(
    'asm/os_irqhandler.s',
    'asm/os_irqtable.s',
    'asm/os_interrupt.s',
    'asm/os_spinlock.s',
    'asm/os_printf.s',
    'asm/os_thread.s',
    'asm/os_context.s',
    'asm/os_emulator.s',
    'asm/os_message.s',
    'asm/os_mutex.s',
    'asm/os_cache.s',
    'asm/os_init.s',
    'asm/os_arena.s',
    'asm/os_alloc.s',
    'asm/os_tcm.s',
    'asm/os_protectionunit.s',
    'asm/os_protectionregion.s',
    'asm/os_exception.s',
    'asm/os_timer.s',
    'asm/os_tick.s',
    'asm/os_alarm.s',
    'asm/os_valarm.s',
    'asm/os_system.s',
    'asm/os_reset.s',
    'asm/os_ownerinfo.s',
    'asm/os_vramexclusive.s',
    'asm/os_entropy.s',
    'asm/os_terminate_proc.s'
)

libos = static_library('os',
    sources: libos_srcs,
    c_args: [c_args, sdk_args],
    nasm_args: asm_args,
    include_directories: public_includes,
    pic: false
)

nitrosdk_libs += libos
