#include <nitro.h>
#include <nitro/code32.h>

extern void NitroMain(void);
extern void OS_IrqHandler(void);
static void do_autoload(void);
static void init_cp15(void);
void _start(void);
static void INITi_CpuClear32(register u32 data, register void * destp, register u32 size);
extern void * const _start_ModuleParams[];
void _start_AutoloadDoneCallback(void * argv[]);

extern void __call_static_initializers(void);
extern void _fp_init(void);

extern void SDK_IRQ_STACKSIZE(void);
extern void SDK_AUTOLOAD_START(void);
extern void SDK_AUTOLOAD_LIST(void);
extern void SDK_AUTOLOAD_LIST_END(void);
extern void SDK_STATIC_BSS_START(void);
extern void SDK_STATIC_BSS_END(void);

#include <nitro/version.h>
#define SDK_VERSION_ID ((u32)SDK_VERSION_MAJOR << 24 | \
                        (u32)SDK_VERSION_MINOR << 16 | \
                        (u32)SDK_VERSION_RELSTEP)

#define SDK_NITROCODE_LE 0x2106c0de
#define SDK_NITROCODE_BE 0xdec00621

#define INITi_HW_DTCM SDK_AUTOLOAD_DTCM_START

SDK_WEAK_SYMBOL asm void _start (void) {
    mov r12, #HW_REG_BASE
    str r12, [r12, #REG_IME_OFFSET]
 @wait_vcount_0:
    ldrh r0, [r12, #REG_VCOUNT_OFFSET]
    cmp r0, #0
    bne @wait_vcount_0
    bl init_cp15
    mov r0, #HW_PSR_SVC_MODE
    msr cpsr_c, r0
    ldr r0, = INITi_HW_DTCM
    add r0, r0, #0x3fc0
    mov sp, r0
    mov r0, #HW_PSR_IRQ_MODE
    msr cpsr_c, r0
    ldr r0, = INITi_HW_DTCM
    add r0, r0, #0x3fc0
    sub r0, r0, #HW_SVC_STACK_SIZE
    sub sp, r0, #4
    tst sp, #4
    beq @do_sub
    b @skip_sub
 @do_sub:
    sub sp, sp, #4
 @skip_sub:
    ldr r1, = SDK_IRQ_STACKSIZE
    sub r1, r0, r1
    mov r0, #HW_PSR_SYS_MODE
    msr cpsr_csfx, r0
    sub sp, r1, #4
    mov r0, #0
    ldr r1, = INITi_HW_DTCM
    mov r2, #HW_DTCM_SIZE
    bl INITi_CpuClear32
    mov r0, #0
    ldr r1, = HW_PLTT
    mov r2, #HW_PLTT_SIZE
    bl INITi_CpuClear32
    mov r0, #0x0200
    ldr r1, = HW_OAM
    mov r2, #HW_OAM_SIZE
    bl INITi_CpuClear32
    ldr r1, = _start_ModuleParams
    ldr r0, [r1, #20]
    bl MIi_UncompressBackward
    bl do_autoload
    ldr r0, = _start_ModuleParams
    ldr r1, [r0, #12]
    ldr r2, [r0, #16]
    mov r3, r1
    mov r0, #0
    @1: cmp r1, r2
    bcc @do_str
    b @skip_str
 @do_str:
    str r0, [r1], #4
 @skip_str:
    bcc @1
    bic r1, r3, #HW_CACHE_LINE_SIZE - 1
 @cacheflush:
    mcr p15, 0, r0, c7, c10, 4
    mcr p15, 0, r1, c7, c5, 1
    mcr p15, 0, r1, c7, c14, 1
    add r1, r1, #HW_CACHE_LINE_SIZE
    cmp r1, r2
    blt @cacheflush
    ldr r1, = HW_COMPONENT_PARAM
    str r0, [r1, #0]
    ldr r1, = INITi_HW_DTCM
    add r1, r1, #0x3fc0
    add r1, r1, #HW_DTCM_SYSRV_OFS_INTR_VECTOR
    ldr r0, = OS_IrqHandler
    str r0, [r1, #0]
#ifndef SDK_NOINIT
    bl _fp_init
    bl NitroStartUp
    bl __call_static_initializers
#endif
    ldr r1, = NitroMain
    ldr lr, = HW_RESET_VECTOR
    tst sp, #4
    bne @subne1
    b @subne2
 @subne1:
    sub sp, sp, #4
 @subne2:
    bx r1
}

static asm void INITi_CpuClear32 (register u32 data, register void * destp, register u32 size) {
    add r12, r1, r2
    @20:
    cmp r1, r12
    blt @stmltia1
    b @stmltia2
 @stmltia1:
    stmia r1 !, {r0}
 @stmltia2:
    blt @20
    bx lr
}

void * const _start_ModuleParams[] = {
    (void *)SDK_AUTOLOAD_LIST,
    (void *)SDK_AUTOLOAD_LIST_END,
    (void *)SDK_AUTOLOAD_START,
    (void *)SDK_STATIC_BSS_START,
    (void *)SDK_STATIC_BSS_END,
    (void *)0,
    (void *)SDK_VERSION_ID,
    (void *)SDK_NITROCODE_BE,
    (void *)SDK_NITROCODE_LE,
};

asm void MIi_UncompressBackward (register void * bottom) {
#define data r0
#define inp_top r1
#define outp r2
#define inp r3
#define outp_save r4
#define flag r5
#define count8 r6
#define index r7
#define len r12
    cmp bottom, #0
    beq @exit
    stmfd sp !, {r4 - r7}
    ldmdb bottom, {r1 - r2}
    add outp, bottom, outp
    sub inp, bottom, inp_top, LSR #24
    bic inp_top, inp_top, #0xff000000
    sub inp_top, bottom, inp_top
    mov outp_save, outp
 @loop:
    cmp inp, inp_top
    ble @end_loop
    ldrb flag, [inp, #- 1] !
    mov count8, #8
 @loop8:
    subs count8, count8, #1
    blt @loop
    tst flag, #0x80
    bne @blockcopy
 @bytecopy:
    ldrb data, [inp, #- 1] !
#ifdef SDK_TEG
    sub outp, outp, #1
    swpb data, data, [outp]
#else
    strb data, [outp, #- 1] !
#endif
    b @joinhere
 @blockcopy:
    ldrb len, [inp, #- 1] !
    ldrb index, [inp, #- 1] !
    orr index, index, len, LSL #8
    bic index, index, #0xf000
    add index, index, #0x0002
    add len, len, #0x0020
 @patterncopy:
    ldrb data, [outp, index]
#ifdef SDK_TEG
    sub outp, outp, #1
    swpb data, data, [outp]
#else
    strb data, [outp, #- 1] !
#endif
    subs len, len, #0x0010
    bge @patterncopy

 @joinhere:
    cmp inp, inp_top
    mov flag, flag, LSL #1
    bgt @loop8
 @end_loop:
    mov r0, #0
    bic inp, inp_top, #HW_CACHE_LINE_SIZE - 1
 @cacheflush:
    mcr p15, 0, r0, c7, c10, 4
    mcr p15, 0, inp, c7, c5, 1
    mcr p15, 0, inp, c7, c14, 1
    add inp, inp, #HW_CACHE_LINE_SIZE
    cmp inp, outp_save
    blt @cacheflush
    ldmfd sp !, {r4 - r7}
    @exit bx lr
}

static asm void do_autoload (void) {
#define ptable r0
#define infop r1
#define infop_end r2
#define src r3
#define dest r4
#define dest_begin r5
#define dest_end r6
#define tmp r7
    ldr ptable, = _start_ModuleParams
    ldr infop, [ptable, #0]
    ldr infop_end, [ptable, #4]
    ldr src, [ptable, #8]
    @2:
    cmp infop, infop_end
    beq @skipout
    ldr dest_begin, [infop], #4
    ldr tmp, [infop], #4
    add dest_end, dest_begin, tmp
    mov dest, dest_begin
    @1:
    cmp dest, dest_end
    bmi @ldrmi1
    b @ldrmi2
 @ldrmi1:
    ldr tmp, [src], #4
 @ldrmi2:
    bmi @strmi1
    b @strmi2
 @strmi1:
    str tmp, [dest], #4
 @strmi2:
    bmi @1
    ldr tmp, [infop], #4
    add dest_end, dest, tmp
    mov tmp, #0
    @3:
    cmp dest, dest_end
    bcc @strcc1
    b @strcc2
 @strcc1:
    str tmp, [dest], #4
 @strcc2:
    bcc @3
    bic dest, dest_begin, #HW_CACHE_LINE_SIZE - 1
 @cacheflush:
    mcr p15, 0, tmp, c7, c10, 4
    mcr p15, 0, dest, c7, c5, 1
    mcr p15, 0, dest, c7, c14, 1
    add dest, dest, #HW_CACHE_LINE_SIZE
    cmp dest, dest_end
    blt @cacheflush
    b @2
 @skipout:
    b _start_AutoloadDoneCallback
}

SDK_WEAK_SYMBOL asm void _start_AutoloadDoneCallback (void * argv[]) {
    bx lr
}

static asm void init_cp15 (void) {
    mrc p15, 0, r0, c1, c0, 0
    ldr r1, = HW_C1_ICACHE_ENABLE | HW_C1_DCACHE_ENABLE  \
              | HW_C1_ITCM_ENABLE | HW_C1_DTCM_ENABLE    \
              | HW_C1_ITCM_LOAD_MODE | HW_C1_DTCM_LOAD_MODE \
              | HW_C1_LD_INTERWORK_DISABLE                  \
              | HW_C1_PROTECT_UNIT_ENABLE
              bic r0, r0, r1
    mcr p15, 0, r0, c1, c0, 0
    mov r0, #0
    mcr p15, 0, r0, c7, c5, 0
    mcr p15, 0, r0, c7, c6, 0
    mcr p15, 0, r0, c7, c10, 4

#define SET_PROTECTION_A(id, adr, siz) ldr r0, = (adr | HW_C6_PR_ ## siz | HW_C6_PR_ENABLE)
#define SET_PROTECTION_B(id, adr, siz) mcr p15, 0, r0, c6, id, 0
#define REGION_BIT(a, b, c, d, e, f, g, h) (((a) << 0) | ((b) << 1) | ((c) << 2) | ((d) << 3) | ((e) << 4) | ((f) << 5) | ((g) << 6) | ((h) << 7))
#define REGION_ACC(a, b, c, d, e, f, g, h) (((a) << 0) | ((b) << 4) | ((c) << 8) | ((d) << 12) | ((e) << 16) | ((f) << 20) | ((g) << 24) | ((h) << 28))
#define NA 0
#define RW 1
#define RO 5

    SET_PROTECTION_A(c0, HW_IOREG, 64MB)
    SET_PROTECTION_B(c0, HW_IOREG, 64MB)

    SET_PROTECTION_A(c1, HW_MAIN_MEM_MAIN, 8MB)
    SET_PROTECTION_B(c1, HW_MAIN_MEM_MAIN, 8MB)

#if HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x1000
    SET_PROTECTION_A(c2, HW_MAIN_MEM_SUB, 4KB)
    SET_PROTECTION_B(c2, HW_MAIN_MEM_SUB, 4KB)
#elif HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x2000
    SET_PROTECTION_A(c2, HW_MAIN_MEM_SUB, 8KB)
    SET_PROTECTION_B(c2, HW_MAIN_MEM_SUB, 8KB)
#elif HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x4000
    SET_PROTECTION_A(c2, HW_MAIN_MEM_SUB, 16KB)
    SET_PROTECTION_B(c2, HW_MAIN_MEM_SUB, 16KB)
#elif HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x8000
    SET_PROTECTION_A(c2, HW_MAIN_MEM_SUB, 32KB)
    SET_PROTECTION_B(c2, HW_MAIN_MEM_SUB, 32KB)
#elif HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x10000
    SET_PROTECTION_A(c2, HW_MAIN_MEM_SUB, 64KB)
    SET_PROTECTION_B(c2, HW_MAIN_MEM_SUB, 64KB)
#elif HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x20000
    SET_PROTECTION_A(c2, HW_MAIN_MEM_SUB, 128KB)
    SET_PROTECTION_B(c2, HW_MAIN_MEM_SUB, 128KB)
#elif HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x40000
    SET_PROTECTION_A(c2, HW_MAIN_MEM_SUB, 256KB)
    SET_PROTECTION_B(c2, HW_MAIN_MEM_SUB, 256KB)
#elif HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x80000
    SET_PROTECTION_A(c2, HW_MAIN_MEM_SUB, 512KB)
    SET_PROTECTION_B(c2, HW_MAIN_MEM_SUB, 512KB)
#elif HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x100000
    SET_PROTECTION_A(c2, HW_MAIN_MEM_SUB, 1MB)
    SET_PROTECTION_B(c2, HW_MAIN_MEM_SUB, 1MB)
#elif HW_MAIN_MEM_SUB_SIZE + HW_MAIN_MEM_SHARED_SIZE == 0x200000
    SET_PROTECTION_A(c2, HW_MAIN_MEM_SUB, 2MB)
    SET_PROTECTION_B(c2, HW_MAIN_MEM_SUB, 2MB)
#else
#pragma message(ERROR: Size unmatch HW_MAIN_MEM_SUB_SIZE)
#endif

    SET_PROTECTION_A(c3, HW_CTRDG_ROM, 128MB)
    SET_PROTECTION_B(c3, HW_CTRDG_ROM, 128MB)

    ldr r0, = SDK_AUTOLOAD_DTCM_START
    orr r0, r0, #HW_C6_PR_16KB
    orr r0, r0, #HW_C6_PR_ENABLE
    SET_PROTECTION_B(c4, HW_DTCM, 16KB)

    SET_PROTECTION_A(c5, HW_ITCM_IMAGE, 16MB)
    SET_PROTECTION_B(c5, HW_ITCM_IMAGE, 16MB)

    SET_PROTECTION_A(c6, HW_BIOS, 32KB)
    SET_PROTECTION_B(c6, HW_BIOS, 32KB)

    SET_PROTECTION_A(c7, HW_MAIN_MEM_SHARED, 4KB)
    SET_PROTECTION_B(c7, HW_MAIN_MEM_SHARED, 4KB)

#if HW_MAIN_MEM_SHARED_SIZE != 0x1000
#pragma message(ERROR: Size unmatch HW_MAIN_MEM_SHARED_SIZE)
#endif
    mov r0, #HW_C9_TCMR_32MB
    mcr p15, 0, r0, c9, c1, 1
    ldr r0, = INITi_HW_DTCM
    orr r0, r0, #HW_C9_TCMR_16KB
    mcr p15, 0, r0, c9, c1, 0
    mov r0, #REGION_BIT(0, 1, 0, 0, 0, 0, 1, 0)
    mcr p15, 0, r0, c2, c0, 1
    mov r0, #REGION_BIT(0, 1, 0, 0, 0, 0, 1, 0)
    mcr p15, 0, r0, c2, c0, 0
    mov r0, #REGION_BIT(0, 1, 0, 0, 0, 0, 0, 0)
    mcr p15, 0, r0, c3, c0, 0
    ldr r0, = REGION_ACC(RW, RW, NA, NA, NA, RW, RO, NA)
    mcr p15, 0, r0, c5, c0, 3
    ldr r0, = REGION_ACC(RW, RW, NA, RW, RW, RW, RO, RW)
    mcr p15, 0, r0, c5, c0, 2
    mrc p15, 0, r0, c1, c0, 0
    ldr r1, = HW_C1_ICACHE_ENABLE | HW_C1_DCACHE_ENABLE | HW_C1_CACHE_ROUND_ROBIN \
              | HW_C1_ITCM_ENABLE | HW_C1_DTCM_ENABLE                             \
              | HW_C1_SB1_BITSET | HW_C1_EXCEPT_VEC_UPPER                        \
              | HW_C1_PROTECT_UNIT_ENABLE
    orr r0, r0, r1
    mcr p15, 0, r0, c1, c0, 0
    bx lr
}

SDK_WEAK_SYMBOL void NitroStartUp (void) {
}

void OSi_ReferSymbol (void * symbol) {
#pragma unused(symbol)
}
