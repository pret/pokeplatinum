	.include "macros/function.inc"
	.include "include/unk_020BF03C.inc"

	

	.text


	arm_func_start sub_020BF03C
sub_020BF03C: ; 0x020BF03C
	ldr r1, _020BF06C ; =0x04000008
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0, #0]
	and r0, r0, #0x38000000
	mov r0, r0, lsr #0x1b
	and r1, r1, #0x1f00
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #8
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
	; .align 2, 0
_020BF06C: .word 0x04000008
	arm_func_end sub_020BF03C

	arm_func_start sub_020BF070
sub_020BF070: ; 0x020BF070
	ldr r0, _020BF08C ; =0x04001008
	ldrh r0, [r0]
	and r0, r0, #0x1f00
	mov r0, r0, asr #8
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
	; .align 2, 0
_020BF08C: .word 0x04001008
	arm_func_end sub_020BF070

	arm_func_start sub_020BF090
sub_020BF090: ; 0x020BF090
	ldr r1, _020BF0C0 ; =0x0400000A
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0, #0]
	and r0, r0, #0x38000000
	mov r0, r0, lsr #0x1b
	and r1, r1, #0x1f00
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #8
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
	; .align 2, 0
_020BF0C0: .word 0x0400000A
	arm_func_end sub_020BF090

	arm_func_start sub_020BF0C4
sub_020BF0C4: ; 0x020BF0C4
	ldr r0, _020BF0E0 ; =0x0400100A
	ldrh r0, [r0]
	and r0, r0, #0x1f00
	mov r0, r0, asr #8
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
	; .align 2, 0
_020BF0E0: .word 0x0400100A
	arm_func_end sub_020BF0C4

	arm_func_start sub_020BF0E4
