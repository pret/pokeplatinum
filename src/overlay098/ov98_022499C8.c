#include <nitro.h>
#include <string.h>
#include <dwc.h>

#include "struct_decls/struct_strbuf_decl.h"

#include "heap.h"
#include "error_handling.h"
#include "string/strbuf.h"
#include "overlay098/ov98_022499C8.h"

static const char Unk_ov98_02249D1C[] = "w";
static const char Unk_ov98_02249D20[] = "@wii.com";

static const struct {
    u16 unk_00;
    char unk_02;
} Unk_ov98_02249D2C[] = {
    {0x121, '0'},
    {0x122, '1'},
    {0x123, '2'},
    {0x124, '3'},
    {0x125, '4'},
    {0x126, '5'},
    {0x127, '6'},
    {0x128, '7'},
    {0x129, '8'},
    {0x12a, '9'},
};

asm void ov98_022499C8 (Strbuf * param0, char * param1, int param2)
{
   push {r3, r4, r5, r6, r7, lr}
   sub sp, #8
   add r7, r2, #0
   mov r4, #0
   add r5, r1, #0
   ldr r2, = Unk_ov98_02249D1C
   str r0, [sp]
   add r1, r4, #0
   add r0, r2, #0
   add r3, r4, #0
 _022499DC:
   add r6, r1, #0
   ldrsb r6, [r0, r6]
   add r2, r2, #1
   add r1, r1, #1
   strb r6, [r5, r4]
   ldrsb r6, [r2, r3]
   add r4, r4, #1
   cmp r6, #0
   bne _022499DC
   add r0, r7, #0
   mov r1, #0xc8
   bl Heap_AllocFromHeap
   str r0, [sp, #4]
   ldr r0, [sp]
   ldr r1, [sp, #4]
   mov r2, #0x64
   bl PLString_Dump
   ldr r7, [sp, #4]
   mov r6, #0
 _02249A06:
   ldrh r1, [r7]
   ldr r0, = 0xFFFF
   cmp r1, r0
   bne _02249A14
   mov r2, #0
   strb r2, [r5, r4]
   b _02249A4A
 _02249A14:
   ldr r2, [sp, #4]
   lsl r3, r6, #1
   ldrh r3, [r2, r3]
   ldr r1, = Unk_ov98_02249D2C
   mov r0, #0
 _02249A1E:
   ldrh r2, [r1]
   cmp r2, r3
   bne _02249A32
   ldr r1, = Unk_ov98_02249D2C
   lsl r2, r0, #2
   add r2, r1, r2
   mov r1, #2
   ldrsb r1, [r2, r1]
   strb r1, [r5, r4]
   b _02249A3A
 _02249A32:
   add r0, r0, #1
   add r1, r1, #4
   cmp r0, #0xa
   blo _02249A1E
 _02249A3A:
   cmp r0, #0xa
   blo _02249A42
   bl ErrorHandling_AssertFail
 _02249A42:
   add r4, r4, #1
   add r7, r7, #2
   add r6, r6, #1
   b _02249A06
 _02249A4A:
   ldr r1, = Unk_ov98_02249D20
   add r3, r2, #0
   add r0, r1, #0
 _02249A50:
   add r6, r2, #0
   ldrsb r6, [r0, r6]
   add r1, r1, #1
   add r2, r2, #1
   strb r6, [r5, r4]
   ldrsb r6, [r1, r3]
   add r4, r4, #1
   cmp r6, #0
   bne _02249A50
   mov r0, #0
   strb r0, [r5, r4]
   ldr r0, [sp, #4]
   bl Heap_FreeToHeap
   add sp, #8
   pop {r3, r4, r5, r6, r7, pc}
}

asm void ov98_02249A80 (void)
{
   push {r4, r5, r6, lr}
   add r6, r0, #0
   add r0, r1, #0
   mov r1, #0xc8
   mov r5, #1
   bl Heap_AllocFromHeap
   add r4, r0, #0
   add r0, r6, #0
   add r1, r4, #0
   mov r2, #0x64
   bl PLString_Dump
   ldrh r1, [r4]
   ldr r0, = 0xFFFF
   cmp r1, r0
   beq _02249AB8
   ldr r1, = 0x121
   add r3, r4, #0
 _02249AA6:
   ldrh r2, [r3]
   cmp r2, r1
   beq _02249AB0
   mov r5, #0
   b _02249AB8
 _02249AB0:
   add r3, r3, #2
   ldrh r2, [r3]
   cmp r2, r0
   bne _02249AA6
 _02249AB8:
   add r0, r4, #0
   bl Heap_FreeToHeap
   add r0, r5, #0
   pop {r4, r5, r6, pc}
   nop
}

asm void ov98_02249ACC (void)
{
   push {r3, r4, r5, r6, r7, lr}
   sub sp, #8
   mov r4, #0
   add r5, r0, #0
   add r7, r1, #0
   str r4, [sp, #4]
 _02249AD8:
   mov r0, #0
   str r0, [r7, #0]
   str r0, [sp]
   b _02249B14
 _02249AE0:
   cmp r0, #0
   bne _02249AEC
   bne _02249AFA
   bl ErrorHandling_AssertFail
   b _02249AFA
 _02249AEC:
   add r4, r4, #1
 _02249AEE:
   ldrsb r0, [r5, r4]
   add r6, r5, r4
   cmp r0, #0x30
   blt _02249AE0
   cmp r0, #0x39
   bgt _02249AE0
 _02249AFA:
   ldr r1, [r7, #0]
   mov r0, #0xa
   mul r0, r1
   str r0, [r7, #0]
   mov r1, #0
   ldrsb r1, [r6, r1]
   add r4, r4, #1
   sub r1, #0x30
   add r0, r0, r1
   str r0, [r7, #0]
   ldr r0, [sp]
   add r0, r0, #1
   str r0, [sp]
 _02249B14:
   ldr r0, [sp]
   cmp r0, #4
   blt _02249AEE
   ldr r0, [sp, #4]
   add r7, r7, #4
   add r0, r0, #1
   str r0, [sp, #4]
   cmp r0, #4
   blt _02249AD8
   add sp, #8
   pop {r3, r4, r5, r6, r7, pc}
}
