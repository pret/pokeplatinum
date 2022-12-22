	.include "macros/function.inc"
	.include "include/unk_02020020.inc"

	

	.text


	thumb_func_start sub_02020020
sub_02020020: ; 0x02020020
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	ldrh r4, [r5, #0x3c]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _020200FC ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	asr r2, r4, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _020200FC ; =0x020F983C
	lsl r1, r1, #0x14
	ldrsh r2, [r2, r3]
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r5, #0x14]
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _020200FC ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	mov r3, #0
	add r0, r0, r2
	adc r1, r3
	ldrh r2, [r5, #0x3c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _020200FC ; =0x020F983C
	orr r0, r1
	ldrsh r2, [r2, r3]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r1, [r5, #0x1c]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _020200FC ; =0x020F983C
	ldr r2, [r5, #0x38]
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r5, #0
	str r1, [r5, #0x18]
	add r0, #0x14
	add r5, #0x20
	add r1, r5, #0
	add r2, r0, #0
	bl VEC_Add
	pop {r3, r4, r5, pc}
	nop
_020200FC: .word 0x020F983C
	thumb_func_end sub_02020020

	thumb_func_start sub_02020100
sub_02020100: ; 0x02020100
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	ldrh r4, [r5, #0x3c]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _020201E0 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	asr r2, r4, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _020201E0 ; =0x020F983C
	lsl r1, r1, #0x14
	ldrsh r2, [r2, r3]
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x20]
	ldrh r0, [r5, #0x3e]
	ldr r2, [r5, #0x38]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _020201E0 ; =0x020F983C
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	lsl r2, r2, #0xa
	mov r3, #0
	add r0, r0, r2
	adc r1, r3
	ldrh r2, [r5, #0x3c]
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r3, r2, #1
	ldr r2, _020201E0 ; =0x020F983C
	orr r0, r1
	ldrsh r2, [r2, r3]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x28]
	neg r0, r4
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _020201E0 ; =0x020F983C
	ldr r2, [r5, #0x38]
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r1, r0, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	neg r0, r1
	str r0, [r5, #0x24]
	add r0, r5, #0
	add r0, #0x20
	add r5, #0x14
	add r1, r5, #0
	add r2, r0, #0
	bl VEC_Add
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020201E0: .word 0x020F983C
	thumb_func_end sub_02020100

	thumb_func_start sub_020201E4
sub_020201E4: ; 0x020201E4
	add r2, r1, #0
	add r2, #0x46
	strh r0, [r2]
	asr r0, r0, #4
	lsl r3, r0, #1
	ldr r2, _02020228 ; =0x020F983C
	lsl r0, r3, #1
	ldrsh r0, [r2, r0]
	str r0, [r1, #0]
	add r0, r3, #1
	lsl r0, r0, #1
	ldrsh r0, [r2, r0]
	mov r2, #0
	str r0, [r1, #4]
	ldr r0, _0202022C ; =0x00001555
	str r0, [r1, #8]
	mov r0, #0x96
	lsl r0, r0, #0xc
	str r0, [r1, #0xc]
	mov r0, #0xe1
	lsl r0, r0, #0xe
	str r0, [r1, #0x10]
	mov r0, #1
	str r2, [r1, #0x2c]
	lsl r0, r0, #0xc
	str r0, [r1, #0x30]
	str r2, [r1, #0x34]
	str r2, [r1, #0x54]
	str r2, [r1, #0x58]
	str r2, [r1, #0x5c]
	str r2, [r1, #0x60]
	str r2, [r1, #0x64]
	bx lr
	nop
_02020228: .word 0x020F983C
_0202022C: .word 0x00001555
	thumb_func_end sub_020201E4

	thumb_func_start sub_02020230
sub_02020230: ; 0x02020230
	ldr r2, [r0, #0x58]
	cmp r2, #0
	bne _0202023A
	mov r2, #0
	str r2, [r1, #0]
_0202023A:
	ldr r2, [r0, #0x5c]
	cmp r2, #0
	bne _02020244
	mov r2, #0
	str r2, [r1, #4]
_02020244:
	ldr r0, [r0, #0x60]
	cmp r0, #0
	bne _0202024E
	mov r0, #0
	str r0, [r1, #8]
_0202024E:
	bx lr
	thumb_func_end sub_02020230

	thumb_func_start sub_02020250
sub_02020250: ; 0x02020250
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, [r5, #0x64]
	add r4, r1, #0
	add r6, r2, #0
	cmp r7, #0
	bne _02020268
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02020268:
	add r0, r7, #0
	str r0, [sp]
	add r0, #8
	str r0, [sp]
	ldr r0, [r7, #0x10]
	cmp r0, #0
	bne _02020292
	add r2, r4, #0
	ldmia r2!, {r0, r1}
	add r3, r6, #0
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	ldr r0, [r5, #0x64]
	ldr r2, [r7, #4]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	bne _020202A6
	mov r1, #1
	str r1, [r0, #0x10]
	b _020202A6
_02020292:
	ldr r2, [r7, #4]
	mov r1, #0xc
	ldr r0, [r7, #0x20]
	mul r1, r2
	add r2, r0, r1
	ldmia r2!, {r0, r1}
	add r3, r6, #0
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
_020202A6:
	ldr r1, [r5, #0x64]
	ldr r0, [r7, #4]
	ldr r1, [r1, #0]
	add r0, r0, #1
	bl _s32_div_f
	str r1, [r7, #4]
	ldr r1, [sp]
	ldr r0, [r5, #0x64]
	ldr r2, [r1, #0]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	mul r1, r2
	add r3, r4, #0
	add r2, r0, r1
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp]
	ldr r1, [r5, #0x64]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r0, r0, #1
	bl _s32_div_f
	ldr r0, [sp]
	str r1, [r0, #0]
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _020202EA
	ldr r0, [r4, #0]
	str r0, [r6, #0]
_020202EA:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x18]
	cmp r0, #0
	bne _020202F6
	ldr r0, [r4, #4]
	str r0, [r6, #4]
_020202F6:
	ldr r0, [r5, #0x64]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _02020302
	ldr r0, [r4, #8]
	str r0, [r6, #8]
_02020302:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02020250

	thumb_func_start sub_02020304
sub_02020304: ; 0x02020304
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	add r7, r1, #0
	str r0, [sp, #0x18]
	ldr r0, [r0, #0x54]
	add r6, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _0202038E
	add r0, r7, #1
	cmp r0, r5
	ble _02020322
	bl GF_AssertFail
_02020322:
	ldr r0, [sp]
	mov r1, #0x24
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0xc
	ldr r0, [sp]
	mul r1, r5
	bl sub_02018144
	mov r1, #0
	str r0, [r4, #0x20]
	cmp r5, #0
	ble _0202035A
	add r2, r1, #0
	add r0, r1, #0
_02020342:
	ldr r3, [r4, #0x20]
	add r1, r1, #1
	str r0, [r3, r2]
	ldr r3, [r4, #0x20]
	add r3, r3, r2
	str r0, [r3, #4]
	ldr r3, [r4, #0x20]
	add r3, r3, r2
	str r0, [r3, #8]
	add r2, #0xc
	cmp r1, r5
	blt _02020342
_0202035A:
	str r5, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	str r7, [r4, #8]
	str r7, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	mov r0, #1
	add r1, r6, #0
	tst r1, r0
	beq _02020376
	str r0, [r4, #0x14]
_02020376:
	mov r0, #2
	tst r0, r6
	beq _02020380
	mov r0, #1
	str r0, [r4, #0x18]
_02020380:
	mov r0, #4
	tst r0, r6
	beq _0202038A
	mov r0, #1
	str r0, [r4, #0x1c]
_0202038A:
	ldr r0, [sp, #0x18]
	str r4, [r0, #0x64]
_0202038E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02020304

	thumb_func_start sub_02020390
sub_02020390: ; 0x02020390
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _020203AA
	ldr r0, [r0, #0x20]
	bl sub_020181C4
	ldr r0, [r4, #0x64]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0x64]
_020203AA:
	pop {r4, pc}
	thumb_func_end sub_02020390

	thumb_func_start sub_020203AC
sub_020203AC: ; 0x020203AC
	ldr r3, _020203B4 ; =sub_02018144
	mov r1, #0x68
	bx r3
	nop
_020203B4: .word sub_02018144
	thumb_func_end sub_020203AC

	thumb_func_start sub_020203B8
sub_020203B8: ; 0x020203B8
	ldr r3, _020203BC ; =sub_020181C4
	bx r3
	; .align 2, 0
_020203BC: .word sub_020181C4
	thumb_func_end sub_020203B8

	thumb_func_start sub_020203C0
sub_020203C0: ; 0x020203C0
	push {r3, r4}
	add r4, r0, #0
	add r3, r1, #0
	mov r2, #0xd
_020203C8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _020203C8
	pop {r3, r4}
	bx lr
	thumb_func_end sub_020203C0

	thumb_func_start sub_020203D4
sub_020203D4: ; 0x020203D4
	ldr r1, _020203DC ; =0x021C0770
	str r0, [r1, #0]
	bx lr
	nop
_020203DC: .word 0x021C0770
	thumb_func_end sub_020203D4

	thumb_func_start sub_020203E0
sub_020203E0: ; 0x020203E0
	ldr r0, _020203E8 ; =0x021C0770
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020203E8: .word 0x021C0770
	thumb_func_end sub_020203E0

	thumb_func_start sub_020203EC
sub_020203EC: ; 0x020203EC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r0, _02020484 ; =0x021C0770
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0202047E
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _02020436
	add r1, #0x48
	add r2, sp, #0xc
	bl VEC_Subtract
	ldr r0, _02020484 ; =0x021C0770
	add r1, sp, #0xc
	ldr r0, [r0, #0]
	bl sub_02020230
	ldr r0, _02020484 ; =0x021C0770
	add r1, sp, #0xc
	ldr r0, [r0, #0]
	add r2, sp, #0
	bl sub_02020250
	ldr r1, _02020484 ; =0x021C0770
	add r0, sp, #0
	ldr r1, [r1, #0]
	bl sub_02020990
	ldr r0, _02020484 ; =0x021C0770
	ldr r3, [r0, #0]
	ldr r2, [r3, #0x54]
	add r3, #0x48
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
_02020436:
	ldr r0, _02020484 ; =0x021C0770
	ldr r5, _02020488 ; =0x021C5CCC
	ldr r4, [r0, #0]
	add r3, r4, #0
	add r2, r4, #0
	add r4, #0x14
	add r6, r4, #0
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r2, #0x2c
	str r0, [r5, #0]
	add r6, r2, #0
	ldr r5, _0202048C ; =0x021C5CD8
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r3, #0x20
	str r0, [r5, #0]
	add r6, r3, #0
	ldr r5, _02020490 ; =0x021C5CE4
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r2, #0
	add r2, r3, #0
	str r0, [r5, #0]
	ldr r3, _02020494 ; =0x021C5AD8
	add r0, r4, #0
	bl MTX_LookAt
	ldr r1, _02020498 ; =0x021C5B0C
	mov r0, #0xe8
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
_0202047E:
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_02020484: .word 0x021C0770
_02020488: .word 0x021C5CCC
_0202048C: .word 0x021C5CD8
_02020490: .word 0x021C5CE4
_02020494: .word 0x021C5AD8
_02020498: .word 0x021C5B0C
	thumb_func_end sub_020203EC

	thumb_func_start sub_0202049C
sub_0202049C: ; 0x0202049C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r0, _02020664 ; =0x021C0770
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _020204AA
	b _0202065E
_020204AA:
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _020204B2
	b _02020618
_020204B2:
	add r1, #0x48
	add r2, sp, #0x34
	bl VEC_Subtract
	ldr r0, _02020664 ; =0x021C0770
	add r1, sp, #0x34
	ldr r0, [r0, #0]
	bl sub_02020230
	ldr r0, _02020664 ; =0x021C0770
	add r1, sp, #0x34
	ldr r0, [r0, #0]
	add r2, sp, #0x28
	bl sub_02020250
	ldr r1, _02020664 ; =0x021C0770
	add r0, sp, #0x28
	ldr r1, [r1, #0]
	bl sub_02020990
	ldr r0, _02020664 ; =0x021C0770
	ldr r2, [r0, #0]
	ldr r4, [r2, #0x54]
	add r3, r2, #0
	ldmia r4!, {r0, r1}
	add r3, #0x48
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r4, r2, #0
	str r0, [r3, #0]
	add r4, #0x14
	ldmia r4!, {r0, r1}
	add r3, sp, #0x1c
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r4, r2, #0
	str r0, [r3, #0]
	add r4, #0x2c
	ldmia r4!, {r0, r1}
	add r3, sp, #0x10
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	ldrh r0, [r2, #0x3c]
	ldr r6, [r2, #0x54]
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _02020668 ; =0x020F983C
	ldrsh r1, [r0, r1]
	str r1, [sp]
	ldrh r1, [r2, #0x3e]
	asr r1, r1, #4
	lsl r4, r1, #1
	add r1, r2, #0
	add r1, #0x40
	ldrh r1, [r1]
	ldr r2, [r2, #0x38]
	asr r1, r1, #4
	lsl r5, r1, #1
	add r1, r4, #1
	lsl r1, r1, #1
	ldrsh r0, [r0, r1]
	asr r3, r2, #0x1f
	asr r7, r0, #0x1f
	add r1, r7, #0
	str r0, [sp, #4]
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	str r0, [sp, #0x24]
	ldr r2, [sp]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	mov r3, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r0, #0xc
	orr r2, r1
	str r2, [sp, #0x24]
	ldr r0, [r6, #8]
	lsl r1, r5, #1
	add r0, r2, r0
	str r0, [sp, #0x24]
	ldr r0, _02020668 ; =0x020F983C
	ldr r2, [sp, #4]
	ldrsh r0, [r0, r1]
	add r3, r7, #0
	str r0, [sp, #8]
	asr r0, r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl _ull_mul
	add r2, r0, #0
	mov r0, #2
	add r3, r1, #0
	mov r7, #0
	lsl r0, r0, #0xa
	add r0, r2, r0
	adc r3, r7
	lsl r2, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r2
	ldr r1, [sp, #0x10]
	ldr r2, _02020668 ; =0x020F983C
	add r0, r1, r0
	add r1, r5, #1
	lsl r1, r1, #1
	str r0, [sp, #0x10]
	ldrsh r1, [r2, r1]
	ldr r0, [sp, #0x14]
	lsl r3, r4, #1
	add r0, r0, r1
	ldrsh r2, [r2, r3]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r3, #2
	add r4, r7, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	ldr r2, [sp, #0x18]
	orr r1, r0
	sub r0, r2, r1
	add r3, sp, #0x1c
	str r0, [sp, #0x18]
	ldr r2, _0202066C ; =0x021C5CCC
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, sp, #0x10
	str r0, [r2, #0]
	ldr r2, _02020670 ; =0x021C5CD8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, r6, #0
	str r0, [r2, #0]
	ldr r2, _02020674 ; =0x021C5CE4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _02020678 ; =0x021C5AD8
	str r0, [r2, #0]
	add r0, sp, #0x1c
	add r1, sp, #0x10
	add r2, r6, #0
	bl MTX_LookAt
	ldr r1, _0202067C ; =0x021C5B0C
	mov r0, #0xe8
	ldr r2, [r1, #0x7c]
	add sp, #0x40
	bic r2, r0
	str r2, [r1, #0x7c]
	pop {r3, r4, r5, r6, r7, pc}
_02020618:
	add r2, r1, #0
	add r2, #0x14
	add r6, r2, #0
	add r4, r1, #0
	add r3, r1, #0
	ldr r5, _0202066C ; =0x021C5CCC
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r3, #0x2c
	str r0, [r5, #0]
	add r6, r3, #0
	ldr r5, _02020670 ; =0x021C5CD8
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r4, #0x20
	str r0, [r5, #0]
	add r6, r4, #0
	ldr r5, _02020674 ; =0x021C5CE4
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	add r0, r2, #0
	ldr r3, _02020678 ; =0x021C5AD8
	add r2, r4, #0
	bl MTX_LookAt
	ldr r1, _0202067C ; =0x021C5B0C
	mov r0, #0xe8
	ldr r2, [r1, #0x7c]
	bic r2, r0
	str r2, [r1, #0x7c]
_0202065E:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02020664: .word 0x021C0770
_02020668: .word 0x020F983C
_0202066C: .word 0x021C5CCC
_02020670: .word 0x021C5CD8
_02020674: .word 0x021C5CE4
_02020678: .word 0x021C5AD8
_0202067C: .word 0x021C5B0C
	thumb_func_end sub_0202049C

	thumb_func_start sub_02020680
sub_02020680: ; 0x02020680
	add r3, r0, #0
	add r2, r1, #0
	ldmia r3!, {r0, r1}
	add r2, #0x2c
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02020680

	thumb_func_start sub_02020690
sub_02020690: ; 0x02020690
	push {r3, r4}
	add r3, r1, #0
	add r4, r0, #0
	str r4, [r3, #0x54]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	mov r0, #1
	str r0, [r3, #0x58]
	str r0, [r3, #0x5c]
	str r0, [r3, #0x60]
	pop {r3, r4}
	bx lr
	thumb_func_end sub_02020690

	thumb_func_start sub_020206B0
sub_020206B0: ; 0x020206B0
	mov r1, #0
	str r1, [r0, #0x54]
	str r1, [r0, #0x58]
	str r1, [r0, #0x5c]
	str r1, [r0, #0x60]
	bx lr
	thumb_func_end sub_020206B0

	thumb_func_start sub_020206BC
sub_020206BC: ; 0x020206BC
	str r0, [r2, #0xc]
	add r0, r2, #0
	str r1, [r2, #0x10]
	add r0, #0x44
	ldr r3, _020206CC ; =sub_02020854
	ldrb r0, [r0]
	add r1, r2, #0
	bx r3
	; .align 2, 0
_020206CC: .word sub_02020854
	thumb_func_end sub_020206BC

	thumb_func_start sub_020206D0
sub_020206D0: ; 0x020206D0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x20]
	add r6, r0, #0
	add r7, r1, #0
	add r0, r3, #0
	add r1, r4, #0
	add r5, r2, #0
	bl sub_020201E4
	add r3, r6, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	str r7, [r4, #0x38]
	ldrh r0, [r5]
	strh r0, [r4, #0x3c]
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x3e]
	add r0, r4, #0
	ldrh r1, [r5, #4]
	add r0, #0x40
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #6]
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	bl sub_02020020
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	bl sub_02020854
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02020736
	str r6, [r4, #0x54]
	add r2, r4, #0
	ldmia r6!, {r0, r1}
	add r2, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r2, #0]
	mov r0, #1
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
_02020736:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020206D0

	thumb_func_start sub_02020738
sub_02020738: ; 0x02020738
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x1c]
	add r6, r0, #0
	add r7, r1, #0
	add r0, r3, #0
	add r1, r4, #0
	add r5, r2, #0
	bl sub_020201E4
	add r2, r4, #0
	ldmia r6!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r2, #0]
	str r7, [r4, #0x38]
	ldrh r0, [r5]
	strh r0, [r4, #0x3c]
	ldrh r0, [r5, #2]
	strh r0, [r4, #0x3e]
	add r0, r4, #0
	ldrh r1, [r5, #4]
	add r0, #0x40
	strh r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #6]
	add r0, #0x42
	strh r1, [r0]
	add r0, r4, #0
	bl sub_02020100
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	add r1, r4, #0
	bl sub_02020854
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02020738

	thumb_func_start sub_02020784
sub_02020784: ; 0x02020784
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r4, [sp, #0x54]
	add r5, r0, #0
	add r6, r1, #0
	add r0, r2, #0
	add r1, r4, #0
	add r7, r3, #0
	bl sub_020201E4
	add r3, r5, #0
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r3, r6, #0
	str r0, [r2, #0]
	add r2, r4, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r5, #0
	str r0, [r2, #0]
	add r0, r6, #0
	add r2, sp, #0x30
	bl VEC_Subtract
	add r0, sp, #0x30
	bl VEC_Mag
	str r0, [r4, #0x38]
	mov r6, #0
	add r0, sp, #0x24
	str r6, [r0, #0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	add r0, sp, #0x18
	str r6, [r0, #0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	add r0, sp, #0xc
	str r6, [r0, #0]
	str r6, [r0, #4]
	str r6, [r0, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	add r3, sp, #0x30
	str r0, [sp, #8]
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r6, [sp]
	str r0, [r2, #0]
	str r6, [sp, #4]
	str r6, [sp, #0x10]
	add r0, sp, #0
	add r1, sp, #0xc
	bl sub_0201E1A0
	strh r0, [r4, #0x3e]
	add r1, r6, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x38]
	str r1, [sp, #4]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	str r1, [sp, #8]
	str r0, [sp, #0x14]
	str r1, [sp, #0x10]
	add r0, sp, #0
	add r1, sp, #0xc
	bl sub_0201E1A0
	strh r0, [r4, #0x3c]
	add r0, r4, #0
	add r1, r6, #0
	add r0, #0x40
	strh r1, [r0]
	add r0, r7, #0
	add r1, r4, #0
	bl sub_02020854
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _0202084E
	str r5, [r4, #0x54]
	add r2, r4, #0
	ldmia r5!, {r0, r1}
	add r2, #0x48
	stmia r2!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r2, #0]
	mov r0, #1
	str r0, [r4, #0x58]
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
_0202084E:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_02020784

	thumb_func_start sub_02020854
sub_02020854: ; 0x02020854
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	cmp r0, #0
	bne _02020890
	ldr r0, [r5, #0x10]
	str r0, [sp]
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	ldr r0, _02020904 ; =0x021C5A94
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	bl MTX_PerspectiveW
	ldr r1, _02020908 ; =0x021C5B0C
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	add r5, #0x44
	bic r2, r0
	str r2, [r1, #0x7c]
	mov r1, #0
	ldr r0, _0202090C ; =0x02100844
	strb r1, [r5]
	str r1, [r0, #0]
	add sp, #0x10
	pop {r4, r5, r6, pc}
_02020890:
	ldr r4, [r5, #0x38]
	ldr r0, [r5, #0]
	ldr r1, [r5, #4]
	bl FX_Div
	asr r1, r0, #0x1f
	asr r3, r4, #0x1f
	add r2, r4, #0
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsr r4, r2, #0xc
	lsl r0, r1, #0x14
	orr r4, r0
	ldr r2, [r5, #8]
	asr r1, r4, #0x1f
	add r0, r4, #0
	asr r3, r2, #0x1f
	bl _ull_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r6, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r3, r6, #0xc
	orr r3, r0
	ldr r0, [r5, #0xc]
	neg r1, r4
	str r0, [sp]
	ldr r0, [r5, #0x10]
	str r0, [sp, #4]
	lsl r0, r2, #1
	str r0, [sp, #8]
	ldr r0, _02020904 ; =0x021C5A94
	neg r2, r3
	str r0, [sp, #0xc]
	add r0, r4, #0
	bl MTX_OrthoW
	ldr r1, _02020908 ; =0x021C5B0C
	mov r0, #0x50
	ldr r2, [r1, #0x7c]
	add r5, #0x44
	bic r2, r0
	str r2, [r1, #0x7c]
	mov r0, #1
	strb r0, [r5]
	ldr r0, _0202090C ; =0x02100844
	mov r1, #0
	str r1, [r0, #0]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02020904: .word 0x021C5A94
_02020908: .word 0x021C5B0C
_0202090C: .word 0x02100844
	thumb_func_end sub_02020854

	thumb_func_start sub_02020910
sub_02020910: ; 0x02020910
	add r2, r1, #0
	add r2, #0x46
	strh r0, [r2]
	add r0, r1, #0
	add r0, #0x46
	ldrh r0, [r0]
	ldr r3, _02020944 ; =sub_02020854
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _02020948 ; =0x020F983C
	ldrsh r2, [r0, r2]
	str r2, [r1, #0]
	add r2, r1, #0
	add r2, #0x46
	ldrh r2, [r2]
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r0, r2]
	str r0, [r1, #4]
	add r0, r1, #0
	add r0, #0x44
	ldrb r0, [r0]
	bx r3
	nop
_02020944: .word sub_02020854
_02020948: .word 0x020F983C
	thumb_func_end sub_02020910

	thumb_func_start sub_0202094C
sub_0202094C: ; 0x0202094C
	add r2, r1, #0
	add r2, #0x46
	ldrh r2, [r2]
	ldr r3, _02020988 ; =sub_02020854
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x46
	strh r2, [r0]
	add r0, r1, #0
	add r0, #0x46
	ldrh r0, [r0]
	asr r0, r0, #4
	lsl r2, r0, #2
	ldr r0, _0202098C ; =0x020F983C
	ldrsh r2, [r0, r2]
	str r2, [r1, #0]
	add r2, r1, #0
	add r2, #0x46
	ldrh r2, [r2]
	asr r2, r2, #4
	lsl r2, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r0, r2]
	str r0, [r1, #4]
	add r0, r1, #0
	add r0, #0x44
	ldrb r0, [r0]
	bx r3
	nop
_02020988: .word sub_02020854
_0202098C: .word 0x020F983C
	thumb_func_end sub_0202094C

	thumb_func_start sub_02020990
sub_02020990: ; 0x02020990
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	add r2, r0, #0
	bl VEC_Add
	add r4, #0x20
	add r0, r4, #0
	add r1, r5, #0
	add r2, r4, #0
	bl VEC_Add
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02020990

	thumb_func_start sub_020209B0
sub_020209B0: ; 0x020209B0
	ldrh r2, [r0]
	strh r2, [r1, #0x3c]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	ldrh r3, [r0, #4]
	add r2, #0x40
	strh r3, [r2]
	ldrh r2, [r0, #6]
	add r0, r1, #0
	add r0, #0x42
	strh r2, [r0]
	ldr r3, _020209D0 ; =sub_02020100
	add r0, r1, #0
	bx r3
	nop
_020209D0: .word sub_02020100
	thumb_func_end sub_020209B0

	thumb_func_start sub_020209D4
sub_020209D4: ; 0x020209D4
	ldrh r2, [r0]
	strh r2, [r1, #0x3c]
	ldrh r2, [r0, #2]
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	ldrh r3, [r0, #4]
	add r2, #0x40
	strh r3, [r2]
	ldrh r2, [r0, #6]
	add r0, r1, #0
	add r0, #0x42
	strh r2, [r0]
	ldr r3, _020209F4 ; =sub_02020020
	add r0, r1, #0
	bx r3
	nop
_020209F4: .word sub_02020020
	thumb_func_end sub_020209D4

	thumb_func_start sub_020209F8
sub_020209F8: ; 0x020209F8
	ldrh r3, [r1, #0x3c]
	ldrh r2, [r0]
	add r2, r3, r2
	strh r2, [r1, #0x3c]
	ldrh r3, [r1, #0x3e]
	ldrh r2, [r0, #2]
	add r2, r3, r2
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	add r2, #0x40
	ldrh r2, [r2]
	ldrh r0, [r0, #4]
	ldr r3, _02020A20 ; =sub_02020100
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x40
	strh r2, [r0]
	add r0, r1, #0
	bx r3
	nop
_02020A20: .word sub_02020100
	thumb_func_end sub_020209F8

	thumb_func_start sub_02020A24
sub_02020A24: ; 0x02020A24
	ldrh r3, [r1, #0x3c]
	ldrh r2, [r0]
	add r2, r3, r2
	strh r2, [r1, #0x3c]
	ldrh r3, [r1, #0x3e]
	ldrh r2, [r0, #2]
	add r2, r3, r2
	strh r2, [r1, #0x3e]
	add r2, r1, #0
	add r2, #0x40
	ldrh r2, [r2]
	ldrh r0, [r0, #4]
	ldr r3, _02020A4C ; =sub_02020020
	add r2, r2, r0
	add r0, r1, #0
	add r0, #0x40
	strh r2, [r0]
	add r0, r1, #0
	bx r3
	nop
_02020A4C: .word sub_02020020
	thumb_func_end sub_02020A24

	thumb_func_start sub_02020A50
sub_02020A50: ; 0x02020A50
	ldr r3, _02020A58 ; =sub_02020020
	str r0, [r1, #0x38]
	add r0, r1, #0
	bx r3
	; .align 2, 0
_02020A58: .word sub_02020020
	thumb_func_end sub_02020A50

	thumb_func_start sub_02020A5C
sub_02020A5C: ; 0x02020A5C
	push {r4, lr}
	add r3, r1, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	add r0, r3, #0
	bl sub_02020020
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02020A5C

	thumb_func_start sub_02020A78
sub_02020A78: ; 0x02020A78
	ldr r2, [r1, #0x38]
	ldr r3, _02020A84 ; =sub_02020020
	add r0, r2, r0
	str r0, [r1, #0x38]
	add r0, r1, #0
	bx r3
	; .align 2, 0
_02020A84: .word sub_02020020
	thumb_func_end sub_02020A78

	thumb_func_start sub_02020A88
sub_02020A88: ; 0x02020A88
	add r0, #0x46
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02020A88

	thumb_func_start sub_02020A90
sub_02020A90: ; 0x02020A90
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end sub_02020A90

	thumb_func_start sub_02020A94
sub_02020A94: ; 0x02020A94
	ldrh r2, [r1, #0x3c]
	strh r2, [r0]
	ldrh r2, [r1, #0x3e]
	strh r2, [r0, #2]
	add r2, r1, #0
	add r2, #0x40
	ldrh r2, [r2]
	add r1, #0x42
	strh r2, [r0, #4]
	ldrh r1, [r1]
	strh r1, [r0, #6]
	bx lr
	thumb_func_end sub_02020A94

	thumb_func_start sub_02020AAC
sub_02020AAC: ; 0x02020AAC
	add r2, r1, #0
	add r2, #0x20
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_02020AAC

	thumb_func_start sub_02020ABC
sub_02020ABC: ; 0x02020ABC
	add r2, r1, #0
	add r2, #0x14
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	bx lr
	thumb_func_end sub_02020ABC

	thumb_func_start sub_02020ACC
sub_02020ACC: ; 0x02020ACC
	add r3, r0, #0
	add r2, r1, #0
	ldmia r3!, {r0, r1}
	add r2, #0x20
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02020ACC

	thumb_func_start sub_02020ADC
sub_02020ADC: ; 0x02020ADC
	add r3, r0, #0
	add r2, r1, #0
	ldmia r3!, {r0, r1}
	add r2, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bx lr
	thumb_func_end sub_02020ADC

	.data


	.global Unk_02100844
Unk_02100844: ; 0x02100844
	.incbin "incbin/arm9_data.bin", 0x1B64, 0x4



	.bss


	.global Unk_021C0770
Unk_021C0770: ; 0x021C0770
	.space 0x4

