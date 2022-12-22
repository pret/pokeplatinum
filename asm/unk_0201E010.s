	.include "macros/function.inc"

	

	.text


	thumb_func_start sub_0201E010
sub_0201E010: ; 0x0201E010
	ldrb r3, [r0]
	strb r3, [r1]
	ldrb r0, [r0, #1]
	strb r0, [r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201E010

	thumb_func_start sub_0201E01C
sub_0201E01C: ; 0x0201E01C
	ldrb r3, [r0, #2]
	strb r3, [r1]
	ldrb r0, [r0, #3]
	strb r0, [r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0201E01C

	thumb_func_start sub_0201E028
sub_0201E028: ; 0x0201E028
	push {r4, r5}
	ldr r5, _0201E0A0 ; =0xFFFFFFF8
	ldr r4, [sp, #0xc]
	add r5, sp
	ldrb r5, [r5, #0x18]
	cmp r5, #3
	bhi _0201E068
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0201E042: ; jump table
	.short _0201E04A - _0201E042 - 2 ; case 0
	.short _0201E052 - _0201E042 - 2 ; case 1
	.short _0201E05A - _0201E042 - 2 ; case 2
	.short _0201E062 - _0201E042 - 2 ; case 3
_0201E04A:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #4]
	b _0201E068
_0201E052:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #5]
	b _0201E068
_0201E05A:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #6]
	b _0201E068
_0201E062:
	lsl r4, r4, #3
	add r4, r0, r4
	ldrb r4, [r4, #7]
_0201E068:
	cmp r1, #0
	beq _0201E072
	lsl r5, r4, #3
	ldrb r5, [r0, r5]
	strb r5, [r1]
_0201E072:
	cmp r2, #0
	beq _0201E07E
	lsl r1, r4, #3
	add r1, r0, r1
	ldrb r1, [r1, #1]
	strb r1, [r2]
_0201E07E:
	cmp r3, #0
	beq _0201E08A
	lsl r1, r4, #3
	add r1, r0, r1
	ldrb r1, [r1, #2]
	strb r1, [r3]
_0201E08A:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _0201E098
	lsl r1, r4, #3
	add r0, r0, r1
	ldrb r0, [r0, #3]
	strb r0, [r2]
_0201E098:
	add r0, r4, #0
	pop {r4, r5}
	bx lr
	nop
_0201E0A0: .word 0xFFFFFFF8
	thumb_func_end sub_0201E028