sub_020BF0E4: ; 0x020BF0E4
	mov r0, #0x4000000
	ldr r1, [r0, #0]
	ldrh r3, [r0, #0xc]
	ldr r0, [r0, #0]
	and ip, r1, #7
	and r0, r0, #0x38000000
	mov r1, r0, lsr #0x1b
	and r0, r3, #0x1f00
	mov r2, r1, lsl #0x10
	cmp ip, #6
	mov r1, r0, lsr #8
	addls pc, pc, ip, lsl #2
	b _020BF160
_020BF118: ; jump table
	b _020BF134 ; case 0
	b _020BF134 ; case 1
	b _020BF134 ; case 2
	b _020BF134 ; case 3
	b _020BF134 ; case 4
	b _020BF140 ; case 5
	b _020BF158 ; case 6
_020BF134:
	add r0, r2, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_020BF140:
	tst r3, #0x80
	movne r0, r1, lsl #0xe
	addne r0, r0, #0x6000000
	addeq r0, r2, #0x6000000
	addeq r0, r0, r1, lsl #11
	bx lr
_020BF158:
	mov r0, #0x6000000
	bx lr
_020BF160:
	mov r0, #0
	bx lr
	arm_func_end sub_020BF0E4

	arm_func_start sub_020BF168
sub_020BF168: ; 0x020BF168
	ldr r1, _020BF1D8 ; =0x04001000
	ldr r0, [r1, #0]
	ldrh r1, [r1, #0xc]
	and r2, r0, #7
	cmp r2, #6
	and r0, r1, #0x1f00
	mov r0, r0, lsr #8
	addls pc, pc, r2, lsl #2
	b _020BF1D0
_020BF18C: ; jump table
	b _020BF1A8 ; case 0
	b _020BF1A8 ; case 1
	b _020BF1A8 ; case 2
	b _020BF1A8 ; case 3
	b _020BF1A8 ; case 4
	b _020BF1B4 ; case 5
	b _020BF1C8 ; case 6
_020BF1A8:
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_020BF1B4:
	tst r1, #0x80
	movne r0, r0, lsl #0xe
	moveq r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_020BF1C8:
	mov r0, #0
	bx lr
_020BF1D0:
	mov r0, #0
	bx lr
	; .align 2, 0
_020BF1D8: .word 0x04001000
	arm_func_end sub_020BF168

	arm_func_start sub_020BF1DC
sub_020BF1DC: ; 0x020BF1DC
	mov r0, #0x4000000
	ldr r1, [r0, #0]
	ldrh r3, [r0, #0xe]
	ldr r0, [r0, #0]
	and ip, r1, #7
	and r0, r0, #0x38000000
	mov r1, r0, lsr #0x1b
	and r0, r3, #0x1f00
	mov r2, r1, lsl #0x10
	cmp ip, #6
	mov r1, r0, lsr #8
	addls pc, pc, ip, lsl #2
	b _020BF258
_020BF210: ; jump table
	b _020BF22C ; case 0
	b _020BF22C ; case 1
	b _020BF22C ; case 2
	b _020BF238 ; case 3
	b _020BF238 ; case 4
	b _020BF238 ; case 5
	b _020BF250 ; case 6
_020BF22C:
	add r0, r2, #0x6000000
	add r0, r0, r1, lsl #11
	bx lr
_020BF238:
	tst r3, #0x80
	movne r0, r1, lsl #0xe
	addne r0, r0, #0x6000000
	addeq r0, r2, #0x6000000
	addeq r0, r0, r1, lsl #11
	bx lr
_020BF250:
	mov r0, #0
	bx lr
_020BF258:
	mov r0, #0
	bx lr
	arm_func_end sub_020BF1DC

	arm_func_start sub_020BF260
sub_020BF260: ; 0x020BF260
	ldr r1, _020BF2D0 ; =0x04001000
	ldr r0, [r1, #0]
	ldrh r1, [r1, #0xe]
	and r2, r0, #7
	cmp r2, #6
	and r0, r1, #0x1f00
	mov r0, r0, lsr #8
	addls pc, pc, r2, lsl #2
	b _020BF2C8
_020BF284: ; jump table
	b _020BF2A0 ; case 0
	b _020BF2A0 ; case 1
	b _020BF2A0 ; case 2
	b _020BF2AC ; case 3
	b _020BF2AC ; case 4
	b _020BF2AC ; case 5
	b _020BF2C0 ; case 6
_020BF2A0:
	mov r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_020BF2AC:
	tst r1, #0x80
	movne r0, r0, lsl #0xe
	moveq r0, r0, lsl #0xb
	add r0, r0, #0x6200000
	bx lr
_020BF2C0:
	mov r0, #0
	bx lr
_020BF2C8:
	mov r0, #0
	bx lr
	; .align 2, 0
_020BF2D0: .word 0x04001000
	arm_func_end sub_020BF260

	arm_func_start sub_020BF2D4
sub_020BF2D4: ; 0x020BF2D4
	ldr r1, _020BF304 ; =0x04000008
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0, #0]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	and r1, r1, #0x3c
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #2
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #14
	bx lr
	; .align 2, 0
_020BF304: .word 0x04000008
	arm_func_end sub_020BF2D4

	arm_func_start sub_020BF308
sub_020BF308: ; 0x020BF308
	ldr r0, _020BF324 ; =0x04001008
	ldrh r0, [r0]
	and r0, r0, #0x3c
	mov r0, r0, asr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
	; .align 2, 0
_020BF324: .word 0x04001008
	arm_func_end sub_020BF308

	arm_func_start sub_020BF328
sub_020BF328: ; 0x020BF328
	ldr r1, _020BF358 ; =0x0400000A
	mov r0, #0x4000000
	ldrh r1, [r1]
	ldr r0, [r0, #0]
	and r0, r0, #0x7000000
	mov r0, r0, lsr #0x18
	and r1, r1, #0x3c
	mov r0, r0, lsl #0x10
	mov r1, r1, asr #2
	add r0, r0, #0x6000000
	add r0, r0, r1, lsl #14
	bx lr
	; .align 2, 0
_020BF358: .word 0x0400000A
	arm_func_end sub_020BF328

	arm_func_start sub_020BF35C
sub_020BF35C: ; 0x020BF35C
	ldr r0, _020BF378 ; =0x0400100A
	ldrh r0, [r0]
	and r0, r0, #0x3c
	mov r0, r0, asr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
	; .align 2, 0
_020BF378: .word 0x0400100A
	arm_func_end sub_020BF35C

	arm_func_start sub_020BF37C
sub_020BF37C: ; 0x020BF37C
	mov r1, #0x4000000
	ldr r0, [r1, #0]
	ldrh r2, [r1, #0xc]
	and r0, r0, #7
	cmp r0, #5
	blt _020BF39C
	tst r2, #0x80
	bne _020BF3C4
_020BF39C:
	mov r0, #0x4000000
	ldr r1, [r0, #0]
	and r0, r2, #0x3c
	and r1, r1, #0x7000000
	mov r1, r1, lsr #0x18
	mov r1, r1, lsl #0x10
	add r1, r1, #0x6000000
	mov r0, r0, lsr #2
	add r0, r1, r0, lsl #14
	bx lr
_020BF3C4:
	mov r0, #0
	bx lr
	arm_func_end sub_020BF37C

	arm_func_start sub_020BF3CC
sub_020BF3CC: ; 0x020BF3CC
	ldr r1, _020BF408 ; =0x04001000
	ldr r0, [r1, #0]
	ldrh r1, [r1, #0xc]
	and r0, r0, #7
	cmp r0, #5
	blt _020BF3EC
	tst r1, #0x80
	bne _020BF400
_020BF3EC:
	and r0, r1, #0x3c
	mov r0, r0, lsr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
_020BF400:
	mov r0, #0
	bx lr
	; .align 2, 0
_020BF408: .word 0x04001000
	arm_func_end sub_020BF3CC

	arm_func_start sub_020BF40C
sub_020BF40C: ; 0x020BF40C
	mov r1, #0x4000000
	ldr r0, [r1, #0]
	ldrh r2, [r1, #0xe]
	and r0, r0, #7
	cmp r0, #3
	blt _020BF434
	cmp r0, #6
	bge _020BF45C
	tst r2, #0x80
	bne _020BF45C
_020BF434:
	mov r0, #0x4000000
	ldr r1, [r0, #0]
	and r0, r2, #0x3c
	and r1, r1, #0x7000000
	mov r1, r1, lsr #0x18
	mov r1, r1, lsl #0x10
	add r1, r1, #0x6000000
	mov r0, r0, lsr #2
	add r0, r1, r0, lsl #14
	bx lr
_020BF45C:
	mov r0, #0
	bx lr
	arm_func_end sub_020BF40C

	arm_func_start sub_020BF464
sub_020BF464: ; 0x020BF464
	ldr r1, _020BF4A8 ; =0x04001000
	ldr r0, [r1, #0]
	ldrh r1, [r1, #0xe]
	and r0, r0, #7
	cmp r0, #3
	blt _020BF48C
	cmp r0, #6
	bge _020BF4A0
	tst r1, #0x80
	bne _020BF4A0
_020BF48C:
	and r0, r1, #0x3c
	mov r0, r0, lsr #2
	mov r0, r0, lsl #0xe
	add r0, r0, #0x6200000
	bx lr
_020BF4A0:
	mov r0, #0
	bx lr
	; .align 2, 0
_020BF4A8: .word 0x04001000
	arm_func_end sub_020BF